//
//  CSMTCSearchNavigationBar.m
//  NexaCrypto
//
//   
//

#import "CSMTCSearchNavigationBar.h"
#import "CSMTCNexaManager.h"

@interface CSMTCSearchNavigationBar ()

@property (nonatomic, strong) UIView *CSMTC_briskHarborLoom;
@property (nonatomic, strong) UIImageView *CSMTC_silentHarborGlen;
@property (nonatomic, strong) UILabel *CSMTC_firmHavenCrest;
@property (nonatomic, strong) UIButton *CSMTC_gentleValeBridge;

@end

@implementation CSMTCSearchNavigationBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_briskDellLaneShoreTrackHollowSpan];
    }
    return self;
}

- (void)CSMTC_briskDellLaneShoreTrackHollowSpan {
    self.backgroundColor = [UIColor clearColor];
    self.CSMTC_briskHarborLoom = [[UIView alloc] init];
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.backgroundColor = [UIColor colorWithRed:24/255.0 green:25/255.0 blue:29/255.0 alpha:1];
    self.CSMTC_briskHarborLoom.layer.masksToBounds = YES;
    self.CSMTC_briskHarborLoom.layer.cornerRadius = 7;
    [self addSubview:self.CSMTC_briskHarborLoom];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_briskHarborLoom.topAnchor constraintEqualToAnchor:self.topAnchor constant:13],
        [self.CSMTC_briskHarborLoom.leadingAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.leadingAnchor constant:12],
        [self.CSMTC_briskHarborLoom.trailingAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.trailingAnchor constant:-12],
        [self.CSMTC_briskHarborLoom.heightAnchor constraintEqualToConstant:36]
    ]];


    self.CSMTC_silentHarborGlen = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CSMTCMELLOW_CSMTC_briskCSMTCMELLOW_HarborLCSMTCMELLOW_oom".CSMTC_removeMellowCoveSpan]];
    self.CSMTC_silentHarborGlen.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentHarborGlen.clipsToBounds = YES;
    self.CSMTC_silentHarborGlen.contentMode = UIViewContentModeScaleAspectFit;
    [self.CSMTC_briskHarborLoom addSubview:self.CSMTC_silentHarborGlen];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_silentHarborGlen.leadingAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.leadingAnchor constant:16],
        [self.CSMTC_silentHarborGlen.centerYAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.centerYAnchor],
        [self.CSMTC_silentHarborGlen.widthAnchor constraintEqualToConstant:20],
        [self.CSMTC_silentHarborGlen.heightAnchor constraintEqualToConstant:20]
    ]];

    self.CSMTC_firmHavenCrest = [[UILabel alloc] init];
    self.CSMTC_firmHavenCrest.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_firmHavenCrest.text = @"CSMTCMELLOW_SeaCSMTCMELLOW_rcCSMTCMELLOW_h".CSMTC_removeMellowCoveSpan;
    self.CSMTC_firmHavenCrest.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:13];
    self.CSMTC_firmHavenCrest.textColor = [UIColor colorWithRed:90/255.0 green:93/255.0 blue:100/255.0 alpha:1];
    self.CSMTC_firmHavenCrest.textAlignment = NSTextAlignmentLeft;
    [self.CSMTC_briskHarborLoom addSubview:self.CSMTC_firmHavenCrest];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_firmHavenCrest.leadingAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.trailingAnchor constant:9],
        [self.CSMTC_firmHavenCrest.centerYAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.centerYAnchor]
    ]];

    self.CSMTC_gentleValeBridge = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_gentleValeBridge.translatesAutoresizingMaskIntoConstraints = NO;
    [self.CSMTC_briskHarborLoom addSubview:self.CSMTC_gentleValeBridge];
    [self.CSMTC_gentleValeBridge addTarget:self action:@selector(CSMTC_plainGlenClimbFoldTrackHavenBluff) forControlEvents:UIControlEventTouchUpInside];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_gentleValeBridge.topAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.topAnchor],
        [self.CSMTC_gentleValeBridge.bottomAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.bottomAnchor],
        [self.CSMTC_gentleValeBridge.leadingAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.leadingAnchor],
        [self.CSMTC_gentleValeBridge.trailingAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.trailingAnchor]
    ]];
}

- (void)CSMTC_plainGlenClimbFoldTrackHavenBluff {
    
    NSString *CSMTC_freshHollowFold = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@?", [CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygfbNjyYeeTQFw3QGc"]]];
    
    if ([self.delegate respondsToSelector:@selector(CSMTC_humbleKnollRisePathTrackHavenFold:)]) {
        [self.delegate CSMTC_humbleKnollRisePathTrackHavenFold:CSMTC_freshHollowFold];
    }

}


@end
