/*
	OMS.h
	
	Application interface for Open Music System
	Doug Wyatt, Opcode Systems
	Copyright �1990-95 Opcode Systems, Inc., All Rights Reserved
*/
#ifndef __OMS__
#define __OMS__
#pragma once


#include "OMSConfig.h"			/* Define symbols controlling platform dependencies */

/*
	Constants
*/
#define OD_MAX_MANUF_LEN		23
#define OD_MAX_MODEL_LEN		23



/*
	Compatibility modes
*/
enum {
	omsModeAllowNonOMSApps,
	omsModeOMSAppsOnly,
	omsModeUseMIDIMgr
};


/*
	Port types
*/
enum {
	omsPortTypeInput = 1,		/* OMS 1.0 input port */
	omsPortTypeOutput = 2,		/* output port */
	omsPortTypeInput2 = 8		/* OMS 2.0 input port */
};


/*
	Messages to appHook
*/
enum {
	omsMsgModeChanged = 0,
	omsMsgTimerClaimed = 1,
	omsMsgPatchChanged = 2,
	omsMsgSourceDeleted = 3,
	omsMsgDestDeleted = 4,
	omsMsgNodesChanged = 5,
	omsMsgDifferentStudioSetup = 6,
	omsMsgConnectsChanged = 7,
	omsMsgOpenCurrentStudioSetup = 128
};


/*
	Node types, as passed to OMSGetNodeInfo, etc.
*/
enum {
	omsIncludeInputs = 1,
	omsIncludeOutputs = 2,
	omsIncludeReal = 4,
	omsIncludeVirtual = 8,
	omsIncludeSync = 16,
	omsIncludeSyncOnly = 32,
	omsMergeOutputsByPort = 64,
	omsIncludeSecret = 128
};


/*
	Error result codes
*/
enum {
	omsNoErr = 0,
	omsDupClientErr = 1,
	omsPatchPtNotFoundErr = 2,		/* old name */
	omsNodeNotFoundErr = 2,
	omsAppPortNotFoundErr = 3,
	omsDupPortErr = 4,
	omsCantEnQAsync = 5,
	omsCantLoadModule = 6,
	
#if OMS_WINDOWS
	omsLaunchedStudioSetup = 7,
	omsNoStudioSetup = 8,
#endif
	
	omsMemFullErr = -108,			/* happens to match the Mac memFullErr */
	omsFileNotFound = -43			/* fnfErr */
};

#define OMSInvalidRefNum		(-1)

/*
	Bits of packet flags
*/
#define omsContMask				0x03
#define omsNoCont				0x00
#define omsStartCont			0x01
#define omsMidCont				0x03
#define omsEndCont				0x02
#define omsPktBeatTStamped		0x80
#define omsPktSMPTETStamped		0x40


/*
	These aren't used in MIDI packets; used in OMSAppHookMsgs for compatibility.
*/
#define omsMIDITypeMask		0x70	/* instead of midiTypeMask */
#define omsAppHookMsg		0x10	/* instead of midiMgrType */

/*
	Bits in OMSDevice flags
*/

/* Bits of OMSDevice.flags1 */
enum {	kIsPatcher = 0x80, kIsController = 0x40, kIsReceiver = 0x20,
		kIsMultitimbral = 0x10, kOutConnected = 0x08, kInConnected = 0x04,
		kOutConnectedToTopLevel = 0x02, kInConnectedToTopLevel = 0x01 };
#define kOutConnectedToMac	kOutConnectedToTopLevel		/* historical */
#define kInConnectedToMac	kInConnectedToTopLevel


/* Bits of OMSDevice.flags2 */
enum {	kIsTopLevelDriverOwned = 0x80, kSendsSync = 0x20,
		kReceivesSync = 0x10, kOMSInvisible = 0x08, kNoChildDevices = 0x04,
		kPseudoVirtual = 0x02, kIntfCantRouteSync = 0x01 
		/* kIsSmartInterface = 0x40 obsolete */ 
};
#define kIsMIDIInterface	kIsTopLevelDriverOwned		/* historical */

/* Bits of OMSDevice.flags3 */
enum {	kSendsMTC = -32768, kReceivesMTC = 0x4000, kSendsClock = 0x2000,
		kReceivesClock = 0x1000, kReceivesMMC = 0x0800, kSendsMMC = 0x0400,
		kHighByteOfNOutputPortsContainsMinPortNum = 0x0200,
		/* 0x0100 reserved */
		kSecretSource = 0x0080, kSecretDestination = 0x0040, kIsTwoPortInput = 0x0020 };
		/* remaining bits reserved */

/* Bits of OMSNodeInfoRec.flags */
enum {
		/* only for inputs; attribute of ALL merged sources */
		kAnyIsController = -32768, kAnySendsSync = 0x4000, kAnySendsMTC = 0x2000,
		/* only for outputs; attribute of ALL merged outputs */
		kAnyReceivesSync = 0x1000, kAnyReceivesMTC = 0x0800, kAnyReceivesClock = 0x0400,
		
		kAnySendsClock = 0x0200,	/* only for inputs */
		kIsOutput = 0x0100,
		kAnySendsMMC = 0x0080, kAnyReceivesMMC = 0x0040,
		/* 0x0020 through 0x0002 reserved */
		kIsReal = 0x0001
};

/* constants for OMSFindFolder */
#define kOMSFolder				0x4F4D5320	/* 'OMS ' */
#define kOMSPrefFolder			0x70726566	/* 'pref' */
#define kOMSFactoryNamesFolder	0x464E414D	/* 'FNAM' */


/* icon types */
enum {
	kOMSSmallIcon = 16,		/* 16x16 */
	kOMSLargeIcon = 32		/* 32x32, 32x48, possibly wider */
};

#include "OMSTypes.h"






#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=mac68k
#endif

typedef struct OMSSerPortID {
	short			hwDrvNum;			/* ID of serial hardware driver */
	short			drvPortNum;			/* which port within that driver */
} OMSSerPortID;

/*
	OMSDevice -- information about a device in the system.
*/
typedef struct OMSDevice {
	unsigned long deviceRefNum;			/* only low word significant */
	struct OMSDevice **parentDevice;
	struct OMSDevice **siblingDevices;	/* linked list */
	struct OMSDevice **childDevices;
	unsigned char driverSpecific[4];		/*	for driver-owned devices: contains
												driver-defined configuration info
												1st word: defined by driver, changeable
													when Interfaces dialog used to 
													re-examine the world and update the 
													studio setup document
												2nd word: defined by user (preference), 
													not changed when Interfaces dialog 
													used to re-examine the world
											for patchers: contains patcher current 
												state info
												1st word: pgm number, 0xffff if none
												2nd word: id of patcher to receive this 
													patcher's pgm changes */
	short			whichOut;			/*	which output port of parent (0 if
											undefined or there is none) */
	OMSSignature	ownerDriver;		/*	whichOut distinguishes multiple dev's;
											null if not driver */
	OMSUniqueID		uniqueID;			/* Random number used to find devices when they're renamed;
											assigned on creation, when pasting into non-unique file */
	
	short			obsoleteGalaxyID;	/* id for manuf/model (0=unknown) */
	
	unsigned char	flags1;	
	unsigned char	parentPatcherPgm;	/* only valid when parent is patcher */
	unsigned char	patcherDfltProgram;	/* only valid when this is a patcher */
	unsigned char	flags2;
	unsigned short	flags3;
	
	short			deviceSize;
	
	OMSUniqueID		driverOwnedUniqueID;/* for use of driver in uniquely identifying devices
											it owns; only used when ownerDriver is not 0 */
	
	short			nOutputPorts;		/* for patchers or multi-port interfaces */
	short			midiDeviceID;		/* for sys-ex */
	short			midiChannels;		/* bits msb=ch1, lsb=ch 16 */
	short			iconID;
	OMSString		devName;			/* User's name for the thing */
	unsigned char	manuf[OD_MAX_MANUF_LEN + 1];
	unsigned char	model[OD_MAX_MODEL_LEN + 1];

	/* fields below this point are not guaranteed to exist */
	struct OMSDevice **pairedDevice;	/* null if not a two-port device */
	unsigned char	minDeviceID, maxDeviceID;
	unsigned char	reserved[2];
	char			manufModel8[8];		/* for use of Name Mgr on PCs */
	OMSSerPortID 	serPortID;
	short			locationIconID;
	OMSString		locationName;
} OMSDevice, ** OMSDeviceH;



typedef struct OMSNodeInfoRec {
	OMSString		name;
	unsigned short	flags;					/* see above */
	OMSUniqueID		uniqueID;				/* permanent ID */
	unsigned short	ioRefNum;
	OMSDeviceH		deviceH;				/*	only for real inputs and outputs
											if real input, this is only the first of
											multiple merged ones */
} OMSNodeInfoRec;


typedef struct OMSNodeInfoList {
	short			numNodes;
	OMSNodeInfoRec	info[1];			/* variable-length */
} OMSNodeInfoList, ** OMSNodeInfoListH;


/*
	OMSPortID - Method by which interfaces' MIDI ports are identified physically.
*/
typedef struct OMSPortID {
	OMSSignature	driverID;		/* ownerDriver from OMSDevice */
	short			whichInterface;	/* whichOut from OMSDevice */
	short			whichPort;		/* attached devices' whichOut */
} OMSPortID;


typedef struct OMSIDList {
	short		numIDs;
	OMSUniqueID	id[1];					/* variable-length */
} OMSIDList, ** OMSIDListH;


typedef struct OMSConnectionParams {
	OMSUniqueID	nodeUniqueID;
	short		appRefCon;
} OMSConnectionParams, * OMSConnectionParamsPtr;


/*
	OMSConnection, OMSConnectionList - structures returned by OMSGetConnections
*/
typedef struct OMSConnection {
	OMSUniqueID		sourceUniqueID;
	OMSSignature	destClientID;
	OMSSignature	destPortID;
	OMSBool			exclusive;
} OMSConnection;

typedef struct OMSConnectionList {
	short			numConnects;
	OMSConnection	connect[1];			/* variable-length */
} OMSConnectionList, ** OMSConnectionListH;


/*
	OMSPacket
	
	This is used internally in drivers and OMS.  It is a miniature MIDI
	Manager packet.  Applications may send full MIDI Manager packets, but OMS
	will "unwind" them into smaller.
*/
typedef struct OMSPacket {
	unsigned char	flags;
	unsigned char	len;				/* including 6 bytes before data */
	unsigned short	srcIORefNum;		/* refNum of source node */
	unsigned short	appConnRefCon;		/* app ref con for the connection */
	unsigned char	data[4];
} OMSPacket, * OMSPacketPtr;


/*
	OMS 2.0 MIDI packet (1.0 used MIDI Manager MIDIPacket's)
*/
typedef struct OMSMIDIPacket {
	long			beatTimeStamp;
	long			smpteTimeStamp;
	unsigned char	flags;				/* as above */
	unsigned char	len;				/* number of MIDI bytes ONLY */
	unsigned short	srcIORefNum;		/* refNum of source node */
	unsigned short	appConnRefCon;		/* app ref con for the connection */
	unsigned char	data[4];
} OMSMIDIPacket;

typedef struct OMSMIDIPacket255 {
	long			beatTimeStamp;
	long			smpteTimeStamp;
	unsigned char	flags;				/* as above */
	unsigned char	len;				/* number of MIDI bytes ONLY */
	unsigned short	srcIORefNum;		/* refNum of source node */
	unsigned short	appConnRefCon;		/* app ref con for the connection */
	unsigned char	data[255];
} OMSMIDIPacket255;


/*
	Packet sent to appHook (1.0 used MIDI Manager MIDIPacket's)
*/
typedef struct OMSAppHookMsg {
	unsigned char	reserved1;
	unsigned char	len;				/* size of packet including 6-byte header */
	long			reserved2;
	unsigned char	ff;
	unsigned char	msgType;
	union {
		struct {
			short	changedNodeBits;
		} nodesChanged;
		struct {
			short	newMode;
		} modeChanged;
		struct {
			OMSConnectionListH newConnects;
		} connectsChanged;
		struct {
			OMSFile *previousSS;
			OMSFile	*newSS;
		} diffStudioSetup;
		struct {
			OMSUniqueID		uniqueID;
			unsigned short	ioRefNum;
		} nodeDeleted;
	} u;
} OMSAppHookMsg;


struct OMSAsyncWriteReq;

