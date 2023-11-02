#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Создание экземпляров ViewController и SecondViewController
    ViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    // Создание UINavigationController для навигации между экранами
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    // Назначение SecondViewController вторым экраном в стеке навигации
    [navigationController pushViewController:secondViewController animated:NO];
    
    // Назначение UINavigationController корневым контроллером
    self.window.rootViewController = navigationController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end