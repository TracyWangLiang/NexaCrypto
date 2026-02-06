//
//  CSMTCMicaShoreModel.h
//  NexaCrypto
//
//   
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CSMTCMicaShoreModel : NSObject

@end


@interface CSMTCMicaShoreItemModel : NSObject

@property (nonatomic, strong) NSArray *CSMTC_cityContours;
@property (nonatomic, copy) NSString *CSMTC_cityExpressions;
@property (nonatomic, copy) NSString *CSMTC_cityFragments;
@property (nonatomic, copy) NSString *CSMTC_cityImpressions;
@property (nonatomic, copy) NSString *CSMTC_cityRhythmics;
@property (nonatomic, strong) NSArray *CSMTC_commentVoList;
@property (nonatomic, copy) NSString *CSMTC_metroAesthetic;
@property (nonatomic, copy) NSString *CSMTC_metroLayers;
@property (nonatomic, copy) NSString *CSMTC_nightStreetscape;
@property (nonatomic, copy) NSString *CSMTC_sideStreetMood;
@property (nonatomic, copy) NSString *CSMTC_streetAtmosphere;
@property (nonatomic, copy) NSString *CSMTC_streetDynamics;
@property (nonatomic, copy) NSString *CSMTC_streetLifestyle;
@property (nonatomic, copy) NSString *CSMTC_streetMoments;
@property (nonatomic, copy) NSString *CSMTC_urbanHorizons;
@property (nonatomic, copy) NSString *CSMTC_urbanJourney;
@property (nonatomic, copy) NSString *CSMTC_urbanMemory;
@property (nonatomic, strong) NSArray *CSMTC_urbanPulsebeat;
@property (nonatomic, copy) NSString *CSMTC_urbanSignals;
@property (nonatomic, copy) NSString *CSMTC_urbanVoices;

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary;

@end

@interface CSMTCMicaShoreDataModel : NSObject

@property (nonatomic, copy) NSString *CSMTC_code;
@property (nonatomic, strong) NSArray<CSMTCMicaShoreItemModel *> *CSMTC_data;

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary;

@end



NS_ASSUME_NONNULL_END
