#import "Figure.h"

@implementation Figure

- (instancetype)init {
    self = [super init];
    if (self) {
        // Инициализация базовых свойств
    }
    return self;
}

- (void)calculateArea {
    // Расчет площади
}

- (void)calculatePerimeter {
    // Расчет периметра
}

- (void)printInfo {
    NSLog(@"Figure: \nArea: \nPerimeter:");
}

@end
