/*
	*** THIS FILE GENERATED AUTOMATICALLY -- DO NOT MODIFY ***
	Copyright (c) 1994-98 Opcode Systems, Inc.
*/

#if OMS_MAC_CFM
enum {
	uppOMSDriverProcInfo = kPascalStackBased
					| RESULT_SIZE(kFourByteCode)				/* pascal long          */
					| STACK_ROUTINE_PARAMETER(1, kTwoByteCode)	/* short msg            */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* long par1            */
					| STACK_ROUTINE_PARAMETER(3, kFourByteCode)	/* long par2            */
};
typedef UniversalProcPtr OMSDriverProcUPP;
#define NewOMSDriverProc(userRoutine)	\
		(OMSDriverProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSDriverProcInfo, GetCurrentArchitecture())
#define CallOMSDriverProc(userRoutine, msg, par1, par2)	\
		(long)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSDriverProcInfo, (msg), (par1), (par2))
#else
typedef OMSDriverProc OMSDriverProcUPP;
#define NewOMSDriverProc(userRoutine)	\
		(OMSDriverProcUPP)(userRoutine)
#define CallOMSDriverProc(userRoutine, msg, par1, par2)	\
		(*(userRoutine))((msg), (par1), (par2))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSDvrAdd1DevProc0Info = kPascalStackBased
					| RESULT_SIZE(kFourByteCode)				/* pascal OMSDeviceH    */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSDevice *device    */
};
typedef UniversalProcPtr OMSDvrAdd1DevProc0UPP;
#define NewOMSDvrAdd1DevProc0(userRoutine)	\
		(OMSDvrAdd1DevProc0UPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSDvrAdd1DevProc0Info, GetCurrentArchitecture())
#define CallOMSDvrAdd1DevProc0(userRoutine, device)	\
		(OMSDeviceH)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSDvrAdd1DevProc0Info, (device))
#else
typedef OMSDvrAdd1DevProc0 OMSDvrAdd1DevProc0UPP;
#define NewOMSDvrAdd1DevProc0(userRoutine)	\
		(OMSDvrAdd1DevProc0UPP)(userRoutine)
#define CallOMSDvrAdd1DevProc0(userRoutine, device)	\
		(*(userRoutine))((device))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSDvrAdd1DevProc1Info = kPascalStackBased
					| RESULT_SIZE(kFourByteCode)				/* pascal OMSDeviceH    */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSDevice *device    */
					| STACK_ROUTINE_PARAMETER(2, kTwoByteCode)	/* short devSize        */
};
typedef UniversalProcPtr OMSDvrAdd1DevProc1UPP;
#define NewOMSDvrAdd1DevProc1(userRoutine)	\
		(OMSDvrAdd1DevProc1UPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSDvrAdd1DevProc1Info, GetCurrentArchitecture())
#define CallOMSDvrAdd1DevProc1(userRoutine, device, devSize)	\
		(OMSDeviceH)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSDvrAdd1DevProc1Info, (device), (devSize))
#else
typedef OMSDvrAdd1DevProc1 OMSDvrAdd1DevProc1UPP;
#define NewOMSDvrAdd1DevProc1(userRoutine)	\
		(OMSDvrAdd1DevProc1UPP)(userRoutine)
#define CallOMSDvrAdd1DevProc1(userRoutine, device, devSize)	\
		(*(userRoutine))((device), (devSize))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSDriverEventHandlerInfo = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* GrafPtr activeDriverWindow */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* EventRecord *evt     */
};
typedef UniversalProcPtr OMSDriverEventHandlerUPP;
#define NewOMSDriverEventHandler(userRoutine)	\
		(OMSDriverEventHandlerUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSDriverEventHandlerInfo, GetCurrentArchitecture())
#define CallOMSDriverEventHandler(userRoutine, activeDriverWindow, evt)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSDriverEventHandlerInfo, (activeDriverWindow), (evt))
#else
typedef OMSDriverEventHandler OMSDriverEventHandlerUPP;
#define NewOMSDriverEventHandler(userRoutine)	\
		(OMSDriverEventHandlerUPP)(userRoutine)
#define CallOMSDriverEventHandler(userRoutine, activeDriverWindow, evt)	\
		(*(userRoutine))((activeDriverWindow), (evt))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSSerErrResponseProcInfo = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kTwoByteCode)	/* short portNum        */
					| STACK_ROUTINE_PARAMETER(2, kTwoByteCode)	/* short errNum         */
					| STACK_ROUTINE_PARAMETER(3, kTwoByteCode)	/* short userChoice     */
};
typedef UniversalProcPtr OMSSerErrResponseProcUPP;
#define NewOMSSerErrResponseProc(userRoutine)	\
		(OMSSerErrResponseProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerErrResponseProcInfo, GetCurrentArchitecture())
#define CallOMSSerErrResponseProc(userRoutine, portNum, errNum, userChoice)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerErrResponseProcInfo, (portNum), (errNum), (userChoice))
#else
typedef OMSSerErrResponseProc OMSSerErrResponseProcUPP;
#define NewOMSSerErrResponseProc(userRoutine)	\
		(OMSSerErrResponseProcUPP)(userRoutine)
#define CallOMSSerErrResponseProc(userRoutine, portNum, errNum, userChoice)	\
		(*(userRoutine))((portNum), (errNum), (userChoice))
#endif

