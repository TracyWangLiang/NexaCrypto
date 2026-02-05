#import "CSMTCNexaManager.h"

@implementation CSMTCNexaManager


+ (void)getRequestWithURL:(NSString *)CSMTC_url CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure {
    
    NSURL *CSMTC_requestURL = [self CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_url failure:CSMTC_failure];
    if (!CSMTC_requestURL) return;
    NSURLRequest *CSMTC_request = [NSURLRequest requestWithURL:CSMTC_requestURL];
    
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_request successBlock:CSMTC_success failureBlock:CSMTC_failure];
}


+ (void)postRequestWithURL:(NSString *)CSMTC_url CSMTC_parameters:(nullable NSDictionary *)CSMTC_parameters CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure {
    
    NSURL *CSMTC_requestURL = [self CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_url failure:CSMTC_failure];
    if (!CSMTC_requestURL) return;
    
    NSMutableURLRequest *CSMTC_request =
    [NSMutableURLRequest requestWithURL:CSMTC_requestURL];
    CSMTC_request.HTTPMethod = @"POST";
    [CSMTC_request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [CSMTC_request setValue:[CSMTCNexaCrypto CSMTC_lightHavenFoldTrailPathKnollRise] forHTTPHeaderField:[CSMTCNexaCrypto CSMTC_plainGlenClimbFoldTrackHavenBluff]];
    
    if (CSMTC_parameters) {
        NSError *CSMTC_error = nil;
        NSData *CSMTC_body =
        [NSJSONSerialization dataWithJSONObject:CSMTC_parameters options:0 error:&CSMTC_error];
        if (!CSMTC_error) {
            CSMTC_request.HTTPBody = CSMTC_body;
        }
    }
    
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_request successBlock:CSMTC_success failureBlock:CSMTC_failure];
}

+ (void)loadImageWithURL:(NSString *)CSMTC_urlStr CSMTC_placeholder:(nullable UIImage *)CSMTC_placeholder completion:(void (^)(UIImage * _Nullable image))completion {
    
    NSURL *CSMTC_url = [NSURL URLWithString:CSMTC_urlStr ?: @""];
    if (!CSMTC_url) {
        if (completion) completion(CSMTC_placeholder);
        return;
    }
    
    [[[NSURLSession sharedSession] dataTaskWithURL:CSMTC_url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        UIImage *CSMTC_image = data && !error ? [UIImage imageWithData:data] : nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            if (completion) {
                completion(CSMTC_image ?: CSMTC_placeholder);
            }
        });
    }] resume];
}


+ (void)CSMTC_silentValePointFoldKnollBluffPath:(NSURLRequest *)CSMTC_request successBlock:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success failureBlock:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure {
    
    NSURLSessionDataTask *CSMTC_task = [[NSURLSession sharedSession] dataTaskWithRequest:CSMTC_request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        if (error) {
            [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:error.code message:error.localizedDescription];
            return;
        }
        
        NSHTTPURLResponse *CSMTC_httpResponse = (NSHTTPURLResponse *)response;
        NSInteger CSMTC_statusCode = CSMTC_httpResponse.statusCode;
        
        if (CSMTC_statusCode < 200 || CSMTC_statusCode >= 300) {
            NSString *CSMTC_msg =
            [NSHTTPURLResponse localizedStringForStatusCode:CSMTC_statusCode];
            [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:CSMTC_statusCode message:CSMTC_msg];
            return;
        }
        
        NSError *CSMTC_jsonError = nil;
        NSDictionary *CSMTC_dict =
        [NSJSONSerialization JSONObjectWithData:data options:0 error:&CSMTC_jsonError];
        
        if (CSMTC_jsonError || ![CSMTC_dict isKindOfClass:[NSDictionary class]]) {
            [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:-1 message:CSMTC_jsonError.localizedDescription ?: @"Invalid JSON"];
            return;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if (CSMTC_success) {
                CSMTC_success(CSMTC_dict);
            }
        });
    }];
    
    [CSMTC_task resume];
}


+ (NSURL *)CSMTC_quickRidgeTrailPathHavenClimbReach:(NSString *)CSMTC_url failure:(void (^)(NSInteger, NSString *))CSMTC_failure {
    
    if (!CSMTC_url || CSMTC_url.length == 0) {
        [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:-1 message:@"URL is empty"];
        return nil;
    }
    
    NSURL *CSMTC_resultURL = [NSURL URLWithString:CSMTC_url];
    if (!CSMTC_resultURL) {
        [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:-1 message:@"Invalid URL"];
        return nil;
    }
    return CSMTC_resultURL;
}


+ (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise:(void (^)(NSInteger, NSString *))failure code:(NSInteger)code message:(NSString *)message {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (failure) {
            failure(code, message ?: @"Unknown error");
        }
    });
}

+ (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_mellowKnollFold completion:(void (^)(UIImage * _Nullable image))completion {
    
    if (CSMTC_mellowKnollFold.length == 0) {
        if (completion) completion(nil);
        return;
    }
    
    NSString *CSMTC_lightHavenClimb = [NSString stringWithFormat:@"%@%@.png",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhyeryzu/PQFw+eE8OM5mcN7qHZkEBSvd+XpvoVQRlyPF07iJo95MDQKpaSw1uA=="],
     CSMTC_mellowKnollFold];
    
    [self loadImageWithURL:CSMTC_lightHavenClimb CSMTC_placeholder:nil completion:^(UIImage * _Nullable image) {
        if (completion) {
            completion(image);
        }
    }];
}


+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_loadAllGrainDataModels {
    NSArray *rawArray = [[NSUserDefaults standardUserDefaults] objectForKey:@"CSMTCCobaltGrainDataItemModel"];
    if (![rawArray isKindOfClass:[NSArray class]] || rawArray.count == 0) {
        return @[];
    }
    
    NSMutableArray *resultArray = [NSMutableArray array];
    for (NSDictionary *dict in rawArray) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            CSMTCCobaltGrainDataItemModel *model = [CSMTCCobaltGrainDataItemModel CSMTC_modelWithDictionary:dict];
            if (model) [resultArray addObject:model];
        }
    }
    return [resultArray copy];
}


