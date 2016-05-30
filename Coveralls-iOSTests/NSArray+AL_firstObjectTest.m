//
// Created by azu on 2013/07/04.
//


#import <XCTest/XCTest.h>
#import "NSArray+AL_firstObject.h"

@interface NSArrayAL_firstObjectTest : XCTestCase
@end

@implementation NSArrayAL_firstObjectTest {
}

- (void)testAL_firstObject {
    NSArray *array = @[@1, @2, @3];
    id firstObject = [array AL_firstObject];
    XCTAssertEqual(firstObject, [array objectAtIndex:0], @"first object is @1");
}
@end
