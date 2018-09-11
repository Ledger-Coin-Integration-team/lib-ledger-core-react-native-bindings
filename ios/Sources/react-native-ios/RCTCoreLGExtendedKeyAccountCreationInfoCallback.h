// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGError.h"
#import "LGExtendedKeyAccountCreationInfo.h"
#import "LGExtendedKeyAccountCreationInfoCallbackImpl.h"
#import "RCTCoreLGError.h"
#import "RCTCoreLGExtendedKeyAccountCreationInfo.h"
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeModule.h>


/**
 *Callback triggered by main completed task,
 *returns optional result of template type T
 */
@interface RCTCoreLGExtendedKeyAccountCreationInfoCallback : NSObject <LGExtendedKeyAccountCreationInfoCallback>
@property (nonatomic, strong) RCTPromiseResolveBlock resolve;
@property (nonatomic, strong) RCTPromiseRejectBlock reject;
@property (nonatomic, weak) RCTBridge *bridge;
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge;
@end
