#import "Rectangle.h"

@implementation Rectangle

- (instancetype)init {
    self = [super init];
    if (self) {
        // ������������� ������� ��������������
    }
    return self;
}

- (void)calculateArea {
    CGFloat area = self.length * self.width;
    NSLog(@"Rectangle Area: %f", area);
}

- (void)calculatePerimeter {
    CGFloat perimeter = 2 * (self.length + self.width);
    NSLog(@"Rectangle Perimeter: %f", perimeter);
}

- (void)printInfo {
    NSLog(@"Rectangle: \nLength: %f \nWidth: %f \nArea: \nPerimeter:", self.length, self.width);
}

@end