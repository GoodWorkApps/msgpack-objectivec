//
//  MessagePackTests.m
//  MessagePackTests
//
//  Created by Shintaro Abe on 1/6/14.
//  Copyright (c) 2014 dictav. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MessagePack.h"
#import "MessagePackParser+Streaming.h"
#import "MessagePackPacker+Streaming.h"

@interface MessagePackTests : XCTestCase

@end

@implementation MessagePackTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMessagePack
{
    XCTAssertNotNil([MessagePackPacker pack:@{}]);
    XCTAssertNotNil([@{} messagePack]);
}

- (void)testMessagePackStreaming
{
    NSArray *arr = @[@"1", @"2", @[@"3", @(4), [NSNull null]]];

    MessagePackPacker *packer = [[MessagePackPacker alloc] init];
    for (id obj in arr) {
        [packer push:obj];
    }

    MessagePackParser *parser = [[MessagePackParser alloc] init];
    [parser feed:[packer data]];

    NSMutableArray *foo = [NSMutableArray arrayWithCapacity:10];
    id obj = [parser next];
    while (obj) {
        [foo addObject:obj];
        obj = [parser next];
    }

    XCTAssertEqualObjects(arr, foo, @"arrays should be equal in the end");
}

@end
