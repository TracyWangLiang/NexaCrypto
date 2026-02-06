//
//  CSMTCSlateRidgeCollectionCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCSlateRidgeCollectionCell.h"

@interface CSMTCSlateRidgeCollectionCell ()

@property (nonatomic, strong) UILabel *CSMTC_briskHarborLoom;
@property (nonatomic, strong) UIImageView *CSMTC_silentHarborGlen;

@property (nonatomic, strong) UILabel *CSMTC_firmHavenCrest;
@property (nonatomic, strong) UILabel *CSMTC_gentleValeBridge;
@property (nonatomic, strong) UILabel *CSMTC_quickRidgeHollow;

@property (nonatomic, strong) UIView *CSMTC_freshHollowClimb;
@property (nonatomic, strong) UIImageView *CSMTC_brightDellPath;
@property (nonatomic, strong) UILabel *CSMTC_calmKnollShore;

@end

@implementation CSMTCSlateRidgeCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_aptKnollTrailFoldPathBluffRiseTrack];
        [self CSMTC_sharpDellPathFoldHollowTrailKnollSpan];
    }
    return self;
}


- (void)CSMTC_aptKnollTrailFoldPathBluffRiseTrack {

    self.contentView.backgroundColor = UIColor.clearColor;

    self.CSMTC_briskHarborLoom = [[UILabel alloc] init];
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_briskHarborLoom.textColor = [UIColor colorWithRed:180/255.0 green:180/255.0 blue:180/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_briskHarborLoom];
    self.CSMTC_silentHarborGlen = [[UIImageView alloc] init];
    self.CSMTC_silentHarborGlen.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentHarborGlen.contentMode = UIViewContentModeScaleAspectFill;
    self.CSMTC_silentHarborGlen.clipsToBounds = YES;
    self.CSMTC_silentHarborGlen.layer.cornerRadius = 15;
//    self.CSMTC_silentHarborGlen.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.CSMTC_silentHarborGlen];
    self.CSMTC_briskHarborLoom.text = @"CSMTCMELLOW_1CSMTCMELLOW_".CSMTC_removeMellowCoveSpan;


    self.CSMTC_firmHavenCrest = [[UILabel alloc] init];
    self.CSMTC_firmHavenCrest.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_firmHavenCrest.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.CSMTC_firmHavenCrest.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.CSMTC_firmHavenCrest];
    self.CSMTC_firmHavenCrest.text = @"CSMTCMELLOW_BitCSMTCMELLOW_coin".CSMTC_removeMellowCoveSpan;

  
    self.CSMTC_gentleValeBridge = [[UILabel alloc] init];
    self.CSMTC_gentleValeBridge.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_gentleValeBridge.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_gentleValeBridge.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_gentleValeBridge];
    self.CSMTC_gentleValeBridge.text = @"CSMTCMELLOW_BTCSMTCMELLOW_C".CSMTC_removeMellowCoveSpan;


    self.CSMTC_quickRidgeHollow = [[UILabel alloc] init];
    self.CSMTC_quickRidgeHollow.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_quickRidgeHollow.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:15];
    self.CSMTC_quickRidgeHollow.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.CSMTC_quickRidgeHollow];
    self.CSMTC_quickRidgeHollow.text = @"CSMTCMELLOW_$0.0CSMTCMELLOW_0".CSMTC_removeMellowCoveSpan;

    self.CSMTC_freshHollowClimb = [[UIView alloc] init];
    self.CSMTC_freshHollowClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_freshHollowClimb.backgroundColor =
    [UIColor colorWithRed:253/255.0 green:49/255.0 blue:118/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_freshHollowClimb];
    self.CSMTC_freshHollowClimb.layer.masksToBounds = YES;
    self.CSMTC_freshHollowClimb.layer.cornerRadius = 6;

    self.CSMTC_brightDellPath = [[UIImageView alloc] init];
    self.CSMTC_brightDellPath.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_brightDellPath.contentMode = UIViewContentModeScaleAspectFit;
    [self.CSMTC_freshHollowClimb addSubview:self.CSMTC_brightDellPath];
    self.CSMTC_brightDellPath.image = [UIImage CSMTC_garnetImage:@"CSMTCMELLOW_CSMTC_widCSMTCMELLOW_eRidgCSMTCMELLOW_eTrail".CSMTC_removeMellowCoveSpan];
    self.CSMTC_brightDellPath.highlightedImage = [UIImage CSMTC_garnetImage:@"CSMTCMELLOW_CSMTC_plaiCSMTCMELLOW_nHollowCSMTCMELLOW_Peak".CSMTC_removeMellowCoveSpan];

    self.CSMTC_calmKnollShore = [[UILabel alloc] init];
    self.CSMTC_calmKnollShore.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_calmKnollShore.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_calmKnollShore.textColor = UIColor.whiteColor;
    [self.CSMTC_freshHollowClimb addSubview:self.CSMTC_calmKnollShore];
    self.CSMTC_calmKnollShore.text = @"CSMTCMELLOW_+0.0CSMTCMELLOW_0%".CSMTC_removeMellowCoveSpan;
}

