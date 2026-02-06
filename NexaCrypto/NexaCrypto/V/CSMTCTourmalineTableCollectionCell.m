//
//  CSMTCTourmalineTableCollectionCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCTourmalineTableCollectionCell.h"

@interface CSMTCTourmalineTableCollectionCell ()

@property (nonatomic, strong) UILabel *CSMTC_lightHavenClimb;

@end

@implementation CSMTCTourmalineTableCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 4;
        self.layer.borderWidth = 1.0;
        [self CSMTC_livelyValeTrailFoldBluffKnollPathRise];
        [self CSMTC_softDellFoldTrailHavenClimbKnollRise];
    }
    return self;
}

- (void)CSMTC_livelyValeTrailFoldBluffKnollPathRise {
    
    self.contentView.backgroundColor = [UIColor clearColor];
    self.CSMTC_lightHavenClimb = [[UILabel alloc] init];
    self.CSMTC_lightHavenClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_lightHavenClimb.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_lightHavenClimb.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:15];
    self.CSMTC_lightHavenClimb.textColor = [UIColor whiteColor];
    self.CSMTC_lightHavenClimb.numberOfLines = 1;
    
    [self.contentView addSubview:self.CSMTC_lightHavenClimb];
}


- (void)CSMTC_softDellFoldTrailHavenClimbKnollRise {
    
    [NSLayoutConstraint activateConstraints:@[
   
        [self.CSMTC_lightHavenClimb.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        
        [self.CSMTC_lightHavenClimb.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor],
        
        [self.CSMTC_lightHavenClimb.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        
        [self.CSMTC_lightHavenClimb.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor]
    ]];
}

- (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise:(NSString *)CSMTC_firmHavenTrail CSMTC_brightValeClimb:(BOOL)CSMTC_brightValeClimb {
    self.CSMTC_lightHavenClimb.text = CSMTC_firmHavenTrail;
    if (CSMTC_brightValeClimb) {
        self.CSMTC_lightHavenClimb.textColor = [UIColor whiteColor];
        self.layer.borderColor = [[UIColor whiteColor] CGColor];
    } else {
        self.CSMTC_lightHavenClimb.textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.45];
        self.layer.borderColor = [UIColor colorWithRed:42/255.0 green:43/255.0 blue:48/255.0 alpha:1].CGColor;
    }
}

@end