TYPEDEF_OMSPROC(void, OMSAsyncCompletion)(struct OMSAsyncWriteReq *req);

TYPEDEF_OMSPROC(void, OMSAppHook)(OMSAppHookMsg *msg, long appHookRefCon);

TYPEDEF_OMSPROC(void, OMSReadHook)(OMSPacket *packet, long readHookRefCon);

TYPEDEF_OMSPROC(void, OMSReadHook2)(OMSMIDIPacket *packet, long readHookRefCon);

TYPEDEF_OMSPROC(OMSBool, OMSNodeFilterProc)(OMSNodeInfoRec *info);

#include "OMSUPPs.h"


typedef struct OMSAsyncWriteReq {
	/* fields set up by caller */
	long			beatTimeStamp;
	long			smpteTimeStamp;
	unsigned char	flags;					/* continuations not needed */
	char			*dataPtr;				/* advanced during progress */
	long			bytesToSend;			/* decremented during progress */
	unsigned short	destIORefNum;

	OMSAsyncCompletionUPP	completion;
	long			completionRefCon;
	
	/* managed internally */
	struct OMSAsyncWriteReq *nextTask;	/* in queue */
	OMSBool			ioComplete;				/* completion flag - may be set by caller
											to abort */
	unsigned char	spare[5];
} OMSAsyncWriteReq;

typedef struct OMSClient {
	OMSSignature	clientID;
	long			clientRefCon;		/* parameter to appHook */
	OMSString		clientName;
	OMSAppHookUPP	clientAppHook;
} OMSClient;

typedef struct OMSClientList {
	short			numClients;
	OMSClient		client[1];
} OMSClientList, ** OMSClientListH;

typedef struct OMSVirtualNodeID {
	OMSSignature	clientID;
	OMSSignature	nodeID;
	OMSUniqueID		uniqueID;
} OMSVirtualNodeID;

typedef struct OMSVirtualNodeIDList {
	short				numNodes;
	OMSVirtualNodeID	node[1];
} OMSVirtualNodeIDList, ** OMSVirtualNodeIDListH;


#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=reset
#endif


OMSAPI(OMSErr)	LinkToOMSGlue(void);

OMSAPI(long)	OMSVersion(void);

OMSAPI(OMSErr)	OMSSignIn(OMSSignature clientID, long refCon, OMSString name, 
						OMSAppHookUPP appHook, short *mode);
	
OMSAPI(void)	OMSSignOut(OMSSignature clientID);

OMSAPI(void)	OMSSignOutNoSuspend(OMSSignature clientID);

OMSAPI(OMSErr)	OMSAddPort(OMSSignature clientID, OMSSignature portID, short portType,
  						OMSReadHook2UPP readHook, long readHookRefCon, short *portRefNum);
  						/* or OMSReadHook */

OMSAPI(void)	OMSSuspend(OMSSignature clientID);

OMSAPI(void)	OMSResume(OMSSignature clientID);

OMSAPI(long)	OMSGetCallAddress(short callNum);

OMSAPI(void)	OMSFindFolder(OMSSignature folderID, OMSFile *folderLoc);

OMSAPI(void)	OMSMIDISetupDialog(void);

OMSAPI(void)	OMSClaimTimer(OMSSignature clientID);

OMSAPI(OMSDeviceH) OMSGetDeviceTree(void);

OMSAPI(OMSNodeInfoListH) OMSGetNodeInfo(short desiredNodeTypes);

OMSAPI(OMSNodeInfoListH) OMSGet1NodeInfo(OMSUniqueID uniqueID);

#if OMS_MACINTOSH
#define OMSNewHandle(size) NewHandleSysClear(size)

#define OMSDisposeHandle(h)	DisposeHandle((Handle)(h))

#define OMSGetHandleSize(h)	GetHandleSize((Handle)(h))

#define OMSSetHandleSize(h, size) (SetHandleSize((Handle)(h), (size)), MemError())

#define OMSSetHandleState(h, c)		HSetState((Handle)h, (c))

#else
OMSAPI(void *)	OMSNewHandle(long size);

OMSAPI(void)	OMSDisposeHandle(void *h);

OMSAPI(long)	OMSGetHandleSize(void *h);

OMSAPI(OMSErr)	OMSSetHandleSize(void *h, long size);

