//
//  CSMTCCobaltGrainCollectionCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCCobaltGrainCollectionCell.h"

@interface CSMTCCobaltGrainCollectionCell ()

@property (nonatomic, strong) UIImageView *CSMTC_briskValeFold;
@property (nonatomic, strong) UILabel *CSMTC_wideDellTrail;
@property (nonatomic, strong) UILabel *CSMTC_lightHavenClimb;
@property (nonatomic, strong) UILabel *CSMTC_mellowKnollFold;

@end

@implementation CSMTCCobaltGrainCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 6;
        [self CSMTC_calmKnollShorePathRiseFoldTrail];
        [self CSMTC_freshCoveBluffTrackHavenClimbSpan];
    }
    return self;
}


- (void)CSMTC_calmKnollShorePathRiseFoldTrail {

    self.CSMTC_briskValeFold = [[UIImageView alloc] init];
    self.CSMTC_briskValeFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskValeFold.contentMode = UIViewContentModeScaleToFill;
    [self.contentView addSubview:self.CSMTC_briskValeFold];

    self.CSMTC_wideDellTrail = [[UILabel alloc] init];
    self.CSMTC_wideDellTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_wideDellTrail.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_wideDellTrail.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CSMTC_wideDellTrail];

    self.CSMTC_lightHavenClimb = [[UILabel alloc] init];
    self.CSMTC_lightHavenClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_lightHavenClimb.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
    self.CSMTC_lightHavenClimb.textColor = [UIColor colorWithRed:0.631 green:0.631 blue:0.631 alpha:1];
    [self.contentView addSubview:self.CSMTC_lightHavenClimb];

    self.CSMTC_mellowKnollFold = [[UILabel alloc] init];
    self.CSMTC_mellowKnollFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_mellowKnollFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_mellowKnollFold.textColor = [UIColor colorWithRed:0.612 green:0.965 blue:1 alpha:1];
    [self.contentView addSubview:self.CSMTC_mellowKnollFold];
}


- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan {
    UIView *CSMTC_content = self.contentView;

    [NSLayoutConstraint activateConstraints:@[

        [self.CSMTC_briskValeFold.trailingAnchor constraintEqualToAnchor:CSMTC_content.trailingAnchor constant:-15],
        [self.CSMTC_briskValeFold.topAnchor constraintEqualToAnchor:CSMTC_content.topAnchor constant:26],
        [self.CSMTC_briskValeFold.centerYAnchor constraintEqualToAnchor:CSMTC_content.centerYAnchor],
        [self.CSMTC_briskValeFold.widthAnchor constraintEqualToConstant:48],
        [self.CSMTC_briskValeFold.heightAnchor constraintEqualToConstant:28],
        [self.CSMTC_briskValeFold.bottomAnchor constraintEqualToAnchor:CSMTC_content.bottomAnchor constant:-26],

        [self.CSMTC_wideDellTrail.leadingAnchor constraintEqualToAnchor:CSMTC_content.leadingAnchor constant:15],
        [self.CSMTC_wideDellTrail.topAnchor constraintEqualToAnchor:CSMTC_content.topAnchor constant:18],

        [self.CSMTC_lightHavenClimb.leadingAnchor constraintEqualToAnchor:CSMTC_content.leadingAnchor constant:16],
        [self.CSMTC_lightHavenClimb.bottomAnchor constraintEqualToAnchor:CSMTC_content.bottomAnchor constant:-18],

        [self.CSMTC_mellowKnollFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_lightHavenClimb.trailingAnchor constant:4],
        [self.CSMTC_mellowKnollFold.centerYAnchor constraintEqualToAnchor:self.CSMTC_lightHavenClimb.centerYAnchor],
    ]];
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach:(CSMTCCobaltGrainDataItemModel *)CSMTC_model {

    CSMTCCobaltGrainItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_humbleKnollRise.firstObject;
    self.CSMTC_briskValeFold.image = [CSMTCNexaManager CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_itemModel.CSMTC_freshHollowClimb] ? [UIImage CSMTC_garnetImage:@"CSMTCMELLOW_CSMTC_gentCSMTCMELLOW_leValeBrCSMTCMELLOW_idge".CSMTC_removeMellowCoveSpan] : [UIImage CSMTC_garnetImage:@"CSMTCMELLOW_CSMTC_firmCSMTCMELLOW_HavenCSMTCMELLOW_Crest".CSMTC_removeMellowCoveSpan];
    self.CSMTC_wideDellTrail.text = CSMTC_model.CSMTC_vastValePoint;
    self.CSMTC_lightHavenClimb.text = CSMTC_model.CSMTC_plainHollowPeak;
    self.CSMTC_mellowKnollFold.textColor = [CSMTCNexaManager CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_freshHollowClimb];
    self.CSMTC_mellowKnollFold.text = [NSString stringWithFormat:@"%@", [CSMTCNexaCrypto CSMTC_braveGlenClimbFoldTrackHollowSpan:CSMTC_itemModel.CSMTC_freshHollowClimb]];
    
}

@end
