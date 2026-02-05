#import <UIKit/UIKit.h>

@interface CSMTCLoadingHUD : UIView

/// 显示自定义加载圈HUD，可手动取消
+ (void)CSMTC_showLoading;
/// 显示纯文字提示，1.5秒自动消失
+ (void)CSMTC_showText:(NSString *)text;
/// 显示纯文字提示
+ (void)CSMTC_showText:(NSString *)text CSMTC_duration:(double)CSMTC_duration;
/// 手动隐藏HUD
+ (void)CSMTC_dismiss;



@end
