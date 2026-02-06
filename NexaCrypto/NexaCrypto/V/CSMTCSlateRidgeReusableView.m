//
//  CSMTCSlateRidgeReusableView.m
//  NexaCrypto
//
//   
//

#import "CSMTCSlateRidgeReusableView.h"
#import "NSString+CSMTCString.h"
@interface CSMTCSlateRidgeReusableView ()

@property (nonatomic, strong) UIImageView *CSMTC_mellowCoveBluff;
@property (nonatomic, strong) UILabel *CSMTC_humbleKnollRise;
@property (nonatomic, strong) UILabel *CSMTC_fairRidgeTrail;

@end

@implementation CSMTCSlateRidgeReusableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_mistyValeClimbTrailFoldShoreKnollSpan];
        [self CSMTC_smartRidgePathFoldTrailKnollRiseBluff];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan {

    self.CSMTC_mellowCoveBluff = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CSMTCMELLOW_CSMTC_mellCSMTCMELLOW_owCoveBCSMTCMELLOW_luff".CSMTC_removeMellowCoveSpan]];
    self.CSMTC_mellowCoveBluff.contentMode = UIViewContentModeScaleAspectFit;
    self.CSMTC_mellowCoveBluff.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_mellowCoveBluff];
 
    self.CSMTC_humbleKnollRise = [[UILabel alloc] init];
    self.CSMTC_humbleKnollRise.text = @"CSMTCMELLOW_AsCSMTCMELLOW_k ACSMTCMELLOW_I tCSMTCMELLOW_o heCSMTCMELLOW_lp yoCSMTCMELLOW_u underCSMTCMELLOW_stand crCSMTCMELLOW_ypto daCSMTCMELLOW_ta".CSMTC_removeMellowCoveSpan;
    self.CSMTC_humbleKnollRise.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:20];
    self.CSMTC_humbleKnollRise.textColor = [UIColor whiteColor];
    self.CSMTC_humbleKnollRise.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_humbleKnollRise.numberOfLines = 2;
    self.CSMTC_humbleKnollRise.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_humbleKnollRise];

    self.CSMTC_wideRidgeTrail = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.CSMTC_wideRidgeTrail setTitle:@"CSMTCMELLOW_ChCSMTCMELLOW_at noCSMTCMELLOW_w".CSMTC_removeMellowCoveSpan forState:UIControlStateNormal];
    [self.CSMTC_wideRidgeTrail setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.CSMTC_wideRidgeTrail.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.CSMTC_wideRidgeTrail.backgroundColor = [UIColor whiteColor];
    self.CSMTC_wideRidgeTrail.layer.masksToBounds = YES;
    self.CSMTC_wideRidgeTrail.layer.cornerRadius = 10;
    self.CSMTC_wideRidgeTrail.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_wideRidgeTrail];
 
    self.CSMTC_fairRidgeTrail = [[UILabel alloc] init];
    self.CSMTC_fairRidgeTrail.text = @"CSMTCMELLOW_TrenCSMTCMELLOW_dinCSMTCMELLOW_g".CSMTC_removeMellowCoveSpan;
    self.CSMTC_fairRidgeTrail.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_fairRidgeTrail.textColor = [UIColor whiteColor];
    self.CSMTC_fairRidgeTrail.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_fairRidgeTrail];
}

- (void)CSMTC_smartRidgePathFoldTrailKnollRiseBluff {
 
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_mellowCoveBluff.topAnchor constraintEqualToAnchor:self.topAnchor constant:62],
        [self.CSMTC_mellowCoveBluff.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:65],
        [self.CSMTC_mellowCoveBluff.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-65],

        [self.CSMTC_mellowCoveBluff.heightAnchor constraintEqualToAnchor:self.CSMTC_mellowCoveBluff.widthAnchor multiplier:139.0 / 246.0]
    ]];
    

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_humbleKnollRise.topAnchor constraintEqualToAnchor:self.CSMTC_mellowCoveBluff.bottomAnchor constant:37],
        [self.CSMTC_humbleKnollRise.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:55],
        [self.CSMTC_humbleKnollRise.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-55],
        [self.CSMTC_humbleKnollRise.heightAnchor constraintEqualToConstant:48]
    ]];
    

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_wideRidgeTrail.topAnchor constraintEqualToAnchor:self.CSMTC_humbleKnollRise.bottomAnchor constant:20],
        [self.CSMTC_wideRidgeTrail.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.CSMTC_wideRidgeTrail.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-12],

        [self.CSMTC_wideRidgeTrail.heightAnchor constraintEqualToAnchor:self.CSMTC_wideRidgeTrail.widthAnchor multiplier:44.0 / 351.0]
    ]];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_fairRidgeTrail.topAnchor constraintEqualToAnchor:self.CSMTC_wideRidgeTrail.bottomAnchor constant:28],
        [self.CSMTC_fairRidgeTrail.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.CSMTC_fairRidgeTrail.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-2],
        [self.CSMTC_fairRidgeTrail.heightAnchor constraintEqualToConstant:20]
    ]];
}


@end
