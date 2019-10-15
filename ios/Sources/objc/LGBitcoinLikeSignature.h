// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import <Foundation/Foundation.h>

/**
 * Structure representing DER encoded signature
 * DER format :
 * - DER prefix
 * - Length of rest of signature
 * - Marker for r value
 * - Length of r value
 * - r value, Big Endian
 * - Marker for s value
 * - Length of s value
 * - s value, Big Endian
 * - SIGHASH byte (ALL, NONE, SINGLE)
 */
@interface LGBitcoinLikeSignature : NSObject
- (nonnull instancetype)initWithR:(nonnull NSData *)r
                                s:(nonnull NSData *)s
                                v:(nonnull NSData *)v;
+ (nonnull instancetype)BitcoinLikeSignatureWithR:(nonnull NSData *)r
                                                s:(nonnull NSData *)s
                                                v:(nonnull NSData *)v;

/** r data */
@property (nonatomic, readonly, nonnull) NSData * r;

/** s data */
@property (nonatomic, readonly, nonnull) NSData * s;

/** Ignored attribute */
@property (nonatomic, readonly, nonnull) NSData * v;

@end