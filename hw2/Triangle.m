#import "Triangle.h"

@implementation Triangle

- (instancetype)init {
    self = [super init];
    if (self) {
        // Инициализация свойств треугольника
    }
    return self;
}

- (void)calculateArea {
    CGFloat semiPerimeter = (self.sideA + self.sideB + self.sideC) / 2;
    CGFloat area = sqrtf(semiPerimeter * (semiPerimeter - self.sideA) * (semiPerimeter - self.sideB) * (semiPerimeter - self.sideC));
    NSLog(@"Triangle Area: %f", area);
}

- (void)calculatePerimeter {
    CGFloat perimeter = self.sideA + self.sideB + self.sideC;
    NSLog(@"Triangle Perimeter: %f", perimeter);
}

- (void)printInfo {
    NSLog(@"Triangle: \nSide A: %f \nSide B: %f \nSide C: %f \nArea: \nPerimeter:", self.sideA, self.sideB, self.sideC);
}

@end
