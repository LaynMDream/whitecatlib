/*
	*** THIS FILE GENERATED AUTOMATICALLY -- DO NOT MODIFY ***
	Copyright (c) 1994-98 Opcode Systems, Inc.
*/

#if OMS_MAC_CFM
enum {
	uppOMSAsyncCompletionInfo = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSAsyncWriteReq *req */
};
typedef UniversalProcPtr OMSAsyncCompletionUPP;
#define NewOMSAsyncCompletion(userRoutine)	\
		(OMSAsyncCompletionUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSAsyncCompletionInfo, GetCurrentArchitecture())
#define CallOMSAsyncCompletion(userRoutine, req)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSAsyncCompletionInfo, (req))
#else
typedef OMSAsyncCompletion OMSAsyncCompletionUPP;
#define NewOMSAsyncCompletion(userRoutine)	\
		(OMSAsyncCompletionUPP)(userRoutine)
#define CallOMSAsyncCompletion(userRoutine, req)	\
		(*(userRoutine))((req))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSAppHookInfo = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSAppHookMsg *packet */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* long appHookRefCon   */
};
typedef UniversalProcPtr OMSAppHookUPP;
#define NewOMSAppHook(userRoutine)	\
		(OMSAppHookUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSAppHookInfo, GetCurrentArchitecture())
#define CallOMSAppHook(userRoutine, packet, appHookRefCon)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSAppHookInfo, (packet), (appHookRefCon))
#else
typedef OMSAppHook OMSAppHookUPP;
#define NewOMSAppHook(userRoutine)	\
		(OMSAppHookUPP)(userRoutine)
#define CallOMSAppHook(userRoutine, packet, appHookRefCon)	\
		(*(userRoutine))((packet), (appHookRefCon))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSReadHookInfo = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSPacket *packet    */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* long readHookRefCon  */
};
typedef UniversalProcPtr OMSReadHookUPP;
#define NewOMSReadHook(userRoutine)	\
		(OMSReadHookUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSReadHookInfo, GetCurrentArchitecture())
#define CallOMSReadHook(userRoutine, packet, readHookRefCon)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSReadHookInfo, (packet), (readHookRefCon))
#else
typedef OMSReadHook OMSReadHookUPP;
#define NewOMSReadHook(userRoutine)	\
		(OMSReadHookUPP)(userRoutine)
#define CallOMSReadHook(userRoutine, packet, readHookRefCon)	\
		(*(userRoutine))((packet), (readHookRefCon))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSReadHook2Info = kPascalStackBased
					| RESULT_SIZE(0)							/* pascal void          */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSMIDIPacket *packet */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* long readHookRefCon  */
};
typedef UniversalProcPtr OMSReadHook2UPP;
#define NewOMSReadHook2(userRoutine)	\
		(OMSReadHook2UPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSReadHook2Info, GetCurrentArchitecture())
#define CallOMSReadHook2(userRoutine, packet, readHookRefCon)	\
		CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSReadHook2Info, (packet), (readHookRefCon))
#else
typedef OMSReadHook2 OMSReadHook2UPP;
#define NewOMSReadHook2(userRoutine)	\
		(OMSReadHook2UPP)(userRoutine)
#define CallOMSReadHook2(userRoutine, packet, readHookRefCon)	\
		(*(userRoutine))((packet), (readHookRefCon))
#endif

#if OMS_MAC_CFM
enum {
	uppOMSNodeFilterProcInfo = kPascalStackBased
					| RESULT_SIZE(kOneByteCode)					/* pascal OMSBool       */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* OMSNodeInfoRec *info */
};
typedef UniversalProcPtr OMSNodeFilterProcUPP;
#define NewOMSNodeFilterProc(userRoutine)	\
		(OMSNodeFilterProcUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSNodeFilterProcInfo, GetCurrentArchitecture())
#define CallOMSNodeFilterProc(userRoutine, info)	\
		(OMSBool)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSNodeFilterProcInfo, (info))
#else
typedef OMSNodeFilterProc OMSNodeFilterProcUPP;
#define NewOMSNodeFilterProc(userRoutine)	\
		(OMSNodeFilterProcUPP)(userRoutine)
#define CallOMSNodeFilterProc(userRoutine, info)	\
		(*(userRoutine))((info))
#endif
