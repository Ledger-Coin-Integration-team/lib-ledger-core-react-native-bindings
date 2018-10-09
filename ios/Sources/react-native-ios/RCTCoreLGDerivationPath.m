// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGDerivationPath.h"


@implementation RCTCoreLGDerivationPath
//Export module
RCT_EXPORT_MODULE(RCTCoreLGDerivationPath)

@synthesize bridge = _bridge;

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::release, first argument should be an instance of LGDerivationPath", nil);
    }
    [self.objcImplementations removeObjectForKey:currentInstance[@"uid"]];
    resolve(@(YES));
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    NSMutableArray *uuids = [[NSMutableArray alloc] init];
    for (id key in self.objcImplementations)
    {
        [uuids addObject:key];
    }
    NSDictionary *result = @{@"value" : uuids};
    resolve(result);
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self.objcImplementations removeAllObjects];
    resolve(@(YES));
}

/** Get the number of element in this path. */
RCT_REMAP_METHOD(getDepth,getDepth:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::getDepth, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::getDepth, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getDepth]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::getDepth", nil);
    }

}

/** Get the child num at the given index in the path. */
RCT_REMAP_METHOD(getChildNum,getChildNum:(NSDictionary *)currentInstance withParams:(int)index withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::getChildNum, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::getChildNum, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getChildNum:index]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::getChildNum", nil);
    }

}

/**
 * Get the child num at the given index in the path. If the child num is hardened, returns it
 * without the hardened marker bit.
 */
RCT_REMAP_METHOD(getUnhardenedChildNum,getUnhardenedChildNum:(NSDictionary *)currentInstance withParams:(int)index withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::getUnhardenedChildNum, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::getUnhardenedChildNum, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getUnhardenedChildNum:index]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::getUnhardenedChildNum", nil);
    }

}

/** Return true if the given index in the path is an hardened child num. */
RCT_REMAP_METHOD(isHardened,isHardened:(NSDictionary *)currentInstance withParams:(int)index withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::isHardened, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::isHardened, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    BOOL objcResult = [currentInstanceObj isHardened:index];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::isHardened", nil);
    }

}

/** Serialize the given path to a human readable string like "44'/0'/0'/0/0" */
RCT_REMAP_METHOD(toString,toString:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::toString, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::toString, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSString * objcResult = [currentInstanceObj toString];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::toString", nil);
    }

}

/**
 * Return a derivation path without the last element, e.g. the parent of "44'/0'/0'/0/0" is
 * "44'/0'/0'/0"
 */
RCT_REMAP_METHOD(getParent,getParent:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::getParent, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::getParent, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    LGDerivationPath * objcResult = [currentInstanceObj getParent];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDerivationPath *rctImpl_objcResult = (RCTCoreLGDerivationPath *)[self.bridge moduleForName:@"CoreLGDerivationPath"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDerivationPath", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::getParent", nil);
    }

}

/** Return an array where which item is a child num of the path. */
RCT_REMAP_METHOD(toArray,toArray:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDerivationPath::toArray, first argument should be an instance of LGDerivationPath", nil);
    }
    LGDerivationPath *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDerivationPath::toArray, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSArray<NSNumber *> * objcResult = [currentInstanceObj toArray];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::toArray", nil);
    }

}

RCT_REMAP_METHOD(parse,parsewithParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDerivationPath * objcResult = [LGDerivationPath parse:path];

    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDerivationPath *rctImpl_objcResult = (RCTCoreLGDerivationPath *)[self.bridge moduleForName:@"CoreLGDerivationPath"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGDerivationPath", @"uid" : uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDerivationPath::parse", nil);
    }

}
@end
