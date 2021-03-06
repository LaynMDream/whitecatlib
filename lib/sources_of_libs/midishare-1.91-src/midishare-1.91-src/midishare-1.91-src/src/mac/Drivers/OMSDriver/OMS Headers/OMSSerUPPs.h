/*
	*** THIS FILE GENERATED AUTOMATICALLY -- DO NOT MODIFY ***
	Copyright (c) 1994-98 Opcode Systems, Inc.
*/

#if OMS_MAC_CFM
enum {
	uppOMSSerDrvrProcInfo = kThinkCStackBased
					| RESULT_SIZE(kFourByteCode)				/* C long               */
					| STACK_ROUTINE_PARAMETER(1, kTwoByteCode)	/* short msgNum         */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* OMSSerialPort *port  */
					| STACK_ROUTINE_PARAMETER(3, kFourByteCode)	/* long param           */
};
typedef UniversalProcPtr OMSSerDrvrProcUPP;
#define NewOMSSerDrvrProc(userRoutine)	\
		(OMSSerDrvrProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerDrvrProcInfo, GetCurrentArchitecture())
#define CallOMSSerDrvrProc(userRoutine, msgNum, port, param)	\
		(long)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerDrvrProcInfo, (msgNum), (port), (param))
#else
typedef OMSSerDrvrProc OMSSerDrvrProcUPP;
#define NewOMSSerDrvrProc(userRoutine)	\
		(OMSSerDrvrProcUPP)(userRoutine)
#define CallOMSSerDrvrProc(userRoutine, msgNum, port, param)	\
		(*(userRoutine))((msgNum), (port), (param))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSVBLProcInfo = kThinkCStackBased
					| RESULT_SIZE(0)							/* C void               */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSSerialPort *port  */
};
typedef UniversalProcPtr OMSVBLProcUPP;
#define NewOMSVBLProc(userRoutine)	\
		(OMSVBLProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSVBLProcInfo, GetCurrentArchitecture())
#define CallOMSVBLProc(userRoutine, port)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSVBLProcInfo, (port))
#else
typedef OMSVBLProc OMSVBLProcUPP;
#define NewOMSVBLProc(userRoutine)	\
		(OMSVBLProcUPP)(userRoutine)
#define CallOMSVBLProc(userRoutine, port)	\
		(*(userRoutine))((port))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSSerSendDataProcInfo = kThinkCStackBased
					| RESULT_SIZE(0)							/* C void               */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSSerialPort *port  */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* unsigned char *data  */
					| STACK_ROUTINE_PARAMETER(3, kTwoByteCode)	/* short len            */
};
typedef UniversalProcPtr OMSSerSendDataProcUPP;
#define NewOMSSerSendDataProc(userRoutine)	\
		(OMSSerSendDataProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerSendDataProcInfo, GetCurrentArchitecture())
#define CallOMSSerSendDataProc(userRoutine, port, data, len)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerSendDataProcInfo, (port), (data), (len))
#else
typedef OMSSerSendDataProc OMSSerSendDataProcUPP;
#define NewOMSSerSendDataProc(userRoutine)	\
		(OMSSerSendDataProcUPP)(userRoutine)
#define CallOMSSerSendDataProc(userRoutine, port, data, len)	\
		(*(userRoutine))((port), (data), (len))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSSerRcvByteProcInfo = kThinkCStackBased
					| RESULT_SIZE(0)							/* C void               */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSSerialPort *port  */
					| STACK_ROUTINE_PARAMETER(2, kOneByteCode)	/* unsigned char rcvByte */
};
typedef UniversalProcPtr OMSSerRcvByteProcUPP;
#define NewOMSSerRcvByteProc(userRoutine)	\
		(OMSSerRcvByteProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerRcvByteProcInfo, GetCurrentArchitecture())
#define CallOMSSerRcvByteProc(userRoutine, port, rcvByte)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerRcvByteProcInfo, (port), (rcvByte))
#else
typedef OMSSerRcvByteProc OMSSerRcvByteProcUPP;
#define NewOMSSerRcvByteProc(userRoutine)	\
		(OMSSerRcvByteProcUPP)(userRoutine)
#define CallOMSSerRcvByteProc(userRoutine, port, rcvByte)	\
		(*(userRoutine))((port), (rcvByte))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSSerSpecialRcvProcInfo = kThinkCStackBased
					| RESULT_SIZE(0)							/* C void               */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSSerialPort *port  */
					| STACK_ROUTINE_PARAMETER(2, kOneByteCode)	/* OMSBool forceEnqueueing */
};
typedef UniversalProcPtr OMSSerSpecialRcvProcUPP;
#define NewOMSSerSpecialRcvProc(userRoutine)	\
		(OMSSerSpecialRcvProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerSpecialRcvProcInfo, GetCurrentArchitecture())
#define CallOMSSerSpecialRcvProc(userRoutine, port, forceEnqueueing)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerSpecialRcvProcInfo, (port), (forceEnqueueing))
#else
typedef OMSSerSpecialRcvProc OMSSerSpecialRcvProcUPP;
#define NewOMSSerSpecialRcvProc(userRoutine)	\
		(OMSSerSpecialRcvProcUPP)(userRoutine)
#define CallOMSSerSpecialRcvProc(userRoutine, port, forceEnqueueing)	\
		(*(userRoutine))((port), (forceEnqueueing))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSSerHandshakeProcInfo = kThinkCStackBased
					| RESULT_SIZE(0)							/* C void               */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSSerialPort *port  */
					| STACK_ROUTINE_PARAMETER(2, kTwoByteCode)	/* short msg            */
					| STACK_ROUTINE_PARAMETER(3, kOneByteCode)	/* unsigned char hsByte */
};
typedef UniversalProcPtr OMSSerHandshakeProcUPP;
#define NewOMSSerHandshakeProc(userRoutine)	\
		(OMSSerHandshakeProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSerHandshakeProcInfo, GetCurrentArchitecture())
#define CallOMSSerHandshakeProc(userRoutine, port, msg, hsByte)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSerHandshakeProcInfo, (port), (msg), (hsByte))
#else
typedef OMSSerHandshakeProc OMSSerHandshakeProcUPP;
#define NewOMSSerHandshakeProc(userRoutine)	\
		(OMSSerHandshakeProcUPP)(userRoutine)
#define CallOMSSerHandshakeProc(userRoutine, port, msg, hsByte)	\
		(*(userRoutine))((port), (msg), (hsByte))
#endif

