#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *numbers = [NSMutableArray array];
    NSMutableArray *strings = [NSMutableArray array];
    
    if ([array count] < 2) {
        NSString *className = NSStringFromClass([array[0][0] class]);
        for (int i=1; i<[array[0] count]; i++) {
            BOOL flag = (![className isEqual: NSStringFromClass([array[0][i] class])]);
            if (flag) {
                return @[];
            }
        }
    }
    
    for (int i=0; i<[array count]; i++) {
        for (int j=0; j<[array[i] count]; j++) {
            if ([NSStringFromClass([array[i][j] class])  isEqual: @"__NSCFNumber"]) {
                [numbers addObject: array[i][j]];
            } else {
                [strings addObject: array[i][j]];
            }
        }
    }
    numbers = [NSMutableArray arrayWithArray:[numbers sortedArrayUsingSelector:@selector(compare:)]];
        
    return numbers;
    
    
    
    
    //return @[];
}

@end
