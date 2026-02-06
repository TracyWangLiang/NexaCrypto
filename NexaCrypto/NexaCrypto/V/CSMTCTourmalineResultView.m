//
//  CSMTCTourmalineResultView.m
//  NexaCrypto
//
//   
//

#import "CSMTCTourmalineResultView.h"
#import "NSString+CSMTCString.h"
@interface CSMTCTourmalineResultView ()

@property (nonatomic, strong) UIView *CSMTC_wideDellTrail;
@property (nonatomic, strong) UILabel *CSMTC_lightHavenClimb;
@property (nonatomic, strong) UITextView *CSMTC_mellowKnollFold;
@property (nonatomic, strong) UILabel *CSMTC_tameRidgeTrail;

@end

@implementation CSMTCTourmalineResultView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self CSMTC_softDellFoldTrailHavenClimbKnollRise];
        [self CSMTC_clearKnollClimbTrailFoldHollowPathSpan];
        [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb];
        [self CSMTC_freshHollowFoldTrailKnollRisePathBluff];
        [self CSMTC_keenCoveTrailFoldKnollClimbPathRise];
    }
    return self;
}

- (void)CSMTC_softDellFoldTrailHavenClimbKnollRise {
    self.CSMTC_wideDellTrail = [[UIView alloc] init];
    self.CSMTC_wideDellTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_wideDellTrail.backgroundColor =
    [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
    self.CSMTC_wideDellTrail.layer.masksToBounds = YES;
    self.CSMTC_wideDellTrail.layer.cornerRadius = 12;
    
    [self addSubview:self.CSMTC_wideDellTrail];
}

- (void)CSMTC_clearKnollClimbTrailFoldHollowPathSpan {
    self.CSMTC_lightHavenClimb = [[UILabel alloc] init];
    self.CSMTC_lightHavenClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_lightHavenClimb.text = @"CSMTCMELLOW_CalcuCSMTCMELLOW_lation ResCSMTCMELLOW_ult".CSMTC_removeMellowCoveSpan;
    self.CSMTC_lightHavenClimb.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_lightHavenClimb.textColor = [UIColor whiteColor];
    
    [self.CSMTC_wideDellTrail addSubview:self.CSMTC_lightHavenClimb];
}

- (void)CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb {
    self.CSMTC_mellowKnollFold = [[UITextView alloc] init];
    self.CSMTC_mellowKnollFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_mellowKnollFold.editable = NO;
    self.CSMTC_mellowKnollFold.backgroundColor = [UIColor clearColor];
    self.CSMTC_mellowKnollFold.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:15];
    self.CSMTC_mellowKnollFold.textColor = [UIColor whiteColor];
    self.CSMTC_mellowKnollFold.text =
    @"CSMTCMELLOW_LorCSMTCMELLOW_em ipsCSMTCMELLOW_um doCSMTCMELLOW_lor sCSMTCMELLOW_it er eCSMTCMELLOW_lit lCSMTCMELLOW_amet, conCSMTCMELLOW_sectetaur cillCSMTCMELLOW_ium adipiCSMTCMELLOW_sicing peCSMTCMELLOW_cu, seCSMTCMELLOW_d dCSMTCMELLOW_o eiusCSMTCMELLOW_mod temCSMTCMELLOW_por incidCSMTCMELLOW_idunt uCSMTCMELLOW_t labCSMTCMELLOW_ore eCSMTCMELLOW_t doCSMTCMELLOW_lore maCSMTCMELLOW_gna aliCSMTCMELLOW_qua.".CSMTC_removeMellowCoveSpan;
    
    [self.CSMTC_wideDellTrail addSubview:self.CSMTC_mellowKnollFold];
}

- (void)CSMTC_freshHollowFoldTrailKnollRisePathBluff {
    self.CSMTC_tameRidgeTrail = [[UILabel alloc] init];
    self.CSMTC_tameRidgeTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_tameRidgeTrail.numberOfLines = 2;
    self.CSMTC_tameRidgeTrail.text =
    @"CSMTCMELLOW_ResuCSMTCMELLOW_lts arCSMTCMELLOW_e fCSMTCMELLOW_or struCSMTCMELLOW_ctural referCSMTCMELLOW_ence onCSMTCMELLOW_ly aCSMTCMELLOW_nd dCSMTCMELLOW_o nCSMTCMELLOW_ot impCSMTCMELLOW_ly perfCSMTCMELLOW_ormance oCSMTCMELLOW_r outcCSMTCMELLOW_omes.".CSMTC_removeMellowCoveSpan;
    self.CSMTC_tameRidgeTrail.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12];
    self.CSMTC_tameRidgeTrail.textColor =
    [UIColor colorWithRed:214/255.0 green:133/255.0 blue:94/255.0 alpha:1];
    
    [self addSubview:self.CSMTC_tameRidgeTrail];
}


- (void)CSMTC_keenCoveTrailFoldKnollClimbPathRise {
    UILayoutGuide *CSMTC_safeArea = self.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[

        [self.CSMTC_wideDellTrail.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.CSMTC_wideDellTrail.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor constant:12],
        [self.CSMTC_wideDellTrail.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor constant:-12],
        [self.CSMTC_wideDellTrail.bottomAnchor constraintEqualToAnchor:self.CSMTC_tameRidgeTrail.topAnchor constant:-12],
        

        [self.CSMTC_lightHavenClimb.topAnchor constraintEqualToAnchor:self.CSMTC_wideDellTrail.topAnchor constant:16],
        [self.CSMTC_lightHavenClimb.leadingAnchor constraintEqualToAnchor:self.CSMTC_wideDellTrail.leadingAnchor constant:12],

        [self.CSMTC_mellowKnollFold.topAnchor constraintEqualToAnchor:self.CSMTC_lightHavenClimb.bottomAnchor constant:11],
        [self.CSMTC_mellowKnollFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_wideDellTrail.leadingAnchor constant:12],
        [self.CSMTC_mellowKnollFold.trailingAnchor constraintEqualToAnchor:self.CSMTC_wideDellTrail.trailingAnchor constant:-12],
        [self.CSMTC_mellowKnollFold.bottomAnchor constraintEqualToAnchor:self.CSMTC_wideDellTrail.bottomAnchor],
     
        [self.CSMTC_tameRidgeTrail.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:20],
        [self.CSMTC_tameRidgeTrail.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-20],
        [self.CSMTC_tameRidgeTrail.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]
    ]];
}

- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_humbleRidgeTrail {
    self.CSMTC_mellowKnollFold.text = CSMTC_humbleRidgeTrail;
}

@end
