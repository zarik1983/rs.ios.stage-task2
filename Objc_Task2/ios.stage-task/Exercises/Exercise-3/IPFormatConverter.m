#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSString *outputString = @"";
    if ([numbersArray count] == 0 || numbersArray == nil || [numbersArray count] > 4) {
        return outputString;
    }
    
    for (int i=0; i<[numbersArray count]; i++) {
        if ([numbersArray[i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if ([numbersArray[i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        outputString = [outputString stringByAppendingString: [numbersArray[i] stringValue]];
        outputString = [outputString stringByAppendingString:@"."];
    }
    
    for (int i=0; i<4-[numbersArray count]; i++) {
        outputString = [outputString stringByAppendingString:@"0."];
    }
    
    outputString = [outputString substringToIndex:[outputString length]-1];
    return outputString;
    
}

@end
