#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSInteger res = 0;
    
    for (NSInteger i = 0; i < 8; ++i) {
        res = (res << 1) + (n >> i & 1);
    }
    return res;
}
