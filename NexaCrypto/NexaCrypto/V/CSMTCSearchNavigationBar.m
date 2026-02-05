//
//  CSMTCSearchNavigationBar.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSearchNavigationBar.h"
#import "CSMTCNexaManager.h"

@interface CSMTCSearchNavigationBar ()

@property (nonatomic, strong) UIView *CSMTC_containerView;
@property (nonatomic, strong) UIImageView *CSMTC_iconImageView;
@property (nonatomic, strong) UILabel *CSMTC_placeholderLabel;
@property (nonatomic, strong) UIButton *CSMTC_overlayButton;

@end

@implementation CSMTCSearchNavigationBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_setupViews];
    }
    return self;
}

- (void)CSMTC_setupViews {
    self.backgroundColor = [UIColor clearColor];
    self.CSMTC_containerView = [[UIView alloc] init];
    self.CSMTC_containerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_containerView.backgroundColor = [UIColor colorWithRed:24/255.0 green:25/255.0 blue:29/255.0 alpha:1];
    self.CSMTC_containerView.layer.masksToBounds = YES;
    self.CSMTC_containerView.layer.cornerRadius = 7;
    [self addSubview:self.CSMTC_containerView];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_containerView.topAnchor constraintEqualToAnchor:self.topAnchor constant:13],
        [self.CSMTC_containerView.leadingAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.leadingAnchor constant:12],
        [self.CSMTC_containerView.trailingAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.trailingAnchor constant:-12],
        [self.CSMTC_containerView.heightAnchor constraintEqualToConstant:36]
    ]];


    self.CSMTC_iconImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CSMTC_briskHarborLoom"]];
    self.CSMTC_iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_iconImageView.clipsToBounds = YES;
    self.CSMTC_iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.CSMTC_containerView addSubview:self.CSMTC_iconImageView];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_iconImageView.leadingAnchor constraintEqualToAnchor:self.CSMTC_containerView.leadingAnchor constant:16],
        [self.CSMTC_iconImageView.centerYAnchor constraintEqualToAnchor:self.CSMTC_containerView.centerYAnchor],
        [self.CSMTC_iconImageView.widthAnchor constraintEqualToConstant:20],
        [self.CSMTC_iconImageView.heightAnchor constraintEqualToConstant:20]
    ]];

    self.CSMTC_placeholderLabel = [[UILabel alloc] init];
    self.CSMTC_placeholderLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_placeholderLabel.text = @"Search";
    self.CSMTC_placeholderLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:13];
    self.CSMTC_placeholderLabel.textColor = [UIColor colorWithRed:90/255.0 green:93/255.0 blue:100/255.0 alpha:1];
    self.CSMTC_placeholderLabel.textAlignment = NSTextAlignmentLeft;
    [self.CSMTC_containerView addSubview:self.CSMTC_placeholderLabel];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_placeholderLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_iconImageView.trailingAnchor constant:9],
        [self.CSMTC_placeholderLabel.centerYAnchor constraintEqualToAnchor:self.CSMTC_containerView.centerYAnchor]
    ]];

    self.CSMTC_overlayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_overlayButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.CSMTC_containerView addSubview:self.CSMTC_overlayButton];
    [self.CSMTC_overlayButton addTarget:self action:@selector(CSMTC_plainGlenClimbFoldTrackHavenBluff) forControlEvents:UIControlEventTouchUpInside];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_overlayButton.topAnchor constraintEqualToAnchor:self.CSMTC_containerView.topAnchor],
        [self.CSMTC_overlayButton.bottomAnchor constraintEqualToAnchor:self.CSMTC_containerView.bottomAnchor],
        [self.CSMTC_overlayButton.leadingAnchor constraintEqualToAnchor:self.CSMTC_containerView.leadingAnchor],
        [self.CSMTC_overlayButton.trailingAnchor constraintEqualToAnchor:self.CSMTC_containerView.trailingAnchor]
    ]];
}

- (void)CSMTC_plainGlenClimbFoldTrackHavenBluff {
    
    NSString *CSMTC_freshHollowFold = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@?", [CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygfbNjyYeeTQFw3QGc"]]];
    
    if ([self.delegate respondsToSelector:@selector(CSMTC_humbleKnollRisePathTrackHavenFold:)]) {
        [self.delegate CSMTC_humbleKnollRisePathTrackHavenFold:CSMTC_freshHollowFold];
    }

}


@end
