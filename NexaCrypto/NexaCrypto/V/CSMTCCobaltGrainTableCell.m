//
//  CSMTCCobaltGrainTableCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCCobaltGrainTableCell.h"

@interface CSMTCCobaltGrainTableCell ()

@property (nonatomic, strong) UIImageView *CSMTC_iconImageView;
@property (nonatomic, strong) UILabel *CSMTC_nameLabel;
@property (nonatomic, strong) UILabel *CSMTC_badgeLabel;
@property (nonatomic, strong) UILabel *CSMTC_symbolLabel;
@property (nonatomic, strong) UIImageView *CSMTC_trendImageView;
@property (nonatomic, strong) UILabel *CSMTC_changeLabel;
@property (nonatomic, strong) UILabel *CSMTC_priceLabel;
@property (nonatomic, strong) UILabel *CSMTC_marketCapLabel;

@end

@implementation CSMTCCobaltGrainTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        [self CSMTC_setupSubviews];
        [self CSMTC_setupConstraints];
    }
    return self;
}

#pragma mark - Subviews

- (void)CSMTC_setupSubviews {
    // icon
    self.CSMTC_iconImageView = [[UIImageView alloc] init];
    self.CSMTC_iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.CSMTC_iconImageView];
    self.CSMTC_iconImageView.backgroundColor = [UIColor redColor];
    self.CSMTC_iconImageView.layer.masksToBounds = YES;
    self.CSMTC_iconImageView.layer.cornerRadius = 15;

    // name
    self.CSMTC_nameLabel = [[UILabel alloc] init];
    self.CSMTC_nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_nameLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.CSMTC_nameLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CSMTC_nameLabel];
    self.CSMTC_nameLabel.text = @"Bitcoin";

    // badge
    self.CSMTC_badgeLabel = [[UILabel alloc] init];
    self.CSMTC_badgeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_badgeLabel.font = [UIFont systemFontOfSize:12];
    self.CSMTC_badgeLabel.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_badgeLabel.textColor = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:1];
    self.CSMTC_badgeLabel.backgroundColor = [UIColor colorWithRed:68/255.0 green:68/255.0 blue:68/255.0 alpha:1];
    self.CSMTC_badgeLabel.layer.cornerRadius = 2;
    self.CSMTC_badgeLabel.layer.masksToBounds = YES;
    [self.contentView addSubview:self.CSMTC_badgeLabel];
    self.CSMTC_badgeLabel.text = @"1";

    // symbol
    self.CSMTC_symbolLabel = [[UILabel alloc] init];
    self.CSMTC_symbolLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_symbolLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_symbolLabel.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_symbolLabel];
    self.CSMTC_symbolLabel.text = @"BTC";

    // trend image
    self.CSMTC_trendImageView = [[UIImageView alloc] init];
    self.CSMTC_trendImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_trendImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.CSMTC_trendImageView];
    self.CSMTC_trendImageView.image = [UIImage imageNamed:@"CSMTC_calmKnollShore"];
    self.CSMTC_trendImageView.highlightedImage = [UIImage imageNamed:@"CSMTC_steadyCoveRise"];

    // change
    self.CSMTC_changeLabel = [[UILabel alloc] init];
    self.CSMTC_changeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_changeLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_changeLabel.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_changeLabel];

    self.CSMTC_changeLabel.text = @"0.00";
    
    // price
    self.CSMTC_priceLabel = [[UILabel alloc] init];
    self.CSMTC_priceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_priceLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.CSMTC_priceLabel.textColor = [UIColor whiteColor];
    self.CSMTC_priceLabel.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.CSMTC_priceLabel];
    self.CSMTC_priceLabel.text = @"$9,4963.39";

    // market cap
    self.CSMTC_marketCapLabel = [[UILabel alloc] init];
    self.CSMTC_marketCapLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_marketCapLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_marketCapLabel.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    self.CSMTC_marketCapLabel.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.CSMTC_marketCapLabel];
    self.CSMTC_marketCapLabel.text = @"Mkt Cap: $134,495.00";
}

#pragma mark - Constraints

- (void)CSMTC_setupConstraints {
    UIView *content = self.contentView;

    [NSLayoutConstraint activateConstraints:@[
        // icon
        [self.CSMTC_iconImageView.leadingAnchor constraintEqualToAnchor:content.leadingAnchor constant:12],
        [self.CSMTC_iconImageView.centerYAnchor constraintEqualToAnchor:content.centerYAnchor],
        [self.CSMTC_iconImageView.widthAnchor constraintEqualToConstant:30],
        [self.CSMTC_iconImageView.heightAnchor constraintEqualToConstant:30],
        [self.CSMTC_iconImageView.topAnchor constraintEqualToAnchor:content.topAnchor constant:10],
        [self.CSMTC_iconImageView.bottomAnchor constraintEqualToAnchor:content.bottomAnchor constant:-10],

        // name
        [self.CSMTC_nameLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_iconImageView.trailingAnchor constant:8],
        [self.CSMTC_nameLabel.topAnchor constraintEqualToAnchor:self.CSMTC_iconImageView.topAnchor constant:-4],

        // badge
        [self.CSMTC_badgeLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_iconImageView.trailingAnchor constant:8],
        [self.CSMTC_badgeLabel.bottomAnchor constraintEqualToAnchor:self.CSMTC_iconImageView.bottomAnchor constant:5],
        [self.CSMTC_badgeLabel.widthAnchor constraintEqualToConstant:18],
        [self.CSMTC_badgeLabel.heightAnchor constraintEqualToConstant:16],

        // symbol
        [self.CSMTC_symbolLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_badgeLabel.trailingAnchor constant:4],
        [self.CSMTC_symbolLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_badgeLabel.centerYAnchor],

        // trend
        [self.CSMTC_trendImageView.leadingAnchor constraintEqualToAnchor:self.CSMTC_symbolLabel.trailingAnchor constant:8],
        [self.CSMTC_trendImageView.centerYAnchor constraintEqualToAnchor:self.CSMTC_symbolLabel.centerYAnchor],
        [self.CSMTC_trendImageView.widthAnchor constraintEqualToConstant:12],
        [self.CSMTC_trendImageView.heightAnchor constraintEqualToConstant:12],

        // change
        [self.CSMTC_changeLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_trendImageView.trailingAnchor constant:4],
        [self.CSMTC_changeLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_trendImageView.centerYAnchor],

        // price
        [self.CSMTC_priceLabel.trailingAnchor constraintEqualToAnchor:content.trailingAnchor constant:-12],
        [self.CSMTC_priceLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_nameLabel.centerYAnchor],

        // market cap
        [self.CSMTC_marketCapLabel.trailingAnchor constraintEqualToAnchor:content.trailingAnchor constant:-12],
        [self.CSMTC_marketCapLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_changeLabel.centerYAnchor]
    ]];
}


@end