OMSAPI(void)	OMSSetHandleState(void *h, char c);
#endif

OMSAPI(char)	OMSLockHandle(void *h);

OMSAPI(short)	OMSUniqueIDToRefNum(OMSUniqueID uniqueID);

OMSAPI(void)	OMSDeviceToPortID(OMSDeviceH devh, OMSPortID *portID);

#if OMS_MACINTOSH
OMSAPI(void)	OMSGetDeviceIcon(OMSDeviceH device, char *sicn);
#endif

OMSAPI(OMSIcon)	OMSGetDeviceCIcon(OMSDeviceH device, char iconType, OMSPoint *iconSize);

OMSAPI(void)	OMSDrawCIcon(OMSDrawEnvPtr window, OMSRect *drawRect, OMSIcon icon, 
					char iconType, OMSBool hilighted, OMSBool printing);

OMSAPI(short)	OMSGetIndDevIconID(short index);

OMSAPI(void)	OMSGetCurSetupDoc(short *vRefNum, long *dirID, OMSStringPtr fileName);

OMSAPI(OMSErr)	OMSGetCurSetupDoc2(OMSFile *fsp);

OMSAPI(void)	OMSResaveStudioSetup(void);

OMSAPI(void)	OMSWritePacket(OMSPacket *packet, short ioRefNum, short portRefNum);

OMSAPI(void)	OMSWritePacket2(OMSMIDIPacket *packet, short ioRefNum, short portRefNum);

OMSAPI(void)	OMSWritePacket255(OMSMIDIPacket255 *packet, short ioRefNum, short portRefNum);

OMSAPI(OMSErr)	OMSWriteDataAsync(OMSAsyncWriteReq *req);

OMSAPI(void)	OMSAllNotesOff(void);

OMSAPI(OMSErr)	OMSOpenConnections(OMSSignature clientID, OMSSignature portID, 
					short nConnections, OMSConnectionParamsPtr connects, 
					OMSBool exclusive);
				
OMSAPI(void)	OMSCloseConnections(OMSSignature clientID, OMSSignature portID, 
					short nConnections, OMSConnectionParamsPtr connects);
				
OMSAPI(OMSIDListH) OMSChooseNodes(OMSIDListH prevSelections, 
					OMSStringPtr prompt, OMSBool allowMultiple, short desiredNodeTypes, 
					OMSNodeFilterProcUPP nodeFilterProc);

OMSAPI(OMSBool)	OMSSuppressIOErrors(OMSBool suppress);

OMSAPI(void)	OMSOpenCurrentStudioSetup(void);

OMSAPI(OMSBool)	OMSStartOrStopDrivers(OMSBool start);

OMSAPI(OMSErr)	OMSCreateVirtualDestination(OMSSignature clientID, OMSSignature nodeID, 
					OMSStringPtr nodeName, OMSUniqueID *uniqueID, short *ioRefNum,
					OMSReadHook2UPP readHook, long readHookRefCon, short appConnRefCon,
					short nRealDevices, OMSUniqueID *realDevices);

OMSAPI(OMSErr) 	OMSCreateVirtualSource(OMSSignature clientID, OMSSignature nodeID, 
					OMSStringPtr nodeName, OMSUniqueID *uniqueID, short *ioRefNum,
					short nRealDevices, OMSUniqueID *realDevices);

OMSAPI(void)	OMSDeleteVirtualNode(OMSSignature clientID, OMSSignature nodeID);

OMSAPI(OMSErr)	OMSSetNodeName(OMSUniqueID uniqueID, OMSStringPtr name);

OMSAPI(OMSUniqueID) OMSFindNodeByID(OMSSignature clientID, OMSSignature nodeID);

OMSAPI(OMSConnectionListH) OMSGetConnections(OMSUniqueID sourceUniqueID);

OMSAPI(OMSClientListH)	OMSGetClients(void);

OMSAPI(OMSVirtualNodeIDListH) OMSGetClientVirtualNodes(OMSSignature clientID);

OMSAPI(OMSErr) OMSLinkToTimeMgr(OMSProcPtr **tmProcPtrs);

OMSAPI(OMSErr) OMSLinkToNameMgr(OMSProcPtr **nmProcPtrs);

#endif	/* __OMS__ */
