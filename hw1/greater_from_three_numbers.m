#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Ввод чисел
        NSLog(@"Введите первое число:");
        int number1;
        scanf("%i", &number1);
        
        NSLog(@"Введите второе число:");
        int number2;
        scanf("%i", &number2);
        
        NSLog(@"Введите третье число:");
        int number3;
        scanf("%i", &number3);
        
        // Нахождение наибольшего числа
        int maxNumber;
        if (number1 >= number2 && number1 >= number3) {
            maxNumber = number1;
        } else if (number2 >= number1 && number2 >= number3) {
            maxNumber = number2;
        } else {
            maxNumber = number3;
        }
        
        // Вывод результата
        NSLog(@"Наибольшее число: %i", maxNumber);
    }
    return 0;
}
