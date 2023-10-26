#import <Foundation/Foundation.h>

@protocol DoctorDelegate;

@interface Patient : NSObject <DoctorDelegate>

- (void)takeMedication;

@end