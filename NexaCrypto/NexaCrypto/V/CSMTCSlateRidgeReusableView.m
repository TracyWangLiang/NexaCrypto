//
//  CSMTCSlateRidgeReusableView.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSlateRidgeReusableView.h"

@interface CSMTCSlateRidgeReusableView ()

@property (nonatomic, strong) UIImageView *mellowImageView;
@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, strong) UILabel *trendingLabel;

@end

@implementation CSMTCSlateRidgeReusableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
        [self setupConstraints];
//        self.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setupSubviews {
    // 1. Image
    self.mellowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CSMTC_mellowCoveBluff"]];
    self.mellowImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.mellowImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.mellowImageView];
    
    // 2. Description Label
    self.descriptionLabel = [[UILabel alloc] init];
    self.descriptionLabel.text = @"Ask AI to help you understand crypto data";
    self.descriptionLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:20];
    self.descriptionLabel.textColor = [UIColor whiteColor];
    self.descriptionLabel.textAlignment = NSTextAlignmentCenter;
    self.descriptionLabel.numberOfLines = 2;
    self.descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.descriptionLabel];
    
    // 3. Chat Button
    self.chatButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.chatButton setTitle:@"Chat now" forState:UIControlStateNormal];
    [self.chatButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.chatButton.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.chatButton.backgroundColor = [UIColor whiteColor];
    self.chatButton.layer.masksToBounds = YES;
    self.chatButton.layer.cornerRadius = 10;
    self.chatButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.chatButton];
    
    // 4. Trending Label
    self.trendingLabel = [[UILabel alloc] init];
    self.trendingLabel.text = @"Trending";
    self.trendingLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.trendingLabel.textColor = [UIColor whiteColor];
    self.trendingLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.trendingLabel];
}

- (void)setupConstraints {
    UILayoutGuide *guide = self.safeAreaLayoutGuide;
    
    // 1. mellowImageView
    [NSLayoutConstraint activateConstraints:@[
        [self.mellowImageView.topAnchor constraintEqualToAnchor:self.topAnchor constant:62],
        [self.mellowImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:65],
        [self.mellowImageView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-65],
        // 保持宽高比 246:139
        [self.mellowImageView.heightAnchor constraintEqualToAnchor:self.mellowImageView.widthAnchor multiplier:139.0 / 246.0]
    ]];
    
    // 2. descriptionLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.descriptionLabel.topAnchor constraintEqualToAnchor:self.mellowImageView.bottomAnchor constant:37],
        [self.descriptionLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:55],
        [self.descriptionLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-55],
        [self.descriptionLabel.heightAnchor constraintEqualToConstant:48]
    ]];
    
    // 3. chatButton
    [NSLayoutConstraint activateConstraints:@[
        [self.chatButton.topAnchor constraintEqualToAnchor:self.descriptionLabel.bottomAnchor constant:20],
        [self.chatButton.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.chatButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-12],
        // 宽高比 351:44
        [self.chatButton.heightAnchor constraintEqualToAnchor:self.chatButton.widthAnchor multiplier:44.0 / 351.0]
    ]];
    
    // 4. trendingLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.trendingLabel.topAnchor constraintEqualToAnchor:self.chatButton.bottomAnchor constant:28],
        [self.trendingLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.trendingLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-2],
        [self.trendingLabel.heightAnchor constraintEqualToConstant:20]
    ]];
}


@end
