//
//  CSMTCSlateExploreCollectionCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSlateExploreCollectionCell.h"

@interface CSMTCSlateExploreCollectionCell ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *symbolLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UIImageView *trendImageView;
@property (nonatomic, strong) UIButton *changeButton;

@end

@implementation CSMTCSlateExploreCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 10;
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Subviews

- (void)setupSubviews {

    self.contentView.backgroundColor =
    [UIColor colorWithRed:24/255.0 green:25/255.0 blue:27/255.0 alpha:1];

    /// icon
    self.iconImageView = [[UIImageView alloc] init];
    self.iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.iconImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.iconImageView.clipsToBounds = YES;
    self.iconImageView.layer.cornerRadius = 13;
    [self.contentView addSubview:self.iconImageView];

    /// symbol
    self.symbolLabel = [[UILabel alloc] init];
    self.symbolLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.symbolLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:16];
    self.symbolLabel.textColor = UIColor.whiteColor;
    [self.contentView addSubview:self.symbolLabel];

    /// price
    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.priceLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.priceLabel.textColor =
    [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.priceLabel];

    /// trend image
    self.trendImageView = [[UIImageView alloc] init];
    self.trendImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.trendImageView.contentMode = UIViewContentModeScaleToFill;
    [self.contentView addSubview:self.trendImageView];

    /// change button
    self.changeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.changeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.changeButton.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.changeButton.userInteractionEnabled = NO;
    self.changeButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    self.changeButton.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.contentView addSubview:self.changeButton];
}

#pragma mark - Constraints

- (void)setupConstraints {

    UIView *cv = self.contentView;

    /// iconImageView
    [NSLayoutConstraint activateConstraints:@[
        [self.iconImageView.leadingAnchor constraintEqualToAnchor:cv.leadingAnchor constant:8],
        [self.iconImageView.topAnchor constraintEqualToAnchor:cv.topAnchor constant:21],
        [self.iconImageView.widthAnchor constraintEqualToConstant:26],
        [self.iconImageView.heightAnchor constraintEqualToConstant:26]
    ]];

    /// symbolLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.symbolLabel.leadingAnchor constraintEqualToAnchor:self.iconImageView.trailingAnchor constant:6],
        [self.symbolLabel.topAnchor constraintEqualToAnchor:self.iconImageView.topAnchor constant:-5],
        [self.symbolLabel.trailingAnchor constraintEqualToAnchor:cv.trailingAnchor constant:-9]
    ]];

    /// priceLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.priceLabel.leadingAnchor constraintEqualToAnchor:self.iconImageView.trailingAnchor constant:6],
        [self.priceLabel.topAnchor constraintEqualToAnchor:self.symbolLabel.bottomAnchor constant:2],
        [self.priceLabel.trailingAnchor constraintEqualToAnchor:cv.trailingAnchor constant:-9]
    ]];

    /// trendImageView
    [NSLayoutConstraint activateConstraints:@[
        [self.trendImageView.leadingAnchor constraintEqualToAnchor:cv.leadingAnchor constant:10],
        [self.trendImageView.topAnchor constraintEqualToAnchor:self.priceLabel.bottomAnchor constant:10],
        [self.trendImageView.widthAnchor constraintEqualToConstant:56],
        [self.trendImageView.heightAnchor constraintEqualToConstant:33]
    ]];

    /// changeButton
    [NSLayoutConstraint activateConstraints:@[
        [self.changeButton.leadingAnchor constraintEqualToAnchor:cv.leadingAnchor constant:9],
        [self.changeButton.topAnchor constraintEqualToAnchor:self.trendImageView.bottomAnchor constant:16],
        [self.changeButton.heightAnchor constraintEqualToConstant:16]
    ]];
}
@end
