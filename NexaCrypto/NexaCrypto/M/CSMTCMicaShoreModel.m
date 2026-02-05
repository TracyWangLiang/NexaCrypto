//
//  CSMTCMicaShoreModel.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCMicaShoreModel.h"

@implementation CSMTCMicaShoreModel

@end

@implementation CSMTCMicaShoreItemModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    if (![dictionary isKindOfClass:[NSDictionary class]]) return nil;

    CSMTCMicaShoreItemModel *CSMTC_model = [[CSMTCMicaShoreItemModel alloc] init];

    CSMTC_model.CSMTC_cityContours = dictionary[@"cityContours"];
    CSMTC_model.CSMTC_cityExpressions = [NSString stringWithFormat:@"%@", dictionary[@"cityExpressions"] ?: @""];
    CSMTC_model.CSMTC_cityFragments = [NSString stringWithFormat:@"%@", dictionary[@"cityFragments"] ?: @""];
    CSMTC_model.CSMTC_cityImpressions = [NSString stringWithFormat:@"%@", dictionary[@"cityImpressions"] ?: @""];
    CSMTC_model.CSMTC_cityRhythmics = [NSString stringWithFormat:@"%@", dictionary[@"cityRhythmics"] ?: @""];
    CSMTC_model.CSMTC_commentVoList = dictionary[@"commentVoList"];
    CSMTC_model.CSMTC_metroAesthetic = [NSString stringWithFormat:@"%@", dictionary[@"metroAesthetic"] ?: @""];
    CSMTC_model.CSMTC_metroLayers = [NSString stringWithFormat:@"%@", dictionary[@"metroLayers"] ?: @""];
    CSMTC_model.CSMTC_nightStreetscape = [NSString stringWithFormat:@"%@", dictionary[@"nightStreetscape"] ?: @""];
    CSMTC_model.CSMTC_sideStreetMood = [NSString stringWithFormat:@"%@", dictionary[@"sideStreetMood"] ?: @""];
    CSMTC_model.CSMTC_streetAtmosphere = [NSString stringWithFormat:@"%@", dictionary[@"streetAtmosphere"] ?: @""];
    CSMTC_model.CSMTC_streetDynamics = [NSString stringWithFormat:@"%@", dictionary[@"streetDynamics"] ?: @""];
    CSMTC_model.CSMTC_streetLifestyle = [NSString stringWithFormat:@"%@", dictionary[@"streetLifestyle"] ?: @""];
    CSMTC_model.CSMTC_streetMoments = [NSString stringWithFormat:@"%@", dictionary[@"streetMoments"] ?: @""];
    CSMTC_model.CSMTC_urbanHorizons = [NSString stringWithFormat:@"%@", dictionary[@"urbanHorizons"] ?: @""];
    CSMTC_model.CSMTC_urbanJourney = [NSString stringWithFormat:@"%@", dictionary[@"urbanJourney"] ?: @""];
    CSMTC_model.CSMTC_urbanMemory = [NSString stringWithFormat:@"%@", dictionary[@"urbanMemory"] ?: @""];
    CSMTC_model.CSMTC_urbanPulsebeat = dictionary[@"urbanPulsebeat"];
    CSMTC_model.CSMTC_urbanSignals = [NSString stringWithFormat:@"%@", dictionary[@"urbanSignals"] ?: @""];
    CSMTC_model.CSMTC_urbanVoices = [NSString stringWithFormat:@"%@", dictionary[@"urbanVoices"] ?: @""];

    return CSMTC_model;
}

@end


@implementation CSMTCMicaShoreDataModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    if (![dictionary isKindOfClass:[NSDictionary class]]) return nil;

    CSMTCMicaShoreDataModel *CSMTC_model = [[CSMTCMicaShoreDataModel alloc] init];
    CSMTC_model.CSMTC_code = [NSString stringWithFormat:@"%@", dictionary[@"code"] ?: @""];
    NSArray *dataArray = dictionary[@"data"];
    if ([dataArray isKindOfClass:[NSArray class]]) {
        NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:dataArray.count];
        for (NSDictionary *dict in dataArray) {
            CSMTCMicaShoreItemModel *cityModel = [CSMTCMicaShoreItemModel CSMTC_modelWithDictionary:dict];
            if (cityModel) {
                [tmpArray addObject:cityModel];
            }
        }
        CSMTC_model.CSMTC_data = [tmpArray copy];
    }

    return CSMTC_model;
}

@end

