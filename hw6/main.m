#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание объекта робота
        Robot *robot = [[Robot alloc] initWithX:10 y:20 name:@"Robot1"];

        // Сохранение объекта робота в UserDefaults
        NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:robotData forKey:@"SavedRobot"];
        [defaults synchronize];

        // Загрузка объекта робота из UserDefaults и вывод в консоль
        NSData *savedRobotData = [defaults objectForKey:@"SavedRobot"];
        Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
        NSLog(@"Name: %@, Coordinates: (%ld, %ld)", savedRobot.name, (long)savedRobot.x, (long)savedRobot.y);

        // Сохранение информации о роботе в файл
        NSString *fileName = savedRobot.name;
        NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:fileName];
        [savedRobotData writeToFile:filePath atomically:YES];

        // Чтение содержимого файла и вывод в консоль
        NSData *fileData = [NSData dataWithContentsOfFile:filePath];
        NSString *fileContent = [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
        NSLog(@"%@", fileContent);
    }
    return 0;
}