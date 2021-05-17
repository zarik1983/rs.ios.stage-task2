#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSString *stringStraightBin = @"";
    NSString *tempString = @"";
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger x = n;
    
    while (x>0) {
        stringStraightBin = [[NSString stringWithFormat:@"%lu", x&1] stringByAppendingString:stringStraightBin];
        x = x>>1;
    }
    for (int i=0; i<8-[stringStraightBin length]; i++) {
        tempString = [tempString stringByAppendingString:@"0"];
    }
    stringStraightBin = [tempString stringByAppendingString:stringStraightBin];
    NSInteger charIndex = [stringStraightBin length];
    while (charIndex>0) {
        charIndex--;
        NSRange subRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[stringStraightBin substringWithRange:subRange]];
    }
    
    return strtol([reversedString UTF8String], NULL, 2);
}
