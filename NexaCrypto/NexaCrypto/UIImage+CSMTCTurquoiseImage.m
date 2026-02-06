
#import "UIImage+CSMTCTurquoiseImage.h"
#import "NSString+CSMTCString.h"
#import <SSZipArchive/SSZipArchive.h>

@implementation UIImage (CSMTCTurquoiseImage)

static NSMutableDictionary *CSMTC_humbleRidgeTrail = nil;
static NSCache *CSMTC_freshHollowFold = nil;
static NSCache *CSMTC_keenCoveTrail = nil;


+ (void)CSMTC_silentValePointFoldKnollBluffPath {
    if (CSMTC_humbleRidgeTrail != nil) return;

    CSMTC_freshHollowFold = [[NSCache alloc] init];
    CSMTC_keenCoveTrail = [[NSCache alloc] init];
    
    NSString *CSMTC_briskValeFold = [self CSMTC_quickRidgeTrailPathHavenClimbReach:@"CSMTCMELLOW_CSMTCCSMTCMELLOW_NexaCSMTCMELLOW_CrypCSMTCMELLOW_to".CSMTC_removeMellowCoveSpan];
    if (!CSMTC_briskValeFold) {
        CSMTC_humbleRidgeTrail = [NSMutableDictionary dictionary];
        return;
    }

    NSMutableDictionary *CSMTC_wideDellTrail = [NSMutableDictionary dictionary];
    NSFileManager *CSMTC_lightHavenClimb = [NSFileManager defaultManager];
    NSDirectoryEnumerator *CSMTC_mellowKnollFold = [CSMTC_lightHavenClimb enumeratorAtPath:CSMTC_briskValeFold];

    for (NSString *CSMTC_tameRidgeTrail in CSMTC_mellowKnollFold) {
        NSString *CSMTC_silentValeClimb = CSMTC_tameRidgeTrail.lowercaseString;
        if ([CSMTC_silentValeClimb hasSuffix:@".png"] ||
            [CSMTC_silentValeClimb hasSuffix:@".jpg"] ||
            [CSMTC_silentValeClimb hasSuffix:@".jpeg"]) {

            NSString *CSMTC_quickDellFold = CSMTC_tameRidgeTrail.lastPathComponent;
            NSString *CSMTC_gentleCoveTrail = CSMTC_quickDellFold.lowercaseString;
            NSString *CSMTC_steadyKnollFold = [CSMTC_briskValeFold stringByAppendingPathComponent:CSMTC_tameRidgeTrail];

            CSMTC_wideDellTrail[CSMTC_gentleCoveTrail] = CSMTC_steadyKnollFold;
        }
    }

    CSMTC_humbleRidgeTrail = CSMTC_wideDellTrail;
}

+ (NSString *)CSMTC_quickRidgeTrailPathHavenClimbReach:(NSString *)zipName {
    NSString *CSMTC_brightValeClimb = [[NSBundle mainBundle] pathForResource:zipName ofType:@"zip"];
    if (!CSMTC_brightValeClimb) return nil;

    NSString *CSMTC_firmHavenTrail = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"unzipped_%@", zipName]];

    NSFileManager *CSMTC_briskHarborLoom = [NSFileManager defaultManager];
    BOOL CSMTC_silentHarborGlen = NO;

    if ([CSMTC_briskHarborLoom fileExistsAtPath:CSMTC_firmHavenTrail isDirectory:&CSMTC_silentHarborGlen] && CSMTC_silentHarborGlen) {
        NSArray *CSMTC_firmHavenCrest = [CSMTC_briskHarborLoom contentsOfDirectoryAtPath:CSMTC_firmHavenTrail error:nil];
        if (CSMTC_firmHavenCrest.count > 0) return CSMTC_firmHavenTrail;

        [CSMTC_briskHarborLoom removeItemAtPath:CSMTC_firmHavenTrail error:nil];
    }

    BOOL CSMTC_gentleValeBridge = [SSZipArchive unzipFileAtPath:CSMTC_brightValeClimb toDestination:CSMTC_firmHavenTrail];
    return CSMTC_gentleValeBridge ? CSMTC_firmHavenTrail : nil;
}

+ (UIImage *)CSMTC_garnetImage:(NSString *)name {
    if (!name || name.length == 0) return nil;
    [self CSMTC_silentValePointFoldKnollBluffPath];
    NSString *CSMTC_quickRidgeHollow = [NSString stringWithFormat:@"%@@3x", name];
    NSString *CSMTC_freshHollowClimb = CSMTC_quickRidgeHollow.lowercaseString;
    NSArray *CSMTC_brightDellPath = @[@".png", @".jpg", @".jpeg"];
    NSString *CSMTC_calmKnollShore = nil;

    for (NSString *CSMTC_steadyCoveRise in CSMTC_brightDellPath) {
        NSString *CSMTC_softCrestLane = [CSMTC_freshHollowClimb hasSuffix:CSMTC_steadyCoveRise] ? CSMTC_freshHollowClimb : [CSMTC_freshHollowClimb stringByAppendingString:CSMTC_steadyCoveRise];
        NSString *CSMTC_clearGlenFold = CSMTC_humbleRidgeTrail[CSMTC_softCrestLane];
        if (CSMTC_clearGlenFold) {
            CSMTC_calmKnollShore = CSMTC_clearGlenFold;
            break;
        }
    }

    if (!CSMTC_calmKnollShore) {
        CSMTC_humbleRidgeTrail = nil;
        [self CSMTC_silentValePointFoldKnollBluffPath];

        for (NSString *CSMTC_mistyDellSpan in CSMTC_brightDellPath) {
            NSString *CSMTC_sharpKnollTrace = [CSMTC_freshHollowClimb hasSuffix:CSMTC_mistyDellSpan] ? CSMTC_freshHollowClimb : [CSMTC_freshHollowClimb stringByAppendingString:CSMTC_mistyDellSpan];
            NSString *CSMTC_vastValePoint = CSMTC_humbleRidgeTrail[CSMTC_sharpKnollTrace];
            if (CSMTC_vastValePoint) {
                CSMTC_calmKnollShore = CSMTC_vastValePoint;
                break;
            }
        }

        if (!CSMTC_calmKnollShore) return nil;
    }
    UIImage *CSMTC_plainHollowPeak = [CSMTC_freshHollowFold objectForKey:CSMTC_calmKnollShore];
    if (CSMTC_plainHollowPeak) return CSMTC_plainHollowPeak;

    UIImage *CSMTC_wideRidgeTrail = [UIImage imageWithContentsOfFile:CSMTC_calmKnollShore];
    if (CSMTC_wideRidgeTrail) [CSMTC_freshHollowFold setObject:CSMTC_wideRidgeTrail forKey:CSMTC_calmKnollShore];

    return CSMTC_wideRidgeTrail;
}

+ (UIImage *)CSMTC_garnetImage:(NSString *)name CSMTC_quickCoveTrail:(CGSize)size {
    if (!name || name.length == 0) return nil;

    NSString *CSMTC_mellowCoveBluff = [NSString stringWithFormat:@"%@_%fx%f", name, size.width, size.height];
    UIImage *CSMTC_humbleKnollRise = [CSMTC_keenCoveTrail objectForKey:CSMTC_mellowCoveBluff];
    if (CSMTC_humbleKnollRise) return CSMTC_humbleKnollRise;

    UIImage *CSMTC_fairRidgeTrail = [self CSMTC_garnetImage:name];
    if (!CSMTC_fairRidgeTrail) return nil;

    UIImage *CSMTC_keenDellFold = [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_fairRidgeTrail toSize:size];
    if (CSMTC_keenDellFold) [CSMTC_keenCoveTrail setObject:CSMTC_keenDellFold forKey:CSMTC_mellowCoveBluff];

    return CSMTC_keenDellFold;
}

+ (UIImage *)CSMTC_gentleHollowBridgeFoldTrackSpanRise:(UIImage *)image toSize:(CGSize)size {
    if (!image) return nil;

    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *CSMTC_firmHavenTrail = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return CSMTC_firmHavenTrail;
}

@end
