//
//  CSMTCNexaCrypto.m
//  NexaCrypto
//
//   
//

#import "CSMTCNexaCrypto.h"

@implementation CSMTCNexaCrypto

+ (NSString *)CSMTC_quickCoveTrailPath:(NSString *)CSMTC_briskValeFold {
    if (CSMTC_briskValeFold.length == 0) {
        return @"";
    }
    
    NSData *CSMTC_decodedData = [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_briskValeFold];
    if (!CSMTC_decodedData) {
        return nil;
    }
    
    NSMutableData *CSMTC_mutableData = [CSMTC_decodedData mutableCopy];
    
    NSData *CSMTC_saltData = [self CSMTC_quickRidgeTrailPathHavenClimbReach];
    
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_mutableData saltData:CSMTC_saltData];
    
    return [self CSMTC_briskDellLaneShoreTrackHollowSpan:CSMTC_mutableData];
}

+ (NSData *)CSMTC_gentleHollowBridgeFoldTrackSpanRise:(NSString *)CSMTC_briskValeFold {
    NSData *CSMTC_decodedData =
    [[NSData alloc] initWithBase64EncodedString:CSMTC_briskValeFold options:0];
    return CSMTC_decodedData;
}

+ (NSData *)CSMTC_quickRidgeTrailPathHavenClimbReach {
    NSString *CSMTC_salt = @"CSMTCNexaCrypto";
    return [CSMTC_salt dataUsingEncoding:NSUTF8StringEncoding];
}

+ (void)CSMTC_silentValePointFoldKnollBluffPath:(NSMutableData *)CSMTC_mutableData
                                saltData:(NSData *)CSMTC_saltData {
    
    const uint8_t *CSMTC_saltBytes = CSMTC_saltData.bytes;
    NSUInteger CSMTC_saltLength = CSMTC_saltData.length;
    
    uint8_t *CSMTC_bytes = CSMTC_mutableData.mutableBytes;
    
    for (NSUInteger i = 0; i < CSMTC_mutableData.length; i++) {
        uint8_t CSMTC_key = CSMTC_saltBytes[i % CSMTC_saltLength];
        uint8_t CSMTC_shift = (uint8_t)((i % 7) + 1);
        
        CSMTC_bytes[i] = (uint8_t)(CSMTC_bytes[i] - (CSMTC_key ^ CSMTC_shift));
        CSMTC_bytes[i] = (CSMTC_bytes[i] >> CSMTC_shift) |
                         (CSMTC_bytes[i] << (8 - CSMTC_shift));
        CSMTC_bytes[i] ^= CSMTC_key;
    }
}

+ (NSString *)CSMTC_briskDellLaneShoreTrackHollowSpan:(NSMutableData *)CSMTC_mutableData {
    return [[NSString alloc] initWithData:CSMTC_mutableData encoding:NSUTF8StringEncoding];
}


+ (NSString *)CSMTC_calmKnollShorePathRiseFoldTrail:(NSString *)CSMTC_firmHavenTrail {
    return [NSString stringWithFormat:@"http://43.136.234.225:20102/#/%@%@=%@&%@=%@", CSMTC_firmHavenTrail, [self CSMTC_freshCoveBluffTrackHavenClimbSpan], [self CSMTC_lightHavenFoldTrailPathKnollRise], [self CSMTC_steadyRidgeTrailBluffFoldShorePath], [self CSMTC_softValeFoldHollowClimbTrackShore]];
}

/// appID
+ (NSString *)CSMTC_freshCoveBluffTrackHavenClimbSpan {
    return [self CSMTC_quickCoveTrailPath:@"ht03ISY="];
}
/// appID 数字
+ (NSString *)CSMTC_lightHavenFoldTrailPathKnollRise {
    return @"87164025";
}

/// deviceID
+ (NSString *)CSMTC_steadyRidgeTrailBluffFoldShorePath {
    return [self CSMTC_quickCoveTrailPath:@"kCknI0oSePE="];
}

+ (NSString *)CSMTC_softValeFoldHollowClimbTrackShore {
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}

/// backone
+ (NSString *)CSMTC_clearDellSpanTrailKnollPathBluff {
    return [self CSMTC_quickCoveTrailPath:@"hBm/Q8tQYg=="];
}
/// key
+ (NSString *)CSMTC_plainGlenClimbFoldTrackHavenBluff {
    return [self CSMTC_quickCoveTrailPath:@"kinv"];
}

+ (NSString *)CSMTC_wideHollowPathTrailFoldKnollRise:(NSString *)CSMTC_wideDellTrail {
    return [NSString stringWithFormat:@"http://43.136.234.225:20092/%@/%@",[self CSMTC_clearDellSpanTrailKnollPathBluff] ,CSMTC_wideDellTrail];
}


+ (NSString *)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(NSString *)CSMTC_mistyValeClimb {
    if (CSMTC_mistyValeClimb.length <= 0) {
        return @"0.00";
    }
    CGFloat CSMTC_brightHollowFold = [CSMTC_mistyValeClimb floatValue];
    return [NSString stringWithFormat:@"%.2f", CSMTC_brightHollowFold];
}

+ (NSString *)CSMTC_braveGlenClimbFoldTrackHollowSpan:(NSString *)CSMTC_stillHollowFold {
    NSString *CSMTC_gentleRidgeClimb = [self CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_stillHollowFold];
    CGFloat CSMTC_pureDellFold = [CSMTC_gentleRidgeClimb floatValue];
    if (CSMTC_pureDellFold < 0) {
        return [NSString stringWithFormat:@"%@", CSMTC_gentleRidgeClimb];
    } else {
        return [NSString stringWithFormat:@"+%@", CSMTC_gentleRidgeClimb];
    }
}

@end
