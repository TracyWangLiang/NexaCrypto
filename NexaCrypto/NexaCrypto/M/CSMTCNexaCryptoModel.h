//
//  CSMTCNexaCryptoModel.h
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CSMTCNexaCryptoModel : NSObject

@end

@interface CSMTCTourmalineModel : NSObject

@property (nonatomic, copy) NSString *CSMTC_firmHavenTrail;
@property (nonatomic, copy) NSArray *CSMTC_brightValeClimb;
@property (nonatomic, assign) NSInteger CSMTC_gentleCoveTrail;

@end

@interface CSMTCCobaltGrainItemModel : NSObject

@property (nonatomic, copy) NSString *CSMTC_name;
@property (nonatomic, copy) NSString *CSMTC_price;
@property (nonatomic, copy) NSString *CSMTC_volume24h;
@property (nonatomic, copy) NSString *CSMTC_volume7d;
@property (nonatomic, copy) NSString *CSMTC_marketCap;
@property (nonatomic, copy) NSString *CSMTC_percentChange1h;
@property (nonatomic, copy) NSString *CSMTC_percentChange24h;
@property (nonatomic, copy) NSString *CSMTC_percentChange7d;
@property (nonatomic, copy) NSString *CSMTC_percentChange30d;
@property (nonatomic, copy) NSString *CSMTC_percentChange60d;
@property (nonatomic, copy) NSString *CSMTC_percentChange90d;
@property (nonatomic, copy) NSString *CSMTC_lastUpdated;

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)CSMTC_toDictionary;

@end

@interface CSMTCCobaltGrainDataItemModel : NSObject

@property (nonatomic, copy) NSString *CSMTC_id;
@property (nonatomic, copy) NSString *CSMTC_name;
@property (nonatomic, copy) NSString *CSMTC_symbol;
@property (nonatomic, copy) NSString *CSMTC_slug;
@property (nonatomic, copy) NSString *CSMTC_marketPairCount;
@property (nonatomic, strong) NSArray *CSMTC_quotes;

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)CSMTC_toDictionary;

@end

@interface CSMTCCobaltGrainDataModel : NSObject

@property (nonatomic, strong) NSArray *CSMTC_cryptoCurrencyList;

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary;

@end



NS_ASSUME_NONNULL_END
