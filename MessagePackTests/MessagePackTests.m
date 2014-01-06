//
//  MessagePackTests.m
//  MessagePackTests
//
//  Created by Shintaro Abe on 1/6/14.
//  Copyright (c) 2014 dictav. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MessagePack.h"

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

@end
