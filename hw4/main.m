#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:^NSString *{
            return @"up";
        }];
        
        NSLog(@"Robot coordinates: (%ld, %ld)", robot.x, robot.y);
        
        [robot run:^NSString *{
            return @"right";
        }];
        
        NSLog(@"Robot coordinates: (%ld, %ld)", robot.x, robot.y);
    }
    return 0;
}