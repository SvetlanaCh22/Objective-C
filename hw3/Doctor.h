#import <Foundation/Foundation.h>

@protocol DoctorDelegate <NSObject>

- (void)doctorPrescribeMedicationToPatient;

@end

@interface Doctor : NSObject

@property (nonatomic, weak) id<DoctorDelegate> delegate;

- (void)prescribeMedication;

@end