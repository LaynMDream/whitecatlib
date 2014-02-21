/*
	OMSNameMgr.h
	Interface to Open Music System's Name Manager
	Doug Wyatt
	(c) 1993-1995 Opcode Systems, Inc. All Rights Reserved
*/
#ifndef __OMSNameMgr__
#define __OMSNameMgr__
#pragma once


#include "OMS.h"

/* assumes Files.h and Events.h */

/* error numbers */
enum {
	omsnErrUnknownDevice = 400,
	omsnErrInvalidChannel = 401,
	omsnErrInvalidPatchNum = 402,
	omsnErrInvalidNoteOrCtlNum = 403,
	omsnErrDupClient = 404,
	omsnErrUnknownClient = 405,
	omsnErrUnknownProvider = 406,
	omsnErrNoNamesInDocForDevice = 407,
	omsnErrDeviceHasNoNames = 408,
	omsnErrNameDocVersionInvalid = 409,
	omsnErrNoMIDIMsgMatch = 410,
	omsnErrProviderFileWrongVersion = 411,
	omsnErrProgChgSelectsBank = 412
};

/* types of menus */
enum {
	kOMSNPatchNameMenu,
	kOMSNNoteNameMenu,
	kOMSNControlNameMenu
};

/* menu flags */
enum {
	kOMSNFrameMenu = 1,
	kOMSNBold = 2,
	kOMSNNoDrawPopupBox = 4		/* formerly kOMSNNoDrawWhenClicked = 4 */
};

/* menu types for OMSClickMenu */
enum {
	kOMSNEitherMenuType,
	kOMSNPopupMenu,
	kOMSNModalBrowser
};

/* for use in specifying patch numbers (not enums because VC can't handle 32 bit enums) */
#define kOMSNPatchByMIDIMsg		0xFF000000
#define kOMSNPatchAlphabetical	0xFE000000
#define	kOMSNPatchByGMEquiv		0xFD000000
#define kOMSNPatchByPatchID		0xFB000000


/* bits in OMSNPatch.flags */
enum {
	kOMSNHasNoteNames = 1,
	kOMSNHasCtlNames = 2
};

#if OMS_MACINTOSH
	/* submenu IDs reserved by the NameMgr when the app supports modeless name windows */
	#define kOMSNBaseSubmenuID	230
	#define IsOMSNameMgrSubmenuID(menuID) ((menuID) >= 230 && (menuID) <= 235)
#endif

typedef struct {
	short	blackBox;
} *OMSNameDoc;		/* "black box" */

typedef struct {
	short	blackBox;
} *OMSNameMenu;		/* "black box" */

typedef unsigned long OMSPatchSpec;		/* specifies a patch */

#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=mac68k
#endif
typedef struct OMSNProgChg {
	unsigned char	bankSelectPC;
	unsigned char	bankSelect0;
	unsigned char	bankSelect32;
	unsigned char	programChange;
} OMSNProgChg;

typedef struct OMSNPatch {
	short			patchNum;			/* patch's temporary index in mode */
	short			patchID;			/* patch's permanent identifier */
	unsigned char	patchName[64];		/* pascal string */
	unsigned char	patchNumStr[16];	/* pascal string */
	short			midiMsgLen;
	unsigned char	midiMsg[64];
	/*
		if midiMsg[0] is 0xFF
			midiMsg[1] is MSB of bank select (ctl 0) or 0xFF if unused
			midiMsg[2] is LSB of bank select (ctl 32) or 0xFF if unused
			midiMsg[3] is MIDI program change
		else 
			repeat {
				MIDI message (2 or 3 bytes; no system messages allowed)
				Byte delayInTicks
			} until delayInTicks is 0xFF
	*/
	short			generalMIDIEquivalent;		/* -1 if none */
	unsigned char	flags;						/* kOMSNHasNoteNames ... */
	unsigned char	reserved[5];
} OMSNPatch;

TYPEDEF_OMSPROC(void, OMSNModalProc)(OMSEventRecord *evt);
TYPEDEF_OMSPROC(void, OMSNameMenuChangeProc)(OMSNameMenu menu, long refCon, 
							short newChoice);


/* --- OMSNEvents --- */

#define kOMSNEvtBringsTargetToFront	(-32768)		/* VC++ hates 0x8000 */

/* OMSNEvent msgTypes */
enum {
	kOMSNEvtDevNameChg = 1,
	kOMSNEvtCurPatchChg,
	kOMSNEvtMiddleCChg,
	kOMSNEvtSendDocument = kOMSNEvtBringsTargetToFront,
	kOMSNEvtFindPatch,
	kOMSNEvtEditPatch,
	kOMSNEvtOpenPatchDoc
};



typedef struct OMSNDevNameChgMsg {
	OMSNameDoc	nameDoc;
	OMSUniqueID	devUniqueID;
} OMSNDevNameChgMsg;

typedef struct OMSNSendDocMsg {
	OMSFile		file;
	OMSUniqueID	devUniqueID;
} OMSNSendDocMsg;

typedef struct OMSNFindPatchMsg {
	OMSFile		file;
	OMSUniqueID	devUniqueID;
} OMSNFindPatchMsg;

typedef struct OMSNEditPatchMsg {
	OMSFile		file;
	OMSUniqueID	devUniqueID;
	short		patchID;
} OMSNEditPatchMsg;

typedef struct {
	OMSFile		file;
} OMSNOpenDocMsg;

typedef struct OMSNEvent {
	OMSSignature			targetClient;
	struct OMSNEvent 		*next;	/* for internal use */
	short					msgType;
	long					reserved;
	union {
		OMSNDevNameChgMsg	nameChg;
		OMSNSendDocMsg		sendDoc;
		OMSNFindPatchMsg	findPatch;
		OMSNEditPatchMsg	editPatch;
		OMSNOpenDocMsg		openDoc;
	} u;
} OMSNEvent;

/*
	OMSNNameList
*/
typedef struct OMSNNameList {
	short			version;		// current is 1 (7/25/94)
	short			numNames;
	unsigned char	varlen[2];
	/*
		For patches -- contains all the patch and note names for one mode of
			one device
		
			variable length:
			for each of numNames {
				short patchID				native endian
				short genMIDIEquiv			native endian
				byte stream midiMsg
					if midiMsg[0] is 0xFF
						midiMsg[1] is MSB of bank select (ctl 0) or 0xFF if unused
						midiMsg[2] is LSB of bank select (ctl 32) or 0xFF if unused
						midiMsg[3] is MIDI program change
					else 
						repeat {
							MIDI message (2 or 3 bytes; no system messages allowed)
							Byte delayInTicks
						} until delayInTicks is 0xFF
				pascal string patchName
				pascal string patchNumStr
			}
		For notes, controls
			numNames (128) pascal strings
		For classifications
			numNames pascal strings
	*/
} OMSNNameList, ** OMSNNameListH;


#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=reset
#endif

#include "OMSNamUPPs.h"

#ifdef __cplusplus
extern "C" {
#endif
/* --- Basic --- */
OMSAPI(OMSErr)		OMSNSignIn(OMSSignature clientID);
OMSAPI(void)		OMSNSignOut(OMSSignature clientID);
OMSAPI(void)		OMSNResume(OMSSignature clientID);
OMSAPI(void)		OMSNSuspend(OMSSignature clientID);

/* --- Name Document --- */
OMSAPI(OMSNameDoc)	OMSNNewNameDoc(OMSSignature clientID);
OMSAPI(void)		OMSNDisposeNameDoc(OMSNameDoc nameDoc);
OMSAPI(char**)		OMSNameDocToMem(OMSNameDoc nameDoc);
OMSAPI(OMSNameDoc)	OMSNMemToNameDoc(OMSSignature clientID, char *mem, long memSize);
OMSAPI(OMSNameDoc)	OMSNMemToNameDoc2(OMSSignature clientID, char *mem, long memSize,
						OMSStringPtr documentName);
OMSAPI(void)		OMSNSetNameDocRefCon(OMSNameDoc nameDoc, long refCon);
OMSAPI(long)		OMSNGetNameDocRefCon(OMSNameDoc nameDoc);
OMSAPI(OMSBool)		OMSNameDocDirty(OMSNameDoc nameDoc);
OMSAPI(void)		OMSNClearNameDocDirty(OMSNameDoc nameDoc);

/* --- Sending Patch Events --- */
OMSAPI(void)		OMSNSendPatchEvent(Byte *midiMsg, char channel, 
						short destOMSIORefNum, short omsOutputPort);

/* --- Name Providing --- */
OMSAPI(OMSErr)		OMSNProvideDevice(OMSUniqueID devUniqueID, 
						OMSSignature providerSignature, OMSFile *patchDoc, 
						OMSUniqueID aProvDevUniqueID);
OMSAPI(OMSErr)		OMSNProviderDocSaved(OMSSignature providerSignature, OMSFile *patchDoc);
OMSAPI(OMSErr)		OMSNGetProviderInfo(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						OMSSignature *providerSignature, OMSFile *patchDoc);

/* --- Getting Name Info --- */
OMSAPI(short)		OMSNCountPatches(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel);
OMSAPI(OMSErr)		OMSNGetPatchInfo(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel, OMSPatchSpec patchNum, OMSNPatch *patch);
OMSAPI(OMSErr)		OMSNMIDIToPatch(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel, OMSNProgChg *prgChg, OMSNPatch *patch);
OMSAPI(OMSBool)		OMSNPatchValid(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel, OMSNPatch *patch);
OMSAPI(OMSErr)		OMSNGetNoteName(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel, OMSPatchSpec patchNum, char noteNum, OMSStringPtr noteName);
OMSAPI(OMSErr)		OMSNGetControlName(OMSNameDoc nameDoc, OMSUniqueID devUniqueID, 
						char channel, OMSPatchSpec patchNum, char controlNum, 
						OMSStringPtr controlName);
OMSAPI(void)		OMSNMIDINoteNumber(char noteNum, OMSStringPtr noteNumStr);

OMSAPI(OMSErr)		OMSNGetCurPatch(OMSUniqueID devUniqueID, char channel, 
						OMSNProgChg *prgChg);
OMSAPI(void)		OMSNSetCurPatch(OMSUniqueID devUniqueID, char channel, 
						OMSNProgChg *prgChg);

OMSAPI(OMSErr)		OMSNGetPatchListInfo(OMSNameDoc nameDoc, OMSUniqueID devUniqueID,
						char channel, OMSBool *alphabetical, short *nPatches, 
						OMSNNameListH *groupNames, char **patchGroupBits,
						short** alphaIndex);
OMSAPI(OMSBool)		OMSNGetNoteAlphaOrder(void);
OMSAPI(OMSBool)		OMSNGetCtlAlphaOrder(void);

/* --- High-level events --- */
OMSAPI(OMSBool)		OMSNGetEvent(OMSSignature clientID, OMSNEvent *pevent, 
						short maxEventSize);
OMSAPI(OMSErr)		OMSNSendEvent(OMSNEvent *pevent);

/* --- Name Window --- */
OMSAPI(void)		OMSNOpenNameWindow(OMSNameDoc nameDoc, OMSStringPtr winName, 
						short OMSNWindowKind, short omsnMenuID, char modal,
						OMSNModalProcUPP proc, OMSFontSpec *font);

OMSAPI(OMSBool)		OMSNCloseNameWindow(OMSWindowPtr win);
OMSAPI(OMSWindowPtr) OMSNGetWindowForNameDoc(OMSNameDoc nameDoc, short OMSNWindowKind);

#if OMS_MACINTOSH
OMSAPI(OMSBool)		OMSNCheckNameWinEvt(OMSEventRecord *evt, short OMSNWindowKind);
OMSAPI(void)		OMSNDoMenu(long menuChoice);
#endif

/* --- Menus --- */
#if OMS_MACINTOSH
OMSAPI(OMSNameMenu) OMSNNewMenu(OMSWindowPtr theWindow, char menuType, char flags, 
                                OMSRect *location, OMSFontSpec *font);
OMSAPI(OMSBool)     OMSNTestMenu(OMSNameMenu menu, OMSPoint pt);
OMSAPI(long)        OMSNClickMenu(OMSNameMenu menu, OMSNModalProcUPP proc, 
                                  char menuType);
#elif OMS_WINDOWS
OMSAPI(OMSNameMenu) OMSNNewMenuWin(OMSWindowPtr theWindow, char menuType, char flags, 
                                   OMSRect *location, OMSFontSpec *font,
                                   short menuID);
OMSAPI(OMSBool)     OMSNTestMenuWin(OMSNameMenu menu, WPARAM wParam, LPARAM lParam);
OMSAPI(long)        OMSNClickMenuWin(OMSNameMenu menu, OMSNModalProcUPP proc, char menuType,
                                     WPARAM wParam, LPARAM lParam);
OMSAPI(void)		OMSNMenuChar(Byte c);                 
#endif
OMSAPI(void)		OMSNBindMenu(OMSNameMenu menu, OMSNameDoc nameDoc, 
						OMSUniqueID devID, char channel, short patchNum);
OMSAPI(void)		OMSNSetMenuLocation(OMSNameMenu menu, OMSRect *location);
OMSAPI(void)		OMSNDisposeMenu(OMSNameMenu menu);
OMSAPI(void)		OMSNDrawMenu(OMSNameMenu menu);
OMSAPI(void)		OMSNSetMenuSelection(OMSNameMenu menu, OMSPatchSpec itemNum, 
						OMSStringPtr itemName);
OMSAPI(void)		OMSNSetMenuForTyping(OMSNameMenu menu, 
						OMSNameMenuChangeProcUPP changeProc, long chgProcRefCon);
#ifdef __cplusplus
}
#endif

#endif /* __OMSNameMgr__ */
