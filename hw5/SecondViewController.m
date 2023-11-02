#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (IBAction)sendButtonTapped:(id)sender {
    NSString *login = self.loginTextField.text;
    NSString *password = self.passwordTextField.text;

    NSURL *url = [NSURL URLWithString:@"https://example.com/api/login"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    NSString *postData = [NSString stringWithFormat:@"login=%@&password=%@", login, password];
    request.HTTPBody = [postData dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error.localizedDescription);
            return;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // Обработка ответа от сервера после POST-запроса
        });
    }];
    
    [task resume];
}

@end