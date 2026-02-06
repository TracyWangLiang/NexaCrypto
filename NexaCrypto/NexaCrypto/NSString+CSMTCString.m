
#import "NSString+CSMTCString.h"

@implementation NSString (CSMTCString)

- (NSString *)CSMTC_removeMellowCoveSpan {
    return [self stringByReplacingOccurrencesOfString:@"CSMTCMELLOW_" withString:@""];
}

@end