- (void)CSMTC_sharpDellPathFoldHollowTrailKnollSpan {

    UIView *CSMTC_steadyCoveRise = self.contentView;

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_briskHarborLoom.leadingAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.leadingAnchor constant:8],
        [self.CSMTC_briskHarborLoom.centerYAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.centerYAnchor]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_silentHarborGlen.leadingAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.trailingAnchor constant:12],
        [self.CSMTC_silentHarborGlen.centerYAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.centerYAnchor],
        [self.CSMTC_silentHarborGlen.widthAnchor constraintEqualToConstant:30],
        [self.CSMTC_silentHarborGlen.heightAnchor constraintEqualToConstant:30],
        [self.CSMTC_silentHarborGlen.topAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.topAnchor constant:15],
        [self.CSMTC_silentHarborGlen.bottomAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.bottomAnchor constant:-15]
    ]];


    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_firmHavenCrest.leadingAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.trailingAnchor constant:8],
        [self.CSMTC_firmHavenCrest.topAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.topAnchor constant:-3],
        [self.CSMTC_firmHavenCrest.widthAnchor constraintLessThanOrEqualToConstant:150]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_gentleValeBridge.leadingAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.trailingAnchor constant:8],
        [self.CSMTC_gentleValeBridge.bottomAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.bottomAnchor constant:4]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_quickRidgeHollow.centerYAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.centerYAnchor],
        [self.CSMTC_quickRidgeHollow.trailingAnchor constraintEqualToAnchor:self.CSMTC_freshHollowClimb.leadingAnchor constant:-20]
    ]];

    [NSLayoutConstraint activateConstraints:@[

        [self.CSMTC_freshHollowClimb.trailingAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.trailingAnchor constant:-12],
        [self.CSMTC_freshHollowClimb.centerYAnchor constraintEqualToAnchor:CSMTC_steadyCoveRise.centerYAnchor],
        [self.CSMTC_freshHollowClimb.heightAnchor constraintEqualToConstant:28],
        [self.CSMTC_freshHollowClimb.widthAnchor constraintEqualToConstant:75]
    ]];


    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_brightDellPath.leadingAnchor constraintEqualToAnchor:self.CSMTC_freshHollowClimb.leadingAnchor constant:10],
        [self.CSMTC_brightDellPath.centerYAnchor constraintEqualToAnchor:self.CSMTC_freshHollowClimb.centerYAnchor],
        [self.CSMTC_brightDellPath.widthAnchor constraintEqualToConstant:8],
        [self.CSMTC_brightDellPath.heightAnchor constraintEqualToConstant:8]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_calmKnollShore.leadingAnchor constraintEqualToAnchor:self.CSMTC_brightDellPath.trailingAnchor constant:2],
        [self.CSMTC_calmKnollShore.trailingAnchor constraintEqualToAnchor:self.CSMTC_freshHollowClimb.trailingAnchor constant:-9],
        [self.CSMTC_calmKnollShore.centerYAnchor constraintEqualToAnchor:self.CSMTC_freshHollowClimb.centerYAnchor]
    ]];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan:(CSMTCCobaltGrainDataItemModel *)CSMTC_model CSMTC_clearKnollClimb:(NSString *)CSMTC_clearKnollClimb {
    self.CSMTC_briskHarborLoom.text = CSMTC_clearKnollClimb;
    CSMTCCobaltGrainItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_humbleKnollRise.firstObject;
    [CSMTCNexaManager CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_model.CSMTC_sharpKnollTrace completion:^(UIImage * _Nullable image) {
        self.CSMTC_silentHarborGlen.image = image;
    }];
    self.CSMTC_firmHavenCrest.text = CSMTC_model.CSMTC_vastValePoint;
    self.CSMTC_gentleValeBridge.text = CSMTC_model.CSMTC_plainHollowPeak;
    self.CSMTC_quickRidgeHollow.text = [NSString stringWithFormat:@"$%@", [CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_silentHarborGlen]];
    self.CSMTC_calmKnollShore.text = [NSString stringWithFormat:@"%@%%",[CSMTCNexaCrypto CSMTC_braveGlenClimbFoldTrackHollowSpan:CSMTC_itemModel.CSMTC_freshHollowClimb]];
    
    if ([CSMTCNexaManager CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_itemModel.CSMTC_freshHollowClimb]) {
        self.CSMTC_brightDellPath.highlighted = YES;
        self.CSMTC_freshHollowClimb.backgroundColor = [UIColor colorWithRed:253/255.0 green:49/255.0 blue:118/255.0 alpha:1];
    } else {
        self.CSMTC_brightDellPath.highlighted = NO;
        self.CSMTC_freshHollowClimb.backgroundColor = [UIColor colorWithRed:0/255.0 green:183/255.0 blue:214/255.0 alpha:1];
    }
    
}

@end
