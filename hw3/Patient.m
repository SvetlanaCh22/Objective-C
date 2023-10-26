#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (void)takeMedication {
    NSLog(@"Patient takes medication.");
}

- (void)doctorPrescribeMedicationToPatient {
    [self takeMedication];
}

@end