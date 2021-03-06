//
//  MessagePackPacker.h
//  Fetch TV Remote
//
//  Created by Chris Hulbert on 13/10/11.
//  Copyright (c) 2011 Digital Five. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "pack.h"
#include "sbuffer.h"

@interface MessagePackPacker : NSObject
{
    msgpack_sbuffer* _buffer;
    msgpack_packer* _pk;
}

+ (void)packObject:(id)obj into:(msgpack_packer *)pk;

// Given an array or dictionary, this messagepacks it
+ (NSData*)pack:(id)obj;

@end
