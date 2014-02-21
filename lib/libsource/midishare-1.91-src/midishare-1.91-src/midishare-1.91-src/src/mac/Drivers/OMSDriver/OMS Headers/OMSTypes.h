/*
	OMSTypes.h
	
	Basic types for Open Music System (included from OMS.h)
	Doug Wyatt, Opcode Systems
	Copyright (c) 1990-98 Opcode Systems, Inc. All Rights Reserved
*/

#ifndef __OMSTypes__
#define __OMSTypes__
#pragma once

#include "OMSConfig.h"

#define OMS_STRING_LEN			31		/* Length of OMSString */


/* Primitive types */
typedef unsigned char OMSBool;			/* same as Boolean */

typedef short OMSErr;

typedef unsigned short OMSUniqueID;

typedef unsigned long OMSSignature;		/* same as OSType */

typedef unsigned char OMSString[OMS_STRING_LEN + 1];	/* pascal string */

typedef unsigned char *OMSStringPtr;	/* points to pascal string */

typedef long (*OMSProcPtr)();

typedef void *OMSIcon;

/* OS-specific types and definitions */
#if OMS_MACINTOSH
	#if GENERATINGPOWERPC || defined(powerc) || defined(__powerc) || defined(__MWERKS__)
		#define OMS_MAC_PRAGMA_ALIGN 1
	#else
		#define OMS_MAC_PRAGMA_ALIGN 0
	#endif
	
	#if USESROUTINEDESCRIPTORS || TARGET_RT_MAC_CFM
		#define OMS_MAC_CFM 1
	#else
		#define OMS_MAC_CFM 0
	#endif
	
	#ifndef __FILES__
	#include <Files.h>
	#endif
	#ifndef __WINDOWS__
	#include <Windows.h>
	#endif
	#ifndef __EVENTS__
	#include <Events.h>
	#endif
	#ifndef __MENUS__
	#include <Menus.h>
	#endif
	
#ifdef __cplusplus
	#define OMSAPI(rettype)	extern "C" pascal rettype
#else
	#define OMSAPI(rettype)	pascal rettype
#endif
	#define OMSCALLBACK(rettype) pascal rettype
	#define OMSTIMERCALLBACK(rettype) pascal rettype
	#define TYPEDEF_OMSPROC(rettype, name) typedef pascal rettype (*name)
	
	typedef FSSpec OMSFile;
	
	typedef EventRecord OMSEventRecord;
	
	typedef WindowPtr OMSWindowPtr;
	
	typedef GrafPtr OMSDrawEnvPtr;
	
	typedef MenuHandle OMSMenuHandle;
	
	typedef Point OMSPoint;
	
	typedef Rect OMSRect;
	
	#if OMS_MAC_PRAGMA_ALIGN
	#pragma options align=mac68k
	#endif
	typedef struct {
		short			fontNum;
		unsigned char	fontSize;
		unsigned char	fontFace;
	} OMSFontSpec;
	#if OMS_MAC_PRAGMA_ALIGN
	#pragma options align=reset
	#endif
	
#elif OMS_WINDOWS
#ifdef __cplusplus
	#define OMSAPI(rettype)	extern "C" rettype _far _export _pascal
#else
	#define OMSAPI(rettype)	rettype _far _export _pascal
#endif
	#define OMSCALLBACK(rettype) rettype _far _export _pascal
	#define OMSTIMERCALLBACK(rettype) rettype _far _export _pascal
	#define TYPEDEF_OMSPROC(rettype, name) typedef rettype (_far _pascal *name)
	
	typedef struct {
		int x;
	} OMSEventRecord;
	
	typedef struct {
		char path[144];
	} OMSFile;
	
	typedef HWND OMSWindowPtr;
  
	typedef HDC OMSDrawEnvPtr;
  
	typedef HWND OMSMenuHandle;

	typedef POINT OMSPoint;
	
	typedef RECT OMSRect;

	typedef LOGFONT OMSFontSpec;
	
	typedef HFONT	OMSFontHandle;

#else
	/* dummy declarations for testing platform dependencies */
	#define OMSAPI(rettype)	rettype
	#define OMSCALLBACK(rettype)	rettype
	#define TYPEDEF_OMSPROC(rettype, name) typedef rettype (*name)
	
	typedef struct {
		int x;	
	} OMSFile, OMSEventRecord, OMSPoint, OMSRect, OMSFontSpec;
	
	typedef void *OMSDrawEnvPtr, *OMSWindowPtr, *OMSMenuHandle;
#endif


#endif // __OMSTypes__
