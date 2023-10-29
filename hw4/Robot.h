#import <Foundation/Foundation.h>

typedef NSString * (^MoveBlock)(void);

@interface Robot : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (void)run:(MoveBlock)moveBlock;

@end