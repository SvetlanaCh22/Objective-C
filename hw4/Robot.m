#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(MoveBlock)moveBlock {
    NSString *direction = moveBlock();
    
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    }
}

@end