#import "Robot.h"

@implementation Robot

- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y name:(NSString *)name {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
        _name = [name copy];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeInteger:self.x forKey:@"x"];
    [encoder encodeInteger:self.y forKey:@"y"];
    [encoder encodeObject:self.name forKey:@"name"];
}

- (instancetype)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (self) {
        _x = [decoder decodeIntegerForKey:@"x"];
        _y = [decoder decodeIntegerForKey:@"y"];
        _name = [decoder decodeObjectForKey:@"name"];
    }
    return self;
}

@end
