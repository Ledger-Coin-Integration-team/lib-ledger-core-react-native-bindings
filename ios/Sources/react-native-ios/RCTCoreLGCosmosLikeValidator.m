// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

#import "RCTCoreLGCosmosLikeValidator.h"
#import "LGCosmosLikeValidator.h"

@implementation RCTCoreLGCosmosLikeValidator

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeValidator)

@synthesize bridge = _bridge;

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(init, initWithValidatorDetails:(NSDictionary *)validatorDetails
                                     commission:(NSDictionary *)commission
                                       distInfo:(NSDictionary *)distInfo
                                       signInfo:(NSDictionary *)signInfo
                                unbondingHeight:(int)unbondingHeight
                                  unbondingTime:(nonnull NSDate *)unbondingTime
                              minSelfDelegation:(nonnull NSString *)minSelfDelegation
                                         jailed:(BOOL)jailed
                                    votingPower:(nonnull NSString *)votingPower
                                operatorAddress:(nonnull NSString *)operatorAddress
                                consensusPubkey:(nonnull NSString *)consensusPubkey
                                   activeStatus:(int)activeStatus withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    RCTCoreLGCosmosLikeValidatorDescription *rctParam_validatorDetails = (RCTCoreLGCosmosLikeValidatorDescription *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDescription"];
    LGCosmosLikeValidatorDescription *field_0 = (LGCosmosLikeValidatorDescription *)[rctParam_validatorDetails.objcImplementations objectForKey:validatorDetails[@"uid"]];
    [implementationsData setObject:validatorDetails[@"uid"] forKey:@"validatorDetails"];
    RCTCoreLGCosmosLikeValidatorCommission *rctParam_commission = (RCTCoreLGCosmosLikeValidatorCommission *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorCommission"];
    LGCosmosLikeValidatorCommission *field_1 = (LGCosmosLikeValidatorCommission *)[rctParam_commission.objcImplementations objectForKey:commission[@"uid"]];
    [implementationsData setObject:commission[@"uid"] forKey:@"commission"];
    RCTCoreLGCosmosLikeValidatorDistributionInformation *rctParam_distInfo = (RCTCoreLGCosmosLikeValidatorDistributionInformation *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDistributionInformation"];
    LGCosmosLikeValidatorDistributionInformation *field_2 = (LGCosmosLikeValidatorDistributionInformation *)[rctParam_distInfo.objcImplementations objectForKey:distInfo[@"uid"]];
    [implementationsData setObject:distInfo[@"uid"] forKey:@"distInfo"];
    RCTCoreLGCosmosLikeValidatorSigningInformation *rctParam_signInfo = (RCTCoreLGCosmosLikeValidatorSigningInformation *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorSigningInformation"];
    LGCosmosLikeValidatorSigningInformation *field_3 = (LGCosmosLikeValidatorSigningInformation *)[rctParam_signInfo.objcImplementations objectForKey:signInfo[@"uid"]];
    [implementationsData setObject:signInfo[@"uid"] forKey:@"signInfo"];


    LGCosmosLikeValidator * finalResult = [[LGCosmosLikeValidator alloc] initWithValidatorDetails:field_0 commission:field_1 distInfo:field_2 signInfo:field_3 unbondingHeight:unbondingHeight unbondingTime:unbondingTime minSelfDelegation:minSelfDelegation jailed:jailed votingPower:votingPower operatorAddress:operatorAddress consensusPubkey:consensusPubkey activeStatus:activeStatus];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidator *rctImpl = (RCTCoreLGCosmosLikeValidator *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidator"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGCosmosLikeValidator", @"uid" : uuid };
    if (result)
    {
        [self.implementationsData setObject:implementationsData forKey:uuid];
        resolve(result);
    }
}

-(void)mapImplementationsData:(NSDictionary *)currentInstance
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    id field_0 = objcImpl.validatorDetails;
    NSString *field_0_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidatorDescription *rctImpl_field_0 = (RCTCoreLGCosmosLikeValidatorDescription *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDescription"];
    NSArray *field_0_array = [[NSArray alloc] initWithObjects:field_0, field_0_uuid, nil];
    [rctImpl_field_0 baseSetObject:field_0_array];
    NSDictionary *converted_field_0 = @{@"type" : @"CoreLGCosmosLikeValidatorDescription", @"uid" : field_0_uuid };
    [implementationsData setObject:converted_field_0 forKey:@"validatorDetails"];
    id field_1 = objcImpl.commission;
    NSString *field_1_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidatorCommission *rctImpl_field_1 = (RCTCoreLGCosmosLikeValidatorCommission *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorCommission"];
    NSArray *field_1_array = [[NSArray alloc] initWithObjects:field_1, field_1_uuid, nil];
    [rctImpl_field_1 baseSetObject:field_1_array];
    NSDictionary *converted_field_1 = @{@"type" : @"CoreLGCosmosLikeValidatorCommission", @"uid" : field_1_uuid };
    [implementationsData setObject:converted_field_1 forKey:@"commission"];
    id field_2 = objcImpl.distInfo;
    NSString *field_2_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidatorDistributionInformation *rctImpl_field_2 = (RCTCoreLGCosmosLikeValidatorDistributionInformation *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorDistributionInformation"];
    NSArray *field_2_array = [[NSArray alloc] initWithObjects:field_2, field_2_uuid, nil];
    [rctImpl_field_2 baseSetObject:field_2_array];
    NSDictionary *converted_field_2 = @{@"type" : @"CoreLGCosmosLikeValidatorDistributionInformation", @"uid" : field_2_uuid };
    [implementationsData setObject:converted_field_2 forKey:@"distInfo"];
    id field_3 = objcImpl.signInfo;
    NSString *field_3_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeValidatorSigningInformation *rctImpl_field_3 = (RCTCoreLGCosmosLikeValidatorSigningInformation *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidatorSigningInformation"];
    NSArray *field_3_array = [[NSArray alloc] initWithObjects:field_3, field_3_uuid, nil];
    [rctImpl_field_3 baseSetObject:field_3_array];
    NSDictionary *converted_field_3 = @{@"type" : @"CoreLGCosmosLikeValidatorSigningInformation", @"uid" : field_3_uuid };
    [implementationsData setObject:converted_field_3 forKey:@"signInfo"];
    [self.implementationsData setObject:implementationsData forKey:currentInstance[@"uid"]];
}
RCT_REMAP_METHOD(getValidatorDetails, getValidatorDetails:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"validatorDetails"];
    resolve(result);
}

RCT_REMAP_METHOD(getCommission, getCommission:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"commission"];
    resolve(result);
}

RCT_REMAP_METHOD(getDistInfo, getDistInfo:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"distInfo"];
    resolve(result);
}

RCT_REMAP_METHOD(getSignInfo, getSignInfo:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"signInfo"];
    resolve(result);
}

RCT_REMAP_METHOD(getUnbondingHeight, getUnbondingHeight:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.unbondingHeight)};
    resolve(result);
}

RCT_REMAP_METHOD(getUnbondingTime, getUnbondingTime:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.unbondingTime};
    resolve(result);
}

RCT_REMAP_METHOD(getMinSelfDelegation, getMinSelfDelegation:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.minSelfDelegation};
    resolve(result);
}

RCT_REMAP_METHOD(getJailed, getJailed:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @(objcImpl.jailed)};
    resolve(result);
}

RCT_REMAP_METHOD(getVotingPower, getVotingPower:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.votingPower};
    resolve(result);
}

RCT_REMAP_METHOD(getOperatorAddress, getOperatorAddress:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.operatorAddress};
    resolve(result);
}

RCT_REMAP_METHOD(getConsensusPubkey, getConsensusPubkey:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.consensusPubkey};
    resolve(result);
}

RCT_REMAP_METHOD(getActiveStatus, getActiveStatus:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCosmosLikeValidator *objcImpl = (LGCosmosLikeValidator *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.activeStatus)};
    resolve(result);
}

@end