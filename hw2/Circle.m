#import "Circle.h"

@implementation Circle

- (instancetype)init {
    self = [super init];
    if (self) {
        // Инициализация свойств круга
    }
    return self;
}

- (void)calculateArea {
    CGFloat area = M_PI * self.radius * self.radius;
    NSLog(@"Circle Area: %f", area);
}

- (void)calculatePerimeter {
    CGFloat perimeter = 2 * M_PI * self.radius;
    NSLog(@"Circle Perimeter: %f", perimeter);
}

- (void)printInfo {
    NSLog(@"Circle: \nRadius: %f \nArea: \nPerimeter:", self.radius);
}

@end