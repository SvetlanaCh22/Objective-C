#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;
@property (copy, nonatomic) NSString *name;

- (instancetype)initWithX:(NSInteger)x y:(NSInteger)y name:(NSString *)name;

@end