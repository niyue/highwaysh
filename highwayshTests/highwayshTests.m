//
//  highwayshTests.m
//  highwayshTests
//

#import "highwayshTests.h"
#import "Highway.h"

@implementation highwayshTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testLoadAllHighways
{
    NSArray *highways = [Highway all];
    STAssertEquals(2, (int)[highways count], @"Highways should be more than 0");
    Highway *hw = [highways objectAtIndex:0];
    STAssertNotNil([hw code], @"Highway code should not be nil.");
    STAssertNotNil([hw name], @"Highway name should not be nil.");
}

@end
