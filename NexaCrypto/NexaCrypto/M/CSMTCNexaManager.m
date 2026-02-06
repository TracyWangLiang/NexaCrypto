#import "CSMTCNexaManager.h"

@implementation CSMTCNexaManager


+ (void)CSMTC_firmKnollTrailFoldHavenClimbSpan:(NSString *)CSMTC_url CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure {
    
    NSURL *CSMTC_requestURL = [self CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_url failure:CSMTC_failure];
    if (!CSMTC_requestURL) return;
    NSURLRequest *CSMTC_request = [NSURLRequest requestWithURL:CSMTC_requestURL];
    
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_request successBlock:CSMTC_success failureBlock:CSMTC_failure];
}


+ (void)CSMTC_quietDellPathFoldRidgeBluffRise:(NSString *)CSMTC_url CSMTC_parameters:(nullable NSDictionary *)CSMTC_parameters CSMTC_success:(void (^)(NSDictionary *CSMTC_dict))CSMTC_success CSMTC_failure:(void (^)(NSInteger CSMTC_errorCode, NSString *CSMTC_errorMsg))CSMTC_failure {
    
    NSURL *CSMTC_requestURL = [self CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_url failure:CSMTC_failure];
    if (!CSMTC_requestURL) return;
    
    NSMutableURLRequest *CSMTC_request =
    [NSMutableURLRequest requestWithURL:CSMTC_requestURL];
    CSMTC_request.HTTPMethod = @"CSMTCMELLOW_POCSMTCMELLOW_SCSMTCMELLOW_T".CSMTC_removeMellowCoveSpan;
    [CSMTC_request setValue:@"CSMTCMELLOW_applCSMTCMELLOW_icatCSMTCMELLOW_ion/jsCSMTCMELLOW_on".CSMTC_removeMellowCoveSpan forHTTPHeaderField:@"CSMTCMELLOW_ContCSMTCMELLOW_ent-TyCSMTCMELLOW_pe".CSMTC_removeMellowCoveSpan];
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

+ (void)CSMTC_gentleCoveTrailFoldKnollPathSpan:(NSString *)CSMTC_urlStr CSMTC_placeholder:(nullable UIImage *)CSMTC_placeholder completion:(void (^)(UIImage * _Nullable image))completion {
    
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
            [self CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_failure code:-1 message:CSMTC_jsonError.localizedDescription ?: @"CSMTCMELLOW_InvaCSMTCMELLOW_lid JSCSMTCMELLOW_ON".CSMTC_removeMellowCoveSpan];
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
            failure(code, message ?: @"CSMTCMELLOW_UnknCSMTCMELLOW_own errCSMTCMELLOW_or".CSMTC_removeMellowCoveSpan);
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
    
    [self CSMTC_gentleCoveTrailFoldKnollPathSpan:CSMTC_lightHavenClimb CSMTC_placeholder:nil completion:^(UIImage * _Nullable image) {
        if (completion) {
            completion(image);
        }
    }];
}


+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_softGlenPathFoldHavenClimbRise {
    NSArray *rawArray = [[NSUserDefaults standardUserDefaults] objectForKey:@"CSMTCMELLOW_CSMTCCobaCSMTCMELLOW_ltGraCSMTCMELLOW_inDataCSMTCMELLOW_ItemCSMTCMELLOW_Model".CSMTC_removeMellowCoveSpan];
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


+ (void)CSMTC_steadyHollowClimbFoldRidgeTrailPath:(CSMTCCobaltGrainDataItemModel *)model {
    if (!model || model.CSMTC_sharpKnollTrace.length == 0) return;
    
    NSMutableArray *allModels = [[self CSMTC_softGlenPathFoldHavenClimbRise] mutableCopy];
    BOOL exists = NO;
    for (NSInteger i = 0; i < allModels.count; i++) {
        CSMTCCobaltGrainDataItemModel *m = allModels[i];
        if ([m.CSMTC_sharpKnollTrace isEqualToString:model.CSMTC_sharpKnollTrace]) {
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
    
    [[NSUserDefaults standardUserDefaults] setObject:rawArray forKey:@"CSMTCMELLOW_CSMTCCobaCSMTCMELLOW_ltGraCSMTCMELLOW_inDataCSMTCMELLOW_ItemCSMTCMELLOW_Model".CSMTC_removeMellowCoveSpan];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+ (void)CSMTC_clearValeTrailFoldKnollBluffSpan:(CSMTCCobaltGrainDataItemModel *)model {
    if (!model || model.CSMTC_sharpKnollTrace.length == 0) return;
    
    NSMutableArray *allModels = [[self CSMTC_softGlenPathFoldHavenClimbRise] mutableCopy];
    NSMutableArray *filtered = [NSMutableArray array];
    for (CSMTCCobaltGrainDataItemModel *m in allModels) {
        if (![m.CSMTC_sharpKnollTrace isEqualToString:model.CSMTC_sharpKnollTrace]) {
            [filtered addObject:m];
        }
    }
    
    NSMutableArray *rawArray = [NSMutableArray array];
    for (CSMTCCobaltGrainDataItemModel *m in filtered) {
        [rawArray addObject:[m CSMTC_toDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:rawArray forKey:@"CSMTCMELLOW_CSMTCCobaCSMTCMELLOW_ltGraCSMTCMELLOW_inDataCSMTCMELLOW_ItemCSMTCMELLOW_Model".CSMTC_removeMellowCoveSpan];
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

+ (NSArray<CSMTCCobaltGrainDataItemModel *> *)CSMTC_briskRidgeTrailFoldDellKnollSpan:(NSArray<CSMTCCobaltGrainDataItemModel *> *)models CSMTC_humbleRidgeTrail:(CSMTCQuoteSortField)sortField {
    
    if (!models || models.count == 0) return @[];
    
    return [models sortedArrayUsingComparator:^NSComparisonResult(
        CSMTCCobaltGrainDataItemModel *CSMTC_keenDellFold,
        CSMTCCobaltGrainDataItemModel *CSMTC_tameValeTrack
    ) {
        CSMTCCobaltGrainItemModel *CSMTC_livelyHavenPath = CSMTC_keenDellFold.CSMTC_humbleKnollRise.firstObject;
        CSMTCCobaltGrainItemModel *CSMTC_braveGlenClimb = CSMTC_tameValeTrack.CSMTC_humbleKnollRise.firstObject;
        
        double CSMTC_aptKnollTrail = [self CSMTC_humbleKnollRisePathTrackHavenFold:CSMTC_livelyHavenPath field:sortField];
        double CSMTC_sharpDellPath = [self CSMTC_humbleKnollRisePathTrackHavenFold:CSMTC_braveGlenClimb field:sortField];
        
        if (CSMTC_aptKnollTrail < CSMTC_sharpDellPath) return NSOrderedDescending;
        if (CSMTC_aptKnollTrail > CSMTC_sharpDellPath) return NSOrderedAscending;
        return NSOrderedSame;
    }];
}

+ (double)CSMTC_humbleKnollRisePathTrackHavenFold:(CSMTCCobaltGrainItemModel *)quote field:(CSMTCQuoteSortField)field {
    if (!quote) return 0;
    
    switch (field) {
        case CSMTCQuoteSortFieldPrice:
            return quote.CSMTC_silentHarborGlen.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange24h:
            return quote.CSMTC_brightDellPath.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange7d:
            return quote.CSMTC_calmKnollShore.doubleValue;
            
        case CSMTCQuoteSortFieldPercentChange30d:
            return quote.CSMTC_steadyCoveRise.doubleValue;
        
            
        case CSMTCQuoteSortFieldPercentChange90d:
            return quote.CSMTC_clearGlenFold.doubleValue;
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
