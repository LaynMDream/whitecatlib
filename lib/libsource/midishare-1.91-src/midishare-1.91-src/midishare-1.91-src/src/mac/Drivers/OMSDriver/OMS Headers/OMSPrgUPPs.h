/*
	*** THIS FILE GENERATED AUTOMATICALLY -- DO NOT MODIFY ***
	Copyright (c) 1994-98 Opcode Systems, Inc.
*/

#if OMS_MAC_CFM
enum {
	uppOMSSearchCallbackInfo = kPascalStackBased
					| RESULT_SIZE(kOneByteCode)					/* pascal OMSBool       */
					| STACK_ROUTINE_PARAMETER(1, kFourByteCode)	/* void *param          */
					| STACK_ROUTINE_PARAMETER(2, kFourByteCode)	/* unsigned char *driverName */
};
typedef UniversalProcPtr OMSSearchCallbackUPP;
#define NewOMSSearchCallback(userRoutine)	\
		(OMSSearchCallbackUPP)NewRoutineDescriptor((ProcPtr)(userRoutine), uppOMSSearchCallbackInfo, GetCurrentArchitecture())
#define CallOMSSearchCallback(userRoutine, param, driverName)	\
		(OMSBool)CallUniversalProc((UniversalProcPtr)(userRoutine), uppOMSSearchCallbackInfo, (param), (driverName))
#else
typedef OMSSearchCallback OMSSearchCallbackUPP;
#define NewOMSSearchCallback(userRoutine)	\
		(OMSSearchCallbackUPP)(userRoutine)
#define CallOMSSearchCallback(userRoutine, param, driverName)	\
		(*(userRoutine))((param), (driverName))
#endif

