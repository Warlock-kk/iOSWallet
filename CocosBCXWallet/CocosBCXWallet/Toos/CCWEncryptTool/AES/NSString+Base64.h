//
//  NSString+Base64.h
//  Gurpartap Singh
//
//  Created by Gurpartap Singh on 06/05/12.
//  Copyright (c) 2012 Gurpartap Singh. All rights reserved.
//

#import <Foundation/NSString.h>
#import <Foundation/Foundation.h>

@interface NSString (Base64Additions)

+ (NSString *)ccw_base64StringFromData:(NSData *)data length:(NSUInteger)length;

@end
