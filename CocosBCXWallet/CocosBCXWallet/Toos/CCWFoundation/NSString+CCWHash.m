//
//  NSString+CCWHash.m
//  CocosWallet
//
//  Created by SYL on 2018/11/8.
//  Copyright © 2018 CCW. All rights reserved.
//

#import "NSString+CCWHash.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (CCWHash)
- (NSString *)MD5String
{
    const char *str = self.UTF8String;
    int length = (int)strlen(str);
    unsigned char bytes[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, length, bytes);
    
    return [self stringFromBytes:bytes length:CC_MD5_DIGEST_LENGTH];
}

- (NSString *)sha1String
{
    const char *str = self.UTF8String;
    int length = (int)strlen(str);
    unsigned char bytes[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(str, length, bytes);
    
    return [self stringFromBytes:bytes length:CC_SHA1_DIGEST_LENGTH];
}

- (NSString *)sha224String
{
    const char *str = self.UTF8String;
    int length = (int)strlen(str);
    unsigned char bytes[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224(str, length, bytes);
    
    return [self stringFromBytes:bytes length:CC_SHA224_DIGEST_LENGTH];
}

- (NSString *)sha256String
{
    const char *str = self.UTF8String;
    int length = (int)strlen(str);
    unsigned char bytes[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(str, length, bytes);
    
    return [self stringFromBytes:bytes length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString *)sha512String
{
    const char *str = self.UTF8String;
    int length = (int)strlen(str);
    unsigned char bytes[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(str, length, bytes);
    
    return [self stringFromBytes:bytes length:CC_SHA512_DIGEST_LENGTH];
}

- (NSString *)stringFromBytes:(unsigned char *)bytes length:(int)length
{
    NSMutableString *strM = [NSMutableString string];
    
    for (int i = 0; i < length; i++) {
        [strM appendFormat:@"%02x", bytes[i]];
    }
    
    return [strM copy];
}

@end
