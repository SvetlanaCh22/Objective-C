#import "Figure.h"

@implementation Figure

- (instancetype)init {
    self = [super init];
    if (self) {
        // ������������� ������� �������
    }
    return self;
}

- (void)calculateArea {
    // ������ �������
}

- (void)calculatePerimeter {
    // ������ ���������
}

- (void)printInfo {
    NSLog(@"Figure: \nArea: \nPerimeter:");
}

@end