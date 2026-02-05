#import "CSMTCLoadingHUD.h"

@interface CSMTCLoadingHUD ()
@property (nonatomic, strong) UIView *CSMTC_container;
@property (nonatomic, strong) CAShapeLayer *CSMTC_loadingLayer;
@property (nonatomic, assign) BOOL CSMTC_cancelable;

@end

@implementation CSMTCLoadingHUD

+ (instancetype)sharedHUD {
    static CSMTCLoadingHUD *CSMTC_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIWindow *CSMTC_window = [self CSMTC_currentWindow];
        CSMTC_sharedInstance = [[CSMTCLoadingHUD alloc] initWithFrame:CSMTC_window.bounds];
    });
    return CSMTC_sharedInstance;
}

#pragma mark - Public

+ (void)CSMTC_showLoading {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud removeFromSuperview];
        CSMTC_hud.CSMTC_cancelable = YES;
        [CSMTC_hud CSMTC_setupLoading];
        [[self CSMTC_currentWindow] addSubview:CSMTC_hud];
    });
}

+ (void)CSMTC_showText:(NSString *)text {
    [self CSMTC_showText:text CSMTC_duration:1.5];
}

+ (void)CSMTC_showText:(NSString *)text CSMTC_duration:(double)CSMTC_duration {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud removeFromSuperview];
        CSMTC_hud.CSMTC_cancelable = NO;
        [CSMTC_hud CSMTC_setupText:text];
        [[self CSMTC_currentWindow] addSubview:CSMTC_hud];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(CSMTC_duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [CSMTC_hud removeFromSuperview];
        });
    });
}



+ (void)CSMTC_dismiss {
    dispatch_async(dispatch_get_main_queue(), ^{
        CSMTCLoadingHUD *CSMTC_hud = [CSMTCLoadingHUD sharedHUD];
        [CSMTC_hud.CSMTC_loadingLayer removeAllAnimations];
        [CSMTC_hud removeFromSuperview];
    });
}

#pragma mark - Setup Loading
- (void)CSMTC_setupLoading {
    [self CSMTC_resetContainer];
    
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    
    CGFloat containerSize = 100;
    self.CSMTC_container.frame = CGRectMake(0, 0, containerSize, containerSize);
    self.CSMTC_container.center = self.center;
    self.CSMTC_container.layer.cornerRadius = 15;
    self.CSMTC_container.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    
    // 圆圈缺口
    CGFloat CSMTC_radius = 20; // 圆圈半径
    CGFloat CSMTC_lineWidth = 4.0;
    CGFloat CSMTC_startAngle = 0;
    CGFloat CSMTC_endAngle = M_PI * 1.5; // 3/4 圆
    
    // loadingLayer 不在 container 中心，而在偏移点
    CGFloat CSMTC_offsetX = containerSize / 2; // 偏移中心X
    CGFloat CSMTC_offsetY = containerSize / 2;      // 偏移中心Y
    CGPoint CSMTC_circleCenter = CGPointMake(CSMTC_offsetX, CSMTC_offsetY);
    
    UIBezierPath *CSMTC_path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CSMTC_radius, CSMTC_radius)
                                                        radius:CSMTC_radius
                                                    startAngle:CSMTC_startAngle
                                                      endAngle:CSMTC_endAngle
                                                     clockwise:YES];
    
    self.CSMTC_loadingLayer = [CAShapeLayer layer];
    self.CSMTC_loadingLayer.path = CSMTC_path.CGPath;
    self.CSMTC_loadingLayer.strokeColor = UIColor.whiteColor.CGColor;
    self.CSMTC_loadingLayer.fillColor = UIColor.clearColor.CGColor;
    self.CSMTC_loadingLayer.lineWidth = CSMTC_lineWidth;
    self.CSMTC_loadingLayer.lineCap = kCALineCapRound;
    
    // 把 loadingLayer 放到 container 上
    self.CSMTC_loadingLayer.frame = CGRectMake(CSMTC_circleCenter.x - CSMTC_radius,
                                         CSMTC_circleCenter.y - CSMTC_radius,
                                         CSMTC_radius * 2,
                                         CSMTC_radius * 2);
    
    [self.CSMTC_container.layer addSublayer:self.CSMTC_loadingLayer];
    
    // 绕自己中心旋转（circleCenter 就是旋转中心）
    CABasicAnimation *CSMTC_rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    CSMTC_rotation.fromValue = @(0);
    CSMTC_rotation.toValue = @(2 * M_PI);
    CSMTC_rotation.duration = 1.0;
    CSMTC_rotation.repeatCount = HUGE_VALF;
    [self.CSMTC_loadingLayer addAnimation:CSMTC_rotation forKey:@"rotate"];
    
}
#pragma mark - Setup Text

- (void)CSMTC_setupText:(NSString *)text {
    [self CSMTC_resetContainer];
    
    self.backgroundColor = [UIColor clearColor];
    
    CGFloat CSMTC_width = 120;
    
    UILabel *CSMTC_label = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, CSMTC_width - 10, 0)];
    CSMTC_label.text = text;
    CSMTC_label.textColor = [UIColor whiteColor];
    CSMTC_label.font = [UIFont systemFontOfSize:14];
    CSMTC_label.numberOfLines = 0;
    CSMTC_label.textAlignment = NSTextAlignmentCenter;
    [CSMTC_label sizeToFit];
    
    CGFloat CSMTC_height = MAX(CSMTC_label.frame.size.height + 10, 45);
    self.CSMTC_container.frame = CGRectMake(0, 0, CSMTC_width, CSMTC_height);
    self.CSMTC_container.center = self.center;
    
    CSMTC_label.frame = CGRectMake(5, 5, CSMTC_width - 10, CSMTC_height - 10);
    [self.CSMTC_container addSubview:CSMTC_label];
    
    self.CSMTC_container.layer.cornerRadius = 8;
    self.CSMTC_container.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.15];
    
}

#pragma mark - Helpers

- (void)CSMTC_resetContainer {
    [self.CSMTC_loadingLayer removeAllAnimations];
    [self.CSMTC_loadingLayer removeFromSuperlayer];
    self.CSMTC_loadingLayer = nil;
    
    [self.CSMTC_container removeFromSuperview];
    self.CSMTC_container = [[UIView alloc] init];
    [self addSubview:self.CSMTC_container];
}

+ (UIWindow *)CSMTC_currentWindow {
    UIWindow *CSMTC_window = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *CSMTC_scene in UIApplication.sharedApplication.connectedScenes) {
            if (CSMTC_scene.activationState == UISceneActivationStateForegroundActive) {
                for (UIWindow *CSMTC_win in CSMTC_scene.windows) {
                    if (CSMTC_win.isKeyWindow) {
                        CSMTC_window = CSMTC_win;
                        break;
                    }
                }
            }
            if (CSMTC_window) break;
        }
    } else {
        CSMTC_window = [UIApplication sharedApplication].keyWindow;
    }
    return CSMTC_window;
}

@end
