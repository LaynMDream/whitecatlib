/* DO NOT EDIT THIS FILE - it is machine generated */
#include "jni.h"
/* Header for class grame_midishare_MidiAppl */

#ifndef _Included_grame_midishare_MidiAppl
#define _Included_grame_midishare_MidiAppl
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     grame_midishare_MidiAppl
 * Method:    ApplOpen
 * Signature: (I)I
 */
JNIEXPORT jint JNICALL Java_grame_midishare_MidiAppl_ApplOpen
  (JNIEnv *, jobject, jint, jint);

/*
 * Class:     grame_midishare_MidiAppl
 * Method:    ApplClose
 * Signature: (I)V
 */
JNIEXPORT void JNICALL Java_grame_midishare_MidiAppl_ApplClose
  (JNIEnv *, jobject, jint);
  
/*
 * Class:     grame_midishare_MidiAppl
 * Method:    ScheduleTask
 * Signature: (Lgrame/midishare/MidiTask;IILgrame/midishare/MidiAppl;)I
 */
JNIEXPORT jint JNICALL Java_grame_midishare_MidiAppl_ScheduleTask
	(JNIEnv *, jobject, jobject, jint, jint, jint);


#ifdef __cplusplus
}
#endif
#endif
