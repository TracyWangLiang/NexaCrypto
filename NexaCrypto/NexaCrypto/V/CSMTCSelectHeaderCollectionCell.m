//
//  CSMTCSelectHeaderCollectionCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCSelectHeaderCollectionCell.h"
#import "CSMTCNexaManager.h"

@interface CSMTCSelectHeaderCollectionCell ()
@property (nonatomic, strong) UILabel *CSMTC_freshHollowFold;

@end


@implementation CSMTCSelectHeaderCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_plainGlenClimbFoldTrackHavenBluff];
    }
    return self;
}

- (void)CSMTC_plainGlenClimbFoldTrackHavenBluff {

    self.contentView.backgroundColor = [UIColor clearColor];

    self.CSMTC_freshHollowFold = [[UILabel alloc] init];
    self.CSMTC_freshHollowFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_freshHollowFold.text = @"CSMTCMELLOW_ToCSMTCMELLOW_p GainCSMTCMELLOW_ers".CSMTC_removeMellowCoveSpan;
    self.CSMTC_freshHollowFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:14];
    self.CSMTC_freshHollowFold.textColor = [UIColor whiteColor];
    self.CSMTC_freshHollowFold.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_freshHollowFold.numberOfLines = 1;
    
    [self.contentView addSubview:self.CSMTC_freshHollowFold];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_freshHollowFold.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        [self.CSMTC_freshHollowFold.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor],
        [self.CSMTC_freshHollowFold.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        [self.CSMTC_freshHollowFold.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor]
    ]];
}

- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_freshHollowClimb CSMTC_steadyCoveRise:(BOOL)CSMTC_steadyCoveRise {
    self.CSMTC_freshHollowFold.text = CSMTC_freshHollowClimb;
    if (CSMTC_steadyCoveRise) {
        self.CSMTC_freshHollowFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:14];
        self.CSMTC_freshHollowFold.textColor = [UIColor whiteColor];
    } else {
        self.CSMTC_freshHollowFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
        self.CSMTC_freshHollowFold.textColor = [UIColor colorWithRed:122/255.0 green:122/255.0 blue:122/255.0 alpha:1];
    }
}

@end
