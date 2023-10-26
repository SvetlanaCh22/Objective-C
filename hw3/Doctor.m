#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedication {
    if ([self.delegate respondsToSelector:@selector(doctorPrescribeMedicationToPatient)]) {
        [self.delegate doctorPrescribeMedicationToPatient];
    }
}

@end