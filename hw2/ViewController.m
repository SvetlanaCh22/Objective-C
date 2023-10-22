#import "ViewController.h"
#import "Figure.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // �������� ������� �����
    NSArray *figures = [self createFiguresArray];
    
    // ����� ���������� � ������� �� �����
    [self printFiguresInfo:figures];
}

- (NSArray *)createFiguresArray {
    // �������� �������� �����
    Rectangle *rectangle = [[Rectangle alloc] init];
    rectangle.length = 3.0;
    rectangle.width = 4.0;
    
    Circle *circle = [[Circle alloc] init];
    circle.radius = 2.5;
    
    Triangle *triangle = [[Triangle alloc] init];
    triangle.sideA = 3.0;
    triangle.sideB = 4.0;
    triangle.sideC = 5.0;
    
    // ���������� ����� � ������
    NSArray *figures = @[rectangle, circle, triangle];
    
    return figures;
}

- (void)printFiguresInfo:(NSArray *)figures {
    for (Figure *figure in figures) {
        [figure calculateArea];
        [figure calculatePerimeter];
        [figure printInfo];
    }
}

@end