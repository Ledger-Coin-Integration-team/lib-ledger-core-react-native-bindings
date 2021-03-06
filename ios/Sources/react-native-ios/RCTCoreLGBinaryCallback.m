// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGBinaryCallback.h"


@implementation RCTCoreLGBinaryCallback
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge
{
    self = [super init];
    if(self)
    {
        self.resolve = resolve;
        self.reject = reject;
        self.bridge = bridge;
    }
    return self;
}
-(NSString *) dataToHexString: (NSData *)data 
{
    const unsigned char *bytes = (const unsigned char *)data.bytes;
    NSMutableString *hex = [NSMutableString new];
    for (NSInteger i = 0; i < data.length; i++)
    {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return [hex copy];
}

/**
 * Method triggered when main task complete.
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSData *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGBinaryCallback Error", error.message, nil);
        return;
    }


    NSString *objcResultData = [self dataToHexString:result];
    NSDictionary *callbackResult = @{@"value" : objcResultData};
    self.resolve(callbackResult);

}
@end
