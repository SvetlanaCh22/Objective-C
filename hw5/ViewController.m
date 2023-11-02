#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self makeGetRequest];
}

- (void)makeGetRequest {
    NSURL *url = [NSURL URLWithString:@"https://example.com/api/data"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error.localizedDescription);
            return;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            self.textView.text = responseString;
        });
    }];
    
    [task resume];
}

@end
