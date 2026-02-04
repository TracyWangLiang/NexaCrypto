//
//  CSMTCCobaltGrainCollectionCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCCobaltGrainCollectionCell.h"

@interface CSMTCCobaltGrainCollectionCell ()

@property (nonatomic, strong) UIImageView *CSMTC_backgroundImageView;
@property (nonatomic, strong) UILabel *CSMTC_nameLabel;
@property (nonatomic, strong) UILabel *CSMTC_symbolLabel;
@property (nonatomic, strong) UILabel *CSMTC_changeLabel;

@end

@implementation CSMTCCobaltGrainCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 6;
        [self CSMTC_setupSubviews];
        [self CSMTC_setupConstraints];
    }
    return self;
}


- (void)CSMTC_setupSubviews {
    // background image
    self.CSMTC_backgroundImageView = [[UIImageView alloc] init];
    self.CSMTC_backgroundImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_backgroundImageView.contentMode = UIViewContentModeScaleToFill;
    [self.contentView addSubview:self.CSMTC_backgroundImageView];
    self.CSMTC_backgroundImageView.image = [UIImage imageNamed:@"CSMTC_firmHavenCrest"];
//    self.CSMTC_backgroundImageView.highlightedImage = [UIImage imageNamed:@"CSMTC_gentleValeBridge"];

    // name
    self.CSMTC_nameLabel = [[UILabel alloc] init];
    self.CSMTC_nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_nameLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_nameLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CSMTC_nameLabel];

    // symbol
    self.CSMTC_symbolLabel = [[UILabel alloc] init];
    self.CSMTC_symbolLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_symbolLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
    self.CSMTC_symbolLabel.textColor = [UIColor colorWithRed:0.631 green:0.631 blue:0.631 alpha:1];
    [self.contentView addSubview:self.CSMTC_symbolLabel];

    // change
    self.CSMTC_changeLabel = [[UILabel alloc] init];
    self.CSMTC_changeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_changeLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_changeLabel.textColor = [UIColor colorWithRed:0.612 green:0.965 blue:1 alpha:1];
    [self.contentView addSubview:self.CSMTC_changeLabel];
}

#pragma mark - Constraints

- (void)CSMTC_setupConstraints {
    UIView *content = self.contentView;

    [NSLayoutConstraint activateConstraints:@[
        // background image
        [self.CSMTC_backgroundImageView.trailingAnchor constraintEqualToAnchor:content.trailingAnchor constant:-15],
        [self.CSMTC_backgroundImageView.topAnchor constraintEqualToAnchor:content.topAnchor constant:26],
        [self.CSMTC_backgroundImageView.centerYAnchor constraintEqualToAnchor:content.centerYAnchor],
        [self.CSMTC_backgroundImageView.widthAnchor constraintEqualToConstant:48],
        [self.CSMTC_backgroundImageView.heightAnchor constraintEqualToConstant:28],
        [self.CSMTC_backgroundImageView.bottomAnchor constraintEqualToAnchor:content.bottomAnchor constant:-26],

        // name
        [self.CSMTC_nameLabel.leadingAnchor constraintEqualToAnchor:content.leadingAnchor constant:15],
        [self.CSMTC_nameLabel.topAnchor constraintEqualToAnchor:content.topAnchor constant:18],

        // symbol
        [self.CSMTC_symbolLabel.leadingAnchor constraintEqualToAnchor:content.leadingAnchor constant:16],
        [self.CSMTC_symbolLabel.bottomAnchor constraintEqualToAnchor:content.bottomAnchor constant:-18],

        // change
        [self.CSMTC_changeLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_symbolLabel.trailingAnchor constant:4],
        [self.CSMTC_changeLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_symbolLabel.centerYAnchor],
    ]];
}

@end
