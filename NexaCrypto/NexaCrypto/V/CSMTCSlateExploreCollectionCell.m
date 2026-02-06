//
//  CSMTCSlateExploreCollectionCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCSlateExploreCollectionCell.h"

@interface CSMTCSlateExploreCollectionCell ()

@property (nonatomic, strong) UIImageView *CSMTC_softCrestLane;
@property (nonatomic, strong) UILabel *CSMTC_clearGlenFold;
@property (nonatomic, strong) UILabel *CSMTC_mistyDellSpan;
@property (nonatomic, strong) UIImageView *CSMTC_sharpKnollTrace;
@property (nonatomic, strong) UIButton *CSMTC_vastValePoint;

@end

@implementation CSMTCSlateExploreCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 10;
        [self CSMTC_quickCoveTrailFoldHavenClimbPathRise];
        [self CSMTC_smartRidgePathFoldTrailKnollRiseBluff];
    }
    return self;
}

- (void)CSMTC_quickCoveTrailFoldHavenClimbPathRise {

    self.contentView.backgroundColor =
    [UIColor colorWithRed:24/255.0 green:25/255.0 blue:27/255.0 alpha:1];

    self.CSMTC_softCrestLane = [[UIImageView alloc] init];
    self.CSMTC_softCrestLane.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_softCrestLane.contentMode = UIViewContentModeScaleAspectFill;
    self.CSMTC_softCrestLane.clipsToBounds = YES;
    self.CSMTC_softCrestLane.layer.cornerRadius = 13;
    [self.contentView addSubview:self.CSMTC_softCrestLane];

    self.CSMTC_clearGlenFold = [[UILabel alloc] init];
    self.CSMTC_clearGlenFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_clearGlenFold.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:16];
    self.CSMTC_clearGlenFold.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.CSMTC_clearGlenFold];

    self.CSMTC_mistyDellSpan = [[UILabel alloc] init];
    self.CSMTC_mistyDellSpan.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_mistyDellSpan.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_mistyDellSpan.textColor =
    [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_mistyDellSpan];

    self.CSMTC_sharpKnollTrace = [[UIImageView alloc] init];
    self.CSMTC_sharpKnollTrace.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_sharpKnollTrace.contentMode = UIViewContentModeScaleToFill;
    [self.contentView addSubview:self.CSMTC_sharpKnollTrace];

    self.CSMTC_vastValePoint = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_vastValePoint.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_vastValePoint.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_vastValePoint.userInteractionEnabled = NO;
    self.CSMTC_vastValePoint.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    self.CSMTC_vastValePoint.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.contentView addSubview:self.CSMTC_vastValePoint];
   
}


- (void)CSMTC_smartRidgePathFoldTrailKnollRiseBluff {

    UIView *CSMTC_plainHollowPeak = self.contentView;

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_softCrestLane.leadingAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.leadingAnchor constant:8],
        [self.CSMTC_softCrestLane.topAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.topAnchor constant:21],
        [self.CSMTC_softCrestLane.widthAnchor constraintEqualToConstant:26],
        [self.CSMTC_softCrestLane.heightAnchor constraintEqualToConstant:26]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_clearGlenFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_softCrestLane.trailingAnchor constant:6],
        [self.CSMTC_clearGlenFold.topAnchor constraintEqualToAnchor:self.CSMTC_softCrestLane.topAnchor constant:-5],
        [self.CSMTC_clearGlenFold.trailingAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.trailingAnchor constant:-9]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_mistyDellSpan.leadingAnchor constraintEqualToAnchor:self.CSMTC_softCrestLane.trailingAnchor constant:6],
        [self.CSMTC_mistyDellSpan.topAnchor constraintEqualToAnchor:self.CSMTC_clearGlenFold.bottomAnchor constant:2],
        [self.CSMTC_mistyDellSpan.trailingAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.trailingAnchor constant:-9]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_sharpKnollTrace.leadingAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.leadingAnchor constant:10],
        [self.CSMTC_sharpKnollTrace.topAnchor constraintEqualToAnchor:self.CSMTC_mistyDellSpan.bottomAnchor constant:10],
        [self.CSMTC_sharpKnollTrace.widthAnchor constraintEqualToConstant:56],
        [self.CSMTC_sharpKnollTrace.heightAnchor constraintEqualToConstant:33]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_vastValePoint.leadingAnchor constraintEqualToAnchor:CSMTC_plainHollowPeak.leadingAnchor constant:9],
        [self.CSMTC_vastValePoint.topAnchor constraintEqualToAnchor:self.CSMTC_sharpKnollTrace.bottomAnchor constant:16],
        [self.CSMTC_vastValePoint.heightAnchor constraintEqualToConstant:16]
    ]];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan:(CSMTCCobaltGrainDataItemModel *)CSMTC_model {
    CSMTCCobaltGrainItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_quotes.firstObject;
    [CSMTCNexaManager CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_model.CSMTC_id completion:^(UIImage * _Nullable image) {
        self.CSMTC_softCrestLane.image = image;
    }];
    self.CSMTC_clearGlenFold.text = CSMTC_model.CSMTC_symbol;
    self.CSMTC_mistyDellSpan.text = [NSString stringWithFormat:@"$%@", [CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_price]];
    self.CSMTC_sharpKnollTrace.image = [CSMTCNexaManager CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_itemModel.CSMTC_percentChange1h] ? [UIImage imageNamed:@"CSMTC_gentleValeBridge"] : [UIImage imageNamed:@"CSMTC_firmHavenCrest"];
    if ([CSMTCNexaManager CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_itemModel.CSMTC_percentChange1h]) {
        [self.CSMTC_vastValePoint setImage:[UIImage imageNamed:@"CSMTC_plainHollowPeak"] forState:UIControlStateNormal];
        [self.CSMTC_vastValePoint setTitle:[NSString stringWithFormat:@" %@%%",[CSMTCNexaCrypto CSMTC_braveGlenClimbFoldTrackHollowSpan:CSMTC_itemModel.CSMTC_percentChange1h]] forState:UIControlStateNormal];
    } else {
        [self.CSMTC_vastValePoint setImage:[UIImage imageNamed:@"CSMTC_wideRidgeTrail"] forState:UIControlStateNormal];
        [self.CSMTC_vastValePoint setTitle:[NSString stringWithFormat:@" %@%%",[CSMTCNexaCrypto CSMTC_braveGlenClimbFoldTrackHollowSpan:CSMTC_itemModel.CSMTC_percentChange1h]] forState:UIControlStateNormal];
    }
    
}

@end
