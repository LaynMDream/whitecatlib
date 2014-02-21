/*
	OMSProgs.h
	
	Private OMS interfaces.
*/
#ifndef __OMSProgs__
#define __OMSProgs__
#pragma once

#include "OMSDriver.h"


/*
	uniqueID's uniquely identify devices and virtual devices.
	Applications use them to remember connections.
	
					NotIO	IsOut
						Real
	Instrument
		virtual		0	0	1
		from Dev	0	1	1	(matches Real Output ID except for OMSIDNotIONode bit)
	Patch Point
		from InPr	0	0	0
		from Port	0	1	0	(matches Input Port ID except for OMSIDNotIONode bit)
	Real Output		1	1	1	(apps don't see)
	Input Port		1	1	0	(apps don't see)
	Input Prog		1	0	0	(apps don't see)
	
	Special stuff	1	0	1	(only currently used for exclusive patch point)
*/
#define OMSIDNotIONode		0x8000
#define OMSIDIsReal			0x4000
#define OMSIDIsVirtual		0x0000
#define OMSIDIsOutput		0x2000
#define OMSIDIsInput		0x0000
#define OMSIDValueMask		0x1FFF
#define OMSIDTypeMask		0xE000

//#define OMSIDVInstrument	(OMSIDIsOutput)
//#define OMSIDDevInstr		(OMSIDIsReal | OMSIDIsOutput)
//#define OMSIDInPrPatchPt	0
//#define OMSIDPortPatchPt	(OMSIDIsReal)

#define OMSIDRealOutput		(OMSIDNotIONode | OMSIDIsReal | OMSIDIsOutput)
#define OMSIDInputPort		(OMSIDNotIONode | OMSIDIsReal)
#define OMSIDInputProg		(OMSIDNotIONode)

#define OMSIDSpecial		0xC000

//#define OMSExclusivePatchPtID	0xC0EE




#define BasicOMSDeviceSize	(offsetof(OMSDevice,model) + OD_MAX_MODEL_LEN + 1)


/*
	Types of current documents
*/
enum {
	omsConfigDoc, omsObsolete, omsNumCurrentDocs
};

#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=mac68k
#endif

typedef struct OMSPortInfo {
	OMSUniqueID	uniqueID;
	OMSPortID	portID;
	OMSString	inputDeviceNames;
	OMSDevice	**firstDevice;
} OMSPortInfo;

typedef struct OMSInstallDevice {
	OMSDeviceH	newHandle;
	OMSDeviceH	oldHandle;
} OMSInstallDevice;


/*
	OMSGlobalConfig - Global configuration
	Stored in file "OMS Current State" in OMS Folder
*/
typedef struct OMSGlobalConfig {
	short		omsMode;
	short		patcherDelay;
#if       OS == Mac
	Boolean		noUseSerialPort[2];
	Byte		noTryToTurnOffAppleTalk : 1;
	Byte		restoreAppleTalk : 1;
#endif // OS == Mac
	Byte		enteredPatcherDelay : 1;
#if       OS == Mac
	Byte		suppressSerialErrors : 1;
	Byte		curSetupDocClosed : 1;
	Byte		defaultButtonLeaveAppleTalkOn : 1;		/* which button is default in AT dialog */
										/* 0=turn it off, 1=leave it on */
#endif // OS == Mac
	Byte		programmersMode : 1;
	Byte		noHelpDuringNewStudioSetup : 1;
	Byte		smallIcons : 1;
	Byte		alwaysTurnATalkOff : 1;	// 3/28/95
	Byte		noUseSerDMA : 1;		// 12/8/95
#if       OS == Win
	Byte		doAutoDetect : 1;		// 2/29/96
#endif // OS == Win
	Byte		unused : 4;
	Byte		spare[8];
} OMSGlobalConfig;



/*typedef struct {
	OMSUniqueID	uniqueID;
	short		midiDeviceID;
	Byte		manuf[OD_MAX_MANUF_LEN];
	Byte		model[OD_MAX_MANUF_LEN];
} OMSIdentifiedDevice;

typedef struct {
	short				numDevices;
	OMSIdentifiedDevice	device[1];	// open-ended
} OMSIdentifiedDeviceList, ** OMSIdentifiedDeviceListH;*/

TYPEDEF_OMSPROC(OMSBool, OMSSearchCallback)(void *param, unsigned char *driverName);


#if OMS_MAC_PRAGMA_ALIGN
#pragma options align=reset
#endif

#include "OMSPrgUPPs.h"

#ifdef __cplusplus
extern "C" {
#endif
//OMSAPI(void) OMSCurrentDocChanged(short whichDocType);	obsolete for 2.0

OMSAPI(void)	OMSSetCurSetupDoc(OMSFile *newSetupDoc);

OMSAPI(OMSErr)	OMSGetGlobalConfig(OMSGlobalConfig *config);

OMSAPI(OMSErr)	OMSSetGlobalConfig(OMSGlobalConfig *config);

OMSAPI(OMSErr)	OMSInstallDeviceTree(OMSInstallDevice **devs, OMSPortInfo **portList,
					Boolean clone, Boolean interfacesMayHaveChanged, Boolean *curPatchDocDirty);

OMSAPI(Boolean) OMSEditDriverDevice(OMSDevice **deviceH, OMSDeviceListH devList);

OMSAPI(OMSDeviceListH) OMSGetDriverDevices(void);

OMSAPI(OMSDeviceListH) OMSGetDriverDevicesNewSS(void);

OMSAPI(void)	OMSSendPatcherPgm(OMSUniqueID patcherUniqueID, short programNum);

OMSAPI(void)	OMSRestartDrivers(void);

OMSAPI(OMSDeviceListH)	OMSIdentifyDevices(OMSSearchCallbackUPP callback, void *callbackParam);
#ifdef __cplusplus
}
#endif

#endif /* __OMSProgs__ */
