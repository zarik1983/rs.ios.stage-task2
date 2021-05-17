#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger count = 0;
    for (int i=0; i<[array count]-1; i++) {
        for (int j=1; j<[array count]; j++) {
            if ([array[j] intValue] - [array[i] intValue] == [number intValue]) {
                count++;
            }
        }
    }
    return count;
}

@end
