#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "XMPFrameworkErrors.h"
#import "XMPReader.h"
#import "XMPBatchWriter.h"
#import "XMPProperty.h"
#import "XMPWriter.h"

FOUNDATION_EXPORT double XMPFrameworkVersionNumber;
FOUNDATION_EXPORT const unsigned char XMPFrameworkVersionString[];

