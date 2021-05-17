#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {

    NSMutableString *result = @"";
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray: numbersArray];
    if ((mutArray != nil) && (mutArray.count > 0)) {
        for (NSNumber *num in numbersArray) {
            if ([num intValue] < 0) {
                return  @"Negative numbers are not valid for input.";
            }
            if ([num intValue] > 255) {
                return  @"The numbers in the input array can be in the range from 0 to 255.";
            }
        }
        
        while (mutArray.count < 4) {
            [mutArray addObject:@0];
        }
        
        result = [NSString stringWithFormat:@"%@, %@, %@, %@", mutArray[0], mutArray[1], mutArray[2], mutArray[3]];
    }
   
    return result;
}

@end


