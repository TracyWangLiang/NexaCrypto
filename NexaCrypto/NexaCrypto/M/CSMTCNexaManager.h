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
#import "NSString+CSMTCString.h"

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

+ (void)CSMTC_quietDellPathFoldRidgeBluffRise:(NSString *)CSMTC_url CSMTC_parameters:(nullable NSDictionary *)CSMTC_parameters CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure;

+ (void)CSMTC_gentleCoveTrailFoldKnollPathSpan:(NSString *)CSMTC_urlStr CSMTC_placeholder:(nullable UIImage *)CSMTC_placeholder completion:(void (^)(UIImage * _Nullable image))completion;

+ (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_mellowKnollFold completion:(void (^)(UIImage * _Nullable image))completion;

+ (void)CSMTC_steadyHollowClimbFoldRidgeTrailPath:(CSMTCCobaltGrainDataItemModel *)model;

+ (void)CSMTC_clearValeTrailFoldKnollBluffSpan:(CSMTCCobaltGrainDataItemModel *)model;

+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_softGlenPathFoldHavenClimbRise;

+ (BOOL)CSMTC_brightHollowFoldTrailKnollPathBluff:(NSString *)CSMTC_gentleRidgeClimb;

+ (UIColor *)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(NSString *)CSMTC_stillHollowFold;

+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_briskRidgeTrailFoldDellKnollSpan:(NSArray<CSMTCCobaltGrainDataItemModel *> *)models CSMTC_humbleRidgeTrail:(CSMTCQuoteSortField)sortField;

+ (NSString *)CSMTC_smartRidgePathFoldTrailKnollRiseBluff:(NSString *)CSMTC_keenDellFold;

@end

NS_ASSUME_NONNULL_END
