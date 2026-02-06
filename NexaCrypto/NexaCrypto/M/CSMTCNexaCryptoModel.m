//
//  NexaCryptoModel.m
//  NexaCrypto
//
//   
//

#import "CSMTCNexaCryptoModel.h"

@implementation CSMTCNexaCryptoModel

@end

@implementation CSMTCTourmalineModel


@end

@implementation CSMTCCobaltGrainItemModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    CSMTCCobaltGrainItemModel *CSMTC_model = [[CSMTCCobaltGrainItemModel alloc] init];
    
    CSMTC_model.CSMTC_name = dictionary[@"name"] ?: @"";
    CSMTC_model.CSMTC_price = [dictionary[@"price"] description] ?: @"";
    CSMTC_model.CSMTC_volume24h = [dictionary[@"volume24h"] description] ?: @"";
    CSMTC_model.CSMTC_volume7d = [dictionary[@"volume7d"] description] ?: @"";
    CSMTC_model.CSMTC_marketCap = [dictionary[@"marketCap"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange1h = [dictionary[@"percentChange1h"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange24h = [dictionary[@"percentChange24h"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange7d = [dictionary[@"percentChange7d"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange30d = [dictionary[@"percentChange30d"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange60d = [dictionary[@"percentChange60d"] description] ?: @"";
    CSMTC_model.CSMTC_percentChange90d = [dictionary[@"percentChange90d"] description] ?: @"";
    CSMTC_model.CSMTC_lastUpdated = dictionary[@"lastUpdated"] ?: @"";
    
    return CSMTC_model;
}

- (NSDictionary *)CSMTC_toDictionary {
    return @{
        @"name": self.CSMTC_name ?: @"",
        @"price": self.CSMTC_price ?: @"",
        @"volume24h": self.CSMTC_volume24h ?: @"",
        @"volume7d": self.CSMTC_volume7d ?: @"",
        @"marketCap": self.CSMTC_marketCap ?: @"",
        @"percentChange1h": self.CSMTC_percentChange1h ?: @"",
        @"percentChange24h": self.CSMTC_percentChange24h ?: @"",
        @"percentChange7d": self.CSMTC_percentChange7d ?: @"",
        @"percentChange30d": self.CSMTC_percentChange30d ?: @"",
        @"percentChange60d": self.CSMTC_percentChange60d ?: @"",
        @"percentChange90d": self.CSMTC_percentChange90d ?: @"",
        @"lastUpdated": self.CSMTC_lastUpdated ?: @""
    };
}

@end

@implementation CSMTCCobaltGrainDataItemModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [[CSMTCCobaltGrainDataItemModel alloc] init];
    
    CSMTC_model.CSMTC_id = [dictionary[@"id"] description] ?: @"";
    CSMTC_model.CSMTC_name = dictionary[@"name"] ?: @"";
    CSMTC_model.CSMTC_symbol = dictionary[@"symbol"] ?: @"";
    CSMTC_model.CSMTC_slug = dictionary[@"slug"] ?: @"";
   
    CSMTC_model.CSMTC_marketPairCount = [dictionary[@"marketPairCount"] description] ?: @"";
    NSArray *rawQuotes = [dictionary[@"quotes"] isKindOfClass:[NSArray class]] ? dictionary[@"quotes"] : @[];
    NSMutableArray *tempQuotes = [NSMutableArray array];
    for (NSDictionary *item in rawQuotes) {
        [tempQuotes addObject:[CSMTCCobaltGrainItemModel CSMTC_modelWithDictionary:item]];
    }
    CSMTC_model.CSMTC_quotes = tempQuotes;
    
    return CSMTC_model;
}

- (NSDictionary *)CSMTC_toDictionary {
    NSMutableArray *quotesArray = [NSMutableArray array];
    for (CSMTCCobaltGrainItemModel *quote in self.CSMTC_quotes) {
        [quotesArray addObject:[quote CSMTC_toDictionary]];
    }
    return @{
        @"id": self.CSMTC_id ?: @"",
        @"name": self.CSMTC_name ?: @"",
        @"symbol": self.CSMTC_symbol ?: @"",
        @"slug": self.CSMTC_slug ?: @"",
        @"marketPairCount": self.CSMTC_marketPairCount ?: @"",
        @"quotes": quotesArray
    };
}


@end

@implementation CSMTCCobaltGrainDataModel

+ (instancetype)CSMTC_modelWithDictionary:(NSDictionary *)dictionary {
    CSMTCCobaltGrainDataModel *CSMTC_model = [[CSMTCCobaltGrainDataModel alloc] init];
    NSDictionary *CSMTC_data = dictionary[@"data"] ?: @{};
    NSArray *CSMTC_rawArray = [CSMTC_data[@"cryptoCurrencyList"] isKindOfClass:[NSArray class]] ? CSMTC_data[@"cryptoCurrencyList"] : @[];
    NSMutableArray *CSMTC_tempArray = [NSMutableArray array];
    for (NSDictionary *item in CSMTC_rawArray) {
        [CSMTC_tempArray addObject:[CSMTCCobaltGrainDataItemModel CSMTC_modelWithDictionary:item]];
    }
    CSMTC_model.CSMTC_cryptoCurrencyList = CSMTC_tempArray;
    
    return CSMTC_model;
}

@end

