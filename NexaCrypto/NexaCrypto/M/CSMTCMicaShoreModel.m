//
//  CSMTCMicaShoreModel.m
//  NexaCrypto
//
//   
//

#import "CSMTCMicaShoreModel.h"

@implementation CSMTCMicaShoreModel

@end

@implementation CSMTCMicaShoreItemModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    if (![dictionary isKindOfClass:[NSDictionary class]]) return nil;

    CSMTCMicaShoreItemModel *CSMTC_model = [[CSMTCMicaShoreItemModel alloc] init];

    CSMTC_model.CSMTC_cityContours = dictionary[@"CSMTCMELLOW_citCSMTCMELLOW_yContCSMTCMELLOW_ours".CSMTC_removeMellowCoveSpan];
    CSMTC_model.CSMTC_cityExpressions = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_cityExCSMTCMELLOW_presCSMTCMELLOW_sions".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_cityFragments = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_cityFrCSMTCMELLOW_agmeCSMTCMELLOW_nts".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_cityImpressions = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_citCSMTCMELLOW_yImpCSMTCMELLOW_resCSMTCMELLOW_sions".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_cityRhythmics = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_cityCSMTCMELLOW_RhyCSMTCMELLOW_thmics".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_commentVoList = dictionary[@"CSMTCMELLOW_commCSMTCMELLOW_entVoCSMTCMELLOW_List".CSMTC_removeMellowCoveSpan];
    CSMTC_model.CSMTC_metroAesthetic = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_metrCSMTCMELLOW_oAesCSMTCMELLOW_thetic".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_metroLayers = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_metCSMTCMELLOW_roLaCSMTCMELLOW_yers".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_nightStreetscape = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_nigCSMTCMELLOW_htStrCSMTCMELLOW_eetscape".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_sideStreetMood = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_sidCSMTCMELLOW_eStreCSMTCMELLOW_etMoCSMTCMELLOW_od".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_streetAtmosphere = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_strCSMTCMELLOW_eetACSMTCMELLOW_tmosphere".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_streetDynamics = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_strCSMTCMELLOW_eetDCSMTCMELLOW_ynamics".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_streetLifestyle = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_strCSMTCMELLOW_eetLiCSMTCMELLOW_festyCSMTCMELLOW_le".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_streetMoments = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_strCSMTCMELLOW_eetMoCSMTCMELLOW_ments".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_urbanHorizons = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_urbCSMTCMELLOW_anHorCSMTCMELLOW_izons".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_urbanJourney = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_urbCSMTCMELLOW_anJoCSMTCMELLOW_urney".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_urbanMemory = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_urbaCSMTCMELLOW_nMeCSMTCMELLOW_mory".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_urbanPulsebeat = dictionary[@"CSMTCMELLOW_urbCSMTCMELLOW_anPulsCSMTCMELLOW_ebeat".CSMTC_removeMellowCoveSpan];
    CSMTC_model.CSMTC_urbanSignals = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_urbCSMTCMELLOW_anSigCSMTCMELLOW_nals".CSMTC_removeMellowCoveSpan] ?: @""];
    CSMTC_model.CSMTC_urbanVoices = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_urbCSMTCMELLOW_anVoCSMTCMELLOW_ices".CSMTC_removeMellowCoveSpan] ?: @""];

    return CSMTC_model;
}

@end


@implementation CSMTCMicaShoreDataModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    if (![dictionary isKindOfClass:[NSDictionary class]]) return nil;

    CSMTCMicaShoreDataModel *CSMTC_model = [[CSMTCMicaShoreDataModel alloc] init];
    CSMTC_model.CSMTC_quickCoveTrail = [NSString stringWithFormat:@"%@", dictionary[@"CSMTCMELLOW_coCSMTCMELLOW_dCSMTCMELLOW_e".CSMTC_removeMellowCoveSpan] ?: @""];
    NSArray *dataArray = dictionary[@"CSMTCMELLOW_daCSMTCMELLOW_ta".CSMTC_removeMellowCoveSpan];
    if ([dataArray isKindOfClass:[NSArray class]]) {
        NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:dataArray.count];
        for (NSDictionary *dict in dataArray) {
            CSMTCMicaShoreItemModel *cityModel = [CSMTCMicaShoreItemModel CSMTC_modelWithDictionary:dict];
            if (cityModel) {
                [tmpArray addObject:cityModel];
            }
        }
        CSMTC_model.CSMTC_brightHollowFold = [tmpArray copy];
    }

    return CSMTC_model;
}

@end