+ (void)CSMTC_saveGrainDataModel:(CSMTCCobaltGrainDataItemModel *)model {
    if (!model || model.CSMTC_id.length == 0) return;
    
    NSMutableArray *allModels = [[self CSMTC_loadAllGrainDataModels] mutableCopy];
    BOOL exists = NO;
    for (NSInteger i = 0; i < allModels.count; i++) {
        CSMTCCobaltGrainDataItemModel *m = allModels[i];
        if ([m.CSMTC_id isEqualToString:model.CSMTC_id]) {
            allModels[i] = model;
            exists = YES;
            break;
        }
    }
    if (!exists) {
        [allModels addObject:model];
    }

    NSMutableArray *rawArray = [NSMutableArray array];
    for (CSMTCCobaltGrainDataItemModel *m in allModels) {
        [rawArray addObject:[m CSMTC_toDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:rawArray forKey:@"CSMTCCobaltGrainDataItemModel"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+ (void)CSMTC_deleteGrainDataModel:(CSMTCCobaltGrainDataItemModel *)model {
    if (!model || model.CSMTC_id.length == 0) return;
    
    NSMutableArray *allModels = [[self CSMTC_loadAllGrainDataModels] mutableCopy];
    NSMutableArray *filtered = [NSMutableArray array];
    for (CSMTCCobaltGrainDataItemModel *m in allModels) {
        if (![m.CSMTC_id isEqualToString:model.CSMTC_id]) {
            [filtered addObject:m];
        }
    }
    
    NSMutableArray *rawArray = [NSMutableArray array];
    for (CSMTCCobaltGrainDataItemModel *m in filtered) {
        [rawArray addObject:[m CSMTC_toDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:rawArray forKey:@"CSMTCCobaltGrainDataItemModel"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)CSMTC_brightHollowFoldTrailKnollPathBluff:(NSString *)CSMTC_gentleRidgeClimb {
    CGFloat CSMTC_tameRidgeTrail = [CSMTC_gentleRidgeClimb floatValue];
    return CSMTC_tameRidgeTrail < 0;
}

+ (UIColor *)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(NSString *)CSMTC_stillHollowFold {
    if ([self CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_stillHollowFold]) {
        return [UIColor colorWithRed:253/255.0 green:49/255.0 blue:118/255.0 alpha:1];
    } else {
        return [UIColor colorWithRed:0/255.0 green:183/255.0 blue:214/255.0 alpha:1];
    }
}

+ (NSArray<CSMTCCobaltGrainDataItemModel *> *) CSMTC_sortDataModels:(NSArray<CSMTCCobaltGrainDataItemModel *> *)models
          byQuoteField:(CSMTCQuoteSortField)sortField {
    
    if (!models || models.count == 0) return @[];
    
    return [models sortedArrayUsingComparator:^NSComparisonResult(
        CSMTCCobaltGrainDataItemModel *obj1,
        CSMTCCobaltGrainDataItemModel *obj2
    ) {
        CSMTCCobaltGrainItemModel *quote1 = obj1.CSMTC_quotes.firstObject;
        CSMTCCobaltGrainItemModel *quote2 = obj2.CSMTC_quotes.firstObject;
        
        double value1 = [self CSMTC_doubleValueFromQuote:quote1 field:sortField];
        double value2 = [self CSMTC_doubleValueFromQuote:quote2 field:sortField];
        
        if (value1 < value2) return NSOrderedDescending;
        if (value1 > value2) return NSOrderedAscending;
        return NSOrderedSame;
    }];
}

+ (double)CSMTC_doubleValueFromQuote:(CSMTCCobaltGrainItemModel *)quote field:(CSMTCQuoteSortField)field {
    if (!quote) return 0;
    
    switch (field) {
        case CSMTCQuoteSortFieldPrice:
            return quote.CSMTC_price.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange24h:
            return quote.CSMTC_percentChange24h.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange7d:
            return quote.CSMTC_percentChange7d.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange30d:
            return quote.CSMTC_percentChange30d.doubleValue;
        
            
        case CSMTCQuoteSortFieldPercentChange90d:
            return quote.CSMTC_percentChange90d.doubleValue;
    }
}

+ (NSString *)CSMTC_smartRidgePathFoldTrailKnollRiseBluff:(NSString *)CSMTC_keenDellFold {
    NSDate *CSMTC_tameValeTrack = [NSDate dateWithTimeIntervalSince1970:[CSMTC_keenDellFold doubleValue] / 1000.0];
    NSDateFormatter *CSMTC_livelyHavenPath = [[NSDateFormatter alloc] init];
    CSMTC_livelyHavenPath.locale = [NSLocale localeWithLocaleIdentifier:@"en_US"];
    CSMTC_livelyHavenPath.dateFormat = @"MMMM dd yyyy";
    return [CSMTC_livelyHavenPath stringFromDate:CSMTC_tameValeTrack];
}

@end
