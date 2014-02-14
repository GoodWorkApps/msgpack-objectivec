//
// Created by Gennady Evstratov on 14.02.14.
// Copyright (c) 2014 dictav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessagePackPacker.h"

@interface MessagePackPacker (Streaming)

- (void)push:(id)obj;
- (NSData*)data;
- (void)resetData;

@end