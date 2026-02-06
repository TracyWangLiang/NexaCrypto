//
//  CSMTCMicaShoreTableCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCMicaShoreTableCell.h"

@interface CSMTCMicaShoreTableCell ()

@property (nonatomic, strong) UIImageView *CSMTC_gentleCoveTrail;
@property (nonatomic, strong) UILabel *CSMTC_steadyKnollFold;
@property (nonatomic, strong) UILabel *CSMTC_brightValeClimb;
@property (nonatomic, strong) UILabel *CSMTC_firmHavenTrail;

@end

@implementation CSMTCMicaShoreTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        [self CSMTC_livelyHavenPathFoldTrailKnollRise];
        [self CSMTC_braveGlenClimbFoldTrackHollowSpan];
    }
    return self;
}


- (void)CSMTC_livelyHavenPathFoldTrailKnollRise {

    self.CSMTC_gentleCoveTrail = [[UIImageView alloc] init];
    self.CSMTC_gentleCoveTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_gentleCoveTrail.contentMode = UIViewContentModeScaleAspectFill;
    self.CSMTC_gentleCoveTrail.clipsToBounds = YES;
    [self.contentView addSubview:self.CSMTC_gentleCoveTrail];
    self.CSMTC_gentleCoveTrail.layer.cornerRadius = 6;

    self.CSMTC_steadyKnollFold = [[UILabel alloc] init];
    self.CSMTC_steadyKnollFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_steadyKnollFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_steadyKnollFold.textColor = UIColor.whiteColor;
    self.CSMTC_steadyKnollFold.numberOfLines = 2;
    self.CSMTC_steadyKnollFold.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.CSMTC_steadyKnollFold];

    self.CSMTC_brightValeClimb = [[UILabel alloc] init];
    self.CSMTC_brightValeClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_brightValeClimb.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
    self.CSMTC_brightValeClimb.textColor =
    [UIColor colorWithRed:0.831 green:0.831 blue:0.831 alpha:1];
    self.CSMTC_brightValeClimb.numberOfLines = 3;
    self.CSMTC_brightValeClimb.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.CSMTC_brightValeClimb];

    self.CSMTC_firmHavenTrail = [[UILabel alloc] init];
    self.CSMTC_firmHavenTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_firmHavenTrail.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_firmHavenTrail.textColor =
    [UIColor colorWithRed:0.455 green:0.455 blue:0.455 alpha:1];
    [self.contentView addSubview:self.CSMTC_firmHavenTrail];
}


- (void)CSMTC_braveGlenClimbFoldTrackHollowSpan {

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_gentleCoveTrail.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:12],
        [self.CSMTC_gentleCoveTrail.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:16],
        [self.CSMTC_gentleCoveTrail.widthAnchor constraintEqualToConstant:90],
        [self.CSMTC_gentleCoveTrail.heightAnchor constraintEqualToConstant:90]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_steadyKnollFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.trailingAnchor constant:10],
        [self.CSMTC_steadyKnollFold.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-12],
        [self.CSMTC_steadyKnollFold.topAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.topAnchor constant:-5]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_brightValeClimb.leadingAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.trailingAnchor constant:10],
        [self.CSMTC_brightValeClimb.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-12],
        [self.CSMTC_brightValeClimb.topAnchor constraintEqualToAnchor:self.CSMTC_steadyKnollFold.bottomAnchor constant:6]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_firmHavenTrail.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:12],
        [self.CSMTC_firmHavenTrail.topAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.bottomAnchor constant:12],
        [self.CSMTC_firmHavenTrail.heightAnchor constraintEqualToConstant:16],
        [self.CSMTC_firmHavenTrail.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-18]
    ]];
}

- (void)CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:(CSMTCMicaShoreItemModel *)CSMTC_itemModel {
    
    if (CSMTC_itemModel.CSMTC_cityContours.count > 0) {
        [CSMTCNexaManager CSMTC_gentleCoveTrailFoldKnollPathSpan:CSMTC_itemModel.CSMTC_cityContours.firstObject CSMTC_placeholder:nil completion:^(UIImage * _Nullable image) {
            self.CSMTC_gentleCoveTrail.image = image;
        }];
    }
    self.CSMTC_steadyKnollFold.text = CSMTC_itemModel.CSMTC_urbanHorizons;
    self.CSMTC_brightValeClimb.text = CSMTC_itemModel.CSMTC_cityImpressions;
    self.CSMTC_firmHavenTrail.text = [NSString stringWithFormat:@"%@ / %@ Read", [CSMTCNexaManager CSMTC_smartRidgePathFoldTrailKnollRiseBluff:CSMTC_itemModel.CSMTC_streetMoments], CSMTC_itemModel.CSMTC_cityExpressions];
    
}


@end
