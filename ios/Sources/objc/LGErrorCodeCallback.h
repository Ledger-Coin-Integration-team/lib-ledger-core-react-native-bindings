// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGError.h"
#import "LGErrorCode.h"
#import <Foundation/Foundation.h>


/** Callback triggered by main completed task, returning optional result of template type T. */
@protocol LGErrorCodeCallback

/**
 * Method triggered when main task complete.
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSNumber *)result
             error:(nullable LGError *)error;

@end
