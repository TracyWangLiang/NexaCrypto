//
//  CSMTCCoralSpireTableCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCCoralSpireTableCell.h"

@interface CSMTCCoralSpireTableCell ()

@property (nonatomic, strong) UIImageView *CSMTC_silentValeClimb;
@property (nonatomic, strong) UILabel *CSMTC_quickDellFold;
@property (nonatomic, strong) UIImageView *CSMTC_gentleCoveTrail;

@end

@implementation CSMTCCoralSpireTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor =[UIColor clearColor];
        [self CSMTC_briskValeFoldTrailHollowClimbKnollPath];
        [self CSMTC_wideDellTrailFoldKnollClimbHollowPath];
    }
    return self;
}


- (void)CSMTC_briskValeFoldTrailHollowClimbKnollPath {
    self.selectionStyle = UITableViewCellSelectionStyleNone;

    self.CSMTC_silentValeClimb = [[UIImageView alloc] init];
    self.CSMTC_silentValeClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentValeClimb.contentMode = UIViewContentModeScaleAspectFill;
    [self.contentView addSubview:self.CSMTC_silentValeClimb];
    self.CSMTC_silentValeClimb.layer.masksToBounds = YES;
    self.CSMTC_silentValeClimb.layer.cornerRadius = 15;

    self.CSMTC_quickDellFold = [[UILabel alloc] init];
    self.CSMTC_quickDellFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_quickDellFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.CSMTC_quickDellFold.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.CSMTC_quickDellFold];

    self.CSMTC_gentleCoveTrail = [[UIImageView alloc] init];
    self.CSMTC_gentleCoveTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_gentleCoveTrail.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.CSMTC_gentleCoveTrail];
    self.CSMTC_gentleCoveTrail.image = [UIImage imageNamed:@"CSMTCMELLOW_CSMTC_steaCSMTCMELLOW_dyValeCSMTCMELLOW_Bluff".CSMTC_removeMellowCoveSpan];
    self.CSMTC_gentleCoveTrail.highlightedImage = [UIImage imageNamed:@"CSMTCMELLOW_CSMTC_lighCSMTCMELLOW_tHollCSMTCMELLOW_owTrack".CSMTC_removeMellowCoveSpan];
}

- (void)CSMTC_wideDellTrailFoldKnollClimbHollowPath {
    UILayoutGuide *CSMTC_safeArea = self.contentView.safeAreaLayoutGuide;

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_silentValeClimb.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor constant:12],
        [self.CSMTC_silentValeClimb.centerYAnchor constraintEqualToAnchor:CSMTC_safeArea.centerYAnchor],
        [self.CSMTC_silentValeClimb.widthAnchor constraintEqualToConstant:30],
        [self.CSMTC_silentValeClimb.heightAnchor constraintEqualToConstant:30],
        [self.CSMTC_silentValeClimb.topAnchor constraintEqualToAnchor:CSMTC_safeArea.topAnchor constant:15],
        [self.CSMTC_silentValeClimb.bottomAnchor constraintEqualToAnchor:CSMTC_safeArea.bottomAnchor constant:-15],
        
        [self.CSMTC_quickDellFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_silentValeClimb.trailingAnchor constant:8],
        [self.CSMTC_quickDellFold.centerYAnchor constraintEqualToAnchor:self.CSMTC_silentValeClimb.centerYAnchor],

        [self.CSMTC_gentleCoveTrail.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor constant:-12],
        [self.CSMTC_gentleCoveTrail.centerYAnchor constraintEqualToAnchor:CSMTC_safeArea.centerYAnchor],
        [self.CSMTC_gentleCoveTrail.widthAnchor constraintEqualToConstant:20],
        [self.CSMTC_gentleCoveTrail.heightAnchor constraintEqualToConstant:20],
    ]];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan:(CSMTCCobaltGrainDataItemModel *)CSMTC_model {
    [CSMTCNexaManager CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_model.CSMTC_sharpKnollTrace completion:^(UIImage * _Nullable image) {
        self.CSMTC_silentValeClimb.image = image;
    }];
    self.CSMTC_quickDellFold.text = CSMTC_model.CSMTC_vastValePoint;
    self.CSMTC_gentleCoveTrail.highlighted = [self CSMTC_lightHavenClimbFoldTrailKnollRiseBluff:CSMTC_model CSMTC_quickDellFold:[CSMTCNexaManager CSMTC_softGlenPathFoldHavenClimbRise]];
    
}

- (BOOL)CSMTC_lightHavenClimbFoldTrailKnollRiseBluff:(CSMTCCobaltGrainDataItemModel *)CSMTC_gentleCoveTrail CSMTC_quickDellFold:(NSArray *)CSMTC_quickDellFold {
    if (!CSMTC_gentleCoveTrail || !CSMTC_quickDellFold || CSMTC_quickDellFold.count == 0) return NO;
    for (CSMTCCobaltGrainDataItemModel *CSMTC_steadyKnollFold in CSMTC_quickDellFold) {
        if ([CSMTC_steadyKnollFold.CSMTC_sharpKnollTrace isEqualToString:CSMTC_gentleCoveTrail.CSMTC_sharpKnollTrace]) {
            return YES;
        }
    }
    return NO;
}

@end
