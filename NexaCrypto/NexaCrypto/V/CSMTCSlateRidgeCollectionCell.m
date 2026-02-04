//
//  CSMTCSlateRidgeCollectionCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSlateRidgeCollectionCell.h"

@interface CSMTCSlateRidgeCollectionCell ()

@property (nonatomic, strong) UILabel *rankLabel;
@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *symbolLabel;
@property (nonatomic, strong) UILabel *priceLabel;

@property (nonatomic, strong) UIView *changeContainer;
@property (nonatomic, strong) UIImageView *changeIcon;
@property (nonatomic, strong) UILabel *changeLabel;

@end

@implementation CSMTCSlateRidgeCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}


- (void)setupSubviews {

    self.contentView.backgroundColor = UIColor.clearColor;

    self.rankLabel = [[UILabel alloc] init];
    self.rankLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.rankLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.rankLabel.textColor = [UIColor colorWithRed:180/255.0 green:180/255.0 blue:180/255.0 alpha:1];
    [self.contentView addSubview:self.rankLabel];
    self.iconImageView = [[UIImageView alloc] init];
    self.iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.iconImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.iconImageView.clipsToBounds = YES;
    self.iconImageView.layer.cornerRadius = 15;
    self.iconImageView.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.iconImageView];
    self.rankLabel.text = @"1";

    /// 名称
    self.nameLabel = [[UILabel alloc] init];
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.nameLabel.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.nameLabel];
    self.nameLabel.text = @"Bitcoin";

    /// 简称
    self.symbolLabel = [[UILabel alloc] init];
    self.symbolLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.symbolLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.symbolLabel.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.symbolLabel];
    self.symbolLabel.text = @"BTC";

    /// 价格
    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.priceLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:15];
    self.priceLabel.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.priceLabel];
    self.priceLabel.text = @"$9,4963.39";

    /// 涨跌容器
    self.changeContainer = [[UIView alloc] init];
    self.changeContainer.translatesAutoresizingMaskIntoConstraints = NO;
    self.changeContainer.backgroundColor =
    [UIColor colorWithRed:253/255.0 green:49/255.0 blue:118/255.0 alpha:1];
    [self.contentView addSubview:self.changeContainer];
    self.changeContainer.layer.masksToBounds = YES;
    self.changeContainer.layer.cornerRadius = 6;

    /// 涨跌图标
    self.changeIcon = [[UIImageView alloc] init];
    self.changeIcon.translatesAutoresizingMaskIntoConstraints = NO;
    self.changeIcon.contentMode = UIViewContentModeScaleAspectFit;
    [self.changeContainer addSubview:self.changeIcon];
    self.changeIcon.image = [UIImage imageNamed:@"CSMTC_wideRidgeTrail"];
    self.changeIcon.highlightedImage = [UIImage imageNamed:@"CSMTC_plainHollowPeak"];

    /// 涨跌文字
    self.changeLabel = [[UILabel alloc] init];
    self.changeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.changeLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.changeLabel.textColor = UIColor.whiteColor;
    [self.changeContainer addSubview:self.changeLabel];
    self.changeLabel.text = @"+0.00%";
}

#pragma mark - Constraints

- (void)setupConstraints {

    UIView *cv = self.contentView;

    /// rankLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.rankLabel.leadingAnchor constraintEqualToAnchor:cv.leadingAnchor constant:8],
        [self.rankLabel.centerYAnchor constraintEqualToAnchor:cv.centerYAnchor]
    ]];

    /// iconImageView
    [NSLayoutConstraint activateConstraints:@[
        [self.iconImageView.leadingAnchor constraintEqualToAnchor:self.rankLabel.trailingAnchor constant:12],
        [self.iconImageView.centerYAnchor constraintEqualToAnchor:cv.centerYAnchor],
        [self.iconImageView.widthAnchor constraintEqualToConstant:30],
        [self.iconImageView.heightAnchor constraintEqualToConstant:30],
        [self.iconImageView.topAnchor constraintEqualToAnchor:cv.topAnchor constant:15],
        [self.iconImageView.bottomAnchor constraintEqualToAnchor:cv.bottomAnchor constant:-15]
    ]];

    /// nameLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.nameLabel.leadingAnchor constraintEqualToAnchor:self.iconImageView.trailingAnchor constant:8],
        [self.nameLabel.topAnchor constraintEqualToAnchor:self.iconImageView.topAnchor constant:-3]
    ]];

    /// symbolLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.symbolLabel.leadingAnchor constraintEqualToAnchor:self.iconImageView.trailingAnchor constant:8],
        [self.symbolLabel.bottomAnchor constraintEqualToAnchor:self.iconImageView.bottomAnchor constant:4]
    ]];

    /// priceLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.priceLabel.centerYAnchor constraintEqualToAnchor:cv.centerYAnchor],
        [self.priceLabel.leadingAnchor constraintEqualToAnchor:self.nameLabel.trailingAnchor constant:85]
    ]];

    /// changeContainer
    [NSLayoutConstraint activateConstraints:@[
        [self.changeContainer.leadingAnchor constraintEqualToAnchor:self.priceLabel.trailingAnchor constant:20],
        [self.changeContainer.trailingAnchor constraintEqualToAnchor:cv.trailingAnchor constant:-12],
        [self.changeContainer.centerYAnchor constraintEqualToAnchor:cv.centerYAnchor],
        [self.changeContainer.heightAnchor constraintEqualToConstant:28]
    ]];

    /// changeIcon
    [NSLayoutConstraint activateConstraints:@[
        [self.changeIcon.leadingAnchor constraintEqualToAnchor:self.changeContainer.leadingAnchor constant:10],
        [self.changeIcon.centerYAnchor constraintEqualToAnchor:self.changeContainer.centerYAnchor],
        [self.changeIcon.widthAnchor constraintEqualToConstant:8],
        [self.changeIcon.heightAnchor constraintEqualToConstant:8]
    ]];

    /// changeLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.changeLabel.leadingAnchor constraintEqualToAnchor:self.changeIcon.trailingAnchor constant:2],
        [self.changeLabel.trailingAnchor constraintEqualToAnchor:self.changeContainer.trailingAnchor constant:-9],
        [self.changeLabel.centerYAnchor constraintEqualToAnchor:self.changeContainer.centerYAnchor]
    ]];
}

@end
