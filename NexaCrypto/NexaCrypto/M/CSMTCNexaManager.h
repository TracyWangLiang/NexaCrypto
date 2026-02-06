//
//  CSMTCNexaNetManager.h
//  NexaCrypto
//
//   
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CSMTCNexaCrypto.h"
#import "CSMTCNexaCryptoModel.h"
#import "CSMTCLoadingHUD.h"
#import "CSMTCMicaShoreModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, CSMTCQuoteSortField) {
    CSMTCQuoteSortFieldPrice,
    CSMTCQuoteSortFieldPercentChange24h,
    CSMTCQuoteSortFieldPercentChange7d,
    CSMTCQuoteSortFieldPercentChange30d,
    CSMTCQuoteSortFieldPercentChange90d
};

@interface CSMTCNexaManager : NSObject

+ (void)CSMTC_firmKnollTrailFoldHavenClimbSpan:(NSString *)CSMTC_url CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure;
/// post
+ (void)CSMTC_quietDellPathFoldRidgeBluffRise:(NSString *)CSMTC_url CSMTC_parameters:(nullable NSDictionary *)CSMTC_parameters CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure;
/// 图片
+ (void)CSMTC_gentleCoveTrailFoldKnollPathSpan:(NSString *)CSMTC_urlStr CSMTC_placeholder:(nullable UIImage *)CSMTC_placeholder completion:(void (^)(UIImage * _Nullable image))completion;
/// 加载图标
+ (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_mellowKnollFold completion:(void (^)(UIImage * _Nullable image))completion;

/// 储存
+ (void)CSMTC_steadyHollowClimbFoldRidgeTrailPath:(CSMTCCobaltGrainDataItemModel *)model;
/// 删除
+ (void)CSMTC_clearValeTrailFoldKnollBluffSpan:(CSMTCCobaltGrainDataItemModel *)model;
/// 获取
+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_softGlenPathFoldHavenClimbRise;
/// 判断是否是小数
+ (BOOL)CSMTC_brightHollowFoldTrailKnollPathBluff:(NSString *)CSMTC_gentleRidgeClimb;
/// 颜色
+ (UIColor *)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(NSString *)CSMTC_stillHollowFold;
/// 排序
+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_briskRidgeTrailFoldDellKnollSpan:(NSArray<CSMTCCobaltGrainDataItemModel *> *)models CSMTC_humbleRidgeTrail:(CSMTCQuoteSortField)sortField;

/// 时间
+ (NSString *)CSMTC_smartRidgePathFoldTrailKnollRiseBluff:(NSString *)CSMTC_keenDellFold;

@end

NS_ASSUME_NONNULL_END
