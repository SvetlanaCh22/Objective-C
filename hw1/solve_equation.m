#import <Foundation/Foundation.h>

void solveQuadraticEquation(float a, float b, float c) {
    float discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        float x1 = (-b + sqrt(discriminant)) / (2 * a);
        float x2 = (-b - sqrt(discriminant)) / (2 * a);
        
        NSLog(@"Уравнение имеет два корня: x1 = %f, x2 = %f", x1, x2);
    } else if (discriminant == 0) {
        float x = -b / (2 * a);
        
        NSLog(@"Уравнение имеет один корень: x = %f", x);
    } else {
        NSLog(@"Уравнение не имеет действительных корней");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        solveQuadraticEquation(1, -8, 12);
        solveQuadraticEquation(12, -4, 2);
        solveQuadraticEquation(1, -100, -2);
    }
    return 0;
}