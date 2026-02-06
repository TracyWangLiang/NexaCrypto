#import "CSMTCLoadingHUD.h"

@interface CSMTCLoadingHUD ()
@property (nonatomic, strong) UIView *CSMTC_briskHarborLoom;
@property (nonatomic, strong) CAShapeLayer *CSMTC_silentHarborGlen;
@property (nonatomic, assign) BOOL CSMTC_firmHavenCrest;

@end

@implementation CSMTCLoadingHUD

+ (instancetype)sharedHUD {
    static CSMTCLoadingHUD *CSMTC_gentleValeBridge = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIWindow *CSMTC_quickRidgeHollow = [self CSMTC_steadyHollowClimbFoldRidgeTrailPath];
        CSMTC_gentleValeBridge = [[CSMTCLoadingHUD alloc] initWithFrame:CSMTC_quickRidgeHollow.bounds];
    });
    return CSMTC_gentleValeBridge;
}


+ (void)CSMTC_mellowHavenFoldTrailClimbPathRise {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud removeFromSuperview];
        CSMTC_hud.CSMTC_firmHavenCrest = YES;
        [CSMTC_hud CSMTC_firmKnollTrailFoldHavenClimbSpan];
        [[self CSMTC_steadyHollowClimbFoldRidgeTrailPath] addSubview:CSMTC_hud];
    });
}

+ (void)CSMTC_fairKnollFoldTrailCovePathSpan:(NSString *)text {
    [self CSMTC_fairKnollFoldTrailCovePathSpan:text CSMTC_duration:1.5];
}

+ (void)CSMTC_fairKnollFoldTrailCovePathSpan:(NSString *)text CSMTC_duration:(double)CSMTC_duration {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud removeFromSuperview];
        CSMTC_hud.CSMTC_firmHavenCrest = NO;
        [CSMTC_hud CSMTC_quietDellPathFoldRidgeBluffRise:text];
        [[self CSMTC_steadyHollowClimbFoldRidgeTrailPath] addSubview:CSMTC_hud];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(CSMTC_duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [CSMTC_hud removeFromSuperview];
        });
    });
}

+ (void)CSMTC_plainDellTrailFoldRidgeClimbRise {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud.CSMTC_silentHarborGlen removeAllAnimations];
        [CSMTC_hud removeFromSuperview];
    });
}

- (void)CSMTC_firmKnollTrailFoldHavenClimbSpan {
    [self CSMTC_gentleCoveTrailFoldKnollPathSpan];
    
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    
    CGFloat CSMTC_freshHollowClimb = 100;
    self.CSMTC_briskHarborLoom.frame = CGRectMake(0, 0, CSMTC_freshHollowClimb, CSMTC_freshHollowClimb);
    self.CSMTC_briskHarborLoom.center = self.center;
    self.CSMTC_briskHarborLoom.layer.cornerRadius = 15;
    self.CSMTC_briskHarborLoom.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    
    CGFloat CSMTC_brightDellPath = 20;
    CGFloat CSMTC_calmKnollShore = 4.0;
    CGFloat CSMTC_steadyCoveRise = 0;
    CGFloat CSMTC_softCrestLane = M_PI * 1.5;

    CGFloat CSMTC_clearGlenFold = CSMTC_freshHollowClimb / 2;
    CGFloat CSMTC_mistyDellSpan = CSMTC_freshHollowClimb / 2;
    CGPoint CSMTC_sharpKnollTrace = CGPointMake(CSMTC_clearGlenFold, CSMTC_mistyDellSpan);
    
    UIBezierPath *CSMTC_vastValePoint = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CSMTC_brightDellPath, CSMTC_brightDellPath)
                                                        radius:CSMTC_brightDellPath
                                                    startAngle:CSMTC_steadyCoveRise
                                                      endAngle:CSMTC_softCrestLane
                                                     clockwise:YES];
    
    self.CSMTC_silentHarborGlen = [CAShapeLayer layer];
    self.CSMTC_silentHarborGlen.path = CSMTC_vastValePoint.CGPath;
    self.CSMTC_silentHarborGlen.strokeColor = UIColor.whiteColor.CGColor;
    self.CSMTC_silentHarborGlen.fillColor = UIColor.clearColor.CGColor;
    self.CSMTC_silentHarborGlen.lineWidth = CSMTC_calmKnollShore;
    self.CSMTC_silentHarborGlen.lineCap = kCALineCapRound;
    
    self.CSMTC_silentHarborGlen.frame = CGRectMake(CSMTC_sharpKnollTrace.x - CSMTC_brightDellPath,
                                         CSMTC_sharpKnollTrace.y - CSMTC_brightDellPath,
                                         CSMTC_brightDellPath * 2,
                                         CSMTC_brightDellPath * 2);
    
    [self.CSMTC_briskHarborLoom.layer addSublayer:self.CSMTC_silentHarborGlen];

    CABasicAnimation *CSMTC_plainHollowPeak = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    CSMTC_plainHollowPeak.fromValue = @(0);
    CSMTC_plainHollowPeak.toValue = @(2 * M_PI);
    CSMTC_plainHollowPeak.duration = 1.0;
    CSMTC_plainHollowPeak.repeatCount = HUGE_VALF;
    [self.CSMTC_silentHarborGlen addAnimation:CSMTC_plainHollowPeak forKey:@"rotate"];
    
}

- (void)CSMTC_quietDellPathFoldRidgeBluffRise:(NSString *)text {
    [self CSMTC_gentleCoveTrailFoldKnollPathSpan];
    
    self.backgroundColor = [UIColor clearColor];
    
    CGFloat CSMTC_wideRidgeTrail = 120;
    
    UILabel *CSMTC_mellowCoveBluff = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, CSMTC_wideRidgeTrail - 10, 0)];
    CSMTC_mellowCoveBluff.text = text;
    CSMTC_mellowCoveBluff.textColor = [UIColor whiteColor];
    CSMTC_mellowCoveBluff.font = [UIFont systemFontOfSize:14];
    CSMTC_mellowCoveBluff.numberOfLines = 0;
    CSMTC_mellowCoveBluff.textAlignment = NSTextAlignmentCenter;
    [CSMTC_mellowCoveBluff sizeToFit];
    
    CGFloat CSMTC_humbleKnollRise = MAX(CSMTC_mellowCoveBluff.frame.size.height + 10, 45);
    self.CSMTC_briskHarborLoom.frame = CGRectMake(0, 0, CSMTC_wideRidgeTrail, CSMTC_humbleKnollRise);
    self.CSMTC_briskHarborLoom.center = self.center;
    
    CSMTC_mellowCoveBluff.frame = CGRectMake(5, 5, CSMTC_wideRidgeTrail - 10, CSMTC_humbleKnollRise - 10);
    [self.CSMTC_briskHarborLoom addSubview:CSMTC_mellowCoveBluff];
    
    self.CSMTC_briskHarborLoom.layer.cornerRadius = 8;
    self.CSMTC_briskHarborLoom.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.15];
    
}

- (void)CSMTC_gentleCoveTrailFoldKnollPathSpan {
    [self.CSMTC_silentHarborGlen removeAllAnimations];
    [self.CSMTC_silentHarborGlen removeFromSuperlayer];
    self.CSMTC_silentHarborGlen = nil;
    
    [self.CSMTC_briskHarborLoom removeFromSuperview];
    self.CSMTC_briskHarborLoom = [[UIView alloc] init];
    [self addSubview:self.CSMTC_briskHarborLoom];
}

+ (UIWindow *)CSMTC_steadyHollowClimbFoldRidgeTrailPath {
    UIWindow *CSMTC_fairRidgeTrail = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *CSMTC_keenDellFold in UIApplication.sharedApplication.connectedScenes) {
            if (CSMTC_keenDellFold.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *CSMTC_tameValeTrack in CSMTC_keenDellFold.windows) {
                    if (CSMTC_tameValeTrack.isKeyWindow) {
                        CSMTC_fairRidgeTrail = CSMTC_tameValeTrack;
                        break;
                    }
                }
            }
            if (CSMTC_fairRidgeTrail) break;
        }
    } else {
        CSMTC_fairRidgeTrail = [UIApplication sharedApplication].keyWindow;
    }
    return CSMTC_fairRidgeTrail;
}

@end
