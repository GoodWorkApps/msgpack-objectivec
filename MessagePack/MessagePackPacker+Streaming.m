//
// Created by Gennady Evstratov on 14.02.14.
// Copyright (c) 2014 dictav. All rights reserved.
//

#import "MessagePackPacker+Streaming.h"


@implementation MessagePackPacker (Streaming)

- (void)dealloc
{
    msgpack_sbuffer_free(_buffer);
    msgpack_packer_free(_pk);

}

- (id)init
{
    self = [super init];
    if (self) {
        _buffer = msgpack_sbuffer_new();
        _pk = msgpack_packer_new(_buffer, msgpack_sbuffer_write);
    }

    return self;
}

- (void)push:(id)obj
{
    // Pack the root array or dictionary node, which recurses through the rest
    [MessagePackPacker packObject:obj into:_pk];
}

- (NSData*)data
{
    return [NSData dataWithBytes:_buffer->data length:_buffer->size];
}

- (void)resetData
{
    msgpack_sbuffer_free(_buffer);
    msgpack_packer_free(_pk);

    _buffer = msgpack_sbuffer_new();
    _pk = msgpack_packer_new(_buffer, msgpack_sbuffer_write);
}


@end