//
//  CSMTCNexaNetManager.h
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
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
/// get
+ (void)getRequestWithURL:(NSString *)CSMTC_url CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure;
/// post
+ (void)postRequestWithURL:(NSString *)CSMTC_url CSMTC_parameters:(nullable NSDictionary *)CSMTC_parameters CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure;
/// 图片
+ (void)loadImageWithURL:(NSString *)CSMTC_urlStr CSMTC_placeholder:(nullable UIImage *)CSMTC_placeholder completion:(void (^)(UIImage * _Nullable image))completion;
/// 加载图标
+ (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_mellowKnollFold completion:(void (^)(UIImage * _Nullable image))completion;

/// 储存
+ (void)CSMTC_saveGrainDataModel:(CSMTCCobaltGrainDataItemModel *)model;
/// 删除
+ (void)CSMTC_deleteGrainDataModel:(CSMTCCobaltGrainDataItemModel *)model;
/// 获取
+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_loadAllGrainDataModels;
/// 判断是否是小数
+ (BOOL)CSMTC_brightHollowFoldTrailKnollPathBluff:(NSString *)CSMTC_gentleRidgeClimb;
/// 颜色
+ (UIColor *)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(NSString *)CSMTC_stillHollowFold;
/// 排序
+ (NSArray<CSMTCCobaltGrainDataItemModel *> *) CSMTC_sortDataModels:(NSArray<CSMTCCobaltGrainDataItemModel *> *)models
                                                       byQuoteField:(CSMTCQuoteSortField)sortField;
/// 时间
+ (NSString *)CSMTC_smartRidgePathFoldTrailKnollRiseBluff:(NSString *)CSMTC_keenDellFold;

@end

NS_ASSUME_NONNULL_END
