// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from random.djinni

#import "RCTCoreLGRandomNumberGenerator.h"


@implementation RCTCoreLGRandomNumberGenerator
//Export module
RCT_EXPORT_MODULE(RCTCoreLGRandomNumberGenerator)

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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGenerator::release, first argument should be an instance of LGRandomNumberGenerator", nil);
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

/**
 * Generates random bytes.
 * @params size number of bytes to generate
 * @return 'size' random bytes
 */
RCT_REMAP_METHOD(getRandomBytes,getRandomBytes:(NSDictionary *)currentInstance withParams:(int)size withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGenerator::getRandomBytes, first argument should be an instance of LGRandomNumberGeneratorImpl", nil);
    }
    LGRandomNumberGeneratorImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRandomNumberGeneratorImpl::getRandomBytes, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSData * objcResult = [currentInstanceObj getRandomBytes:size];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRandomNumberGeneratorImpl::getRandomBytes", nil);
    }

}

/**
 * Generates random 32 bits integer.
 * @return random 32 bits integer
 */
RCT_REMAP_METHOD(getRandomInt,getRandomInt:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGenerator::getRandomInt, first argument should be an instance of LGRandomNumberGeneratorImpl", nil);
    }
    LGRandomNumberGeneratorImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRandomNumberGeneratorImpl::getRandomInt, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getRandomInt]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRandomNumberGeneratorImpl::getRandomInt", nil);
    }

}

/**
 * Generates random 64 bits integer.
 * @return random 64 bits integer
 */
RCT_REMAP_METHOD(getRandomLong,getRandomLong:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGenerator::getRandomLong, first argument should be an instance of LGRandomNumberGeneratorImpl", nil);
    }
    LGRandomNumberGeneratorImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRandomNumberGeneratorImpl::getRandomLong, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getRandomLong]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRandomNumberGeneratorImpl::getRandomLong", nil);
    }

}

/**
 * Generates random byte.
 * @return random byte
 */
RCT_REMAP_METHOD(getRandomByte,getRandomByte:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGenerator::getRandomByte, first argument should be an instance of LGRandomNumberGeneratorImpl", nil);
    }
    LGRandomNumberGeneratorImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGRandomNumberGeneratorImpl::getRandomByte, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
    }
    NSNumber * objcResult = [NSNumber numberWithLongLong:[currentInstanceObj getRandomByte]];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGRandomNumberGeneratorImpl::getRandomByte", nil);
    }

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGRandomNumberGeneratorImpl *objcResult = [[LGRandomNumberGeneratorImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [self.objcImplementations setObject:objcResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGRandomNumberGeneratorImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGRandomNumberGeneratorImpl::init", nil);
    }
    resolve(result);
}
@end
