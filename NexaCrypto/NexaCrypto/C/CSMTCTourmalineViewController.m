//
//  CSMTCTourmalineViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCTourmalineViewController.h"
#import "CSMTCTourmalineResultView.h"
#import "CSMTCTourmalineTableView.h"

@interface CSMTCTourmalineViewController ()

@property (nonatomic, strong) UIButton *backButton;
@property (nonatomic, strong) CSMTCTourmalineTableView *mainContainerView;
@property (nonatomic, strong) CSMTCTourmalineResultView *overlayContainerView;
@property (nonatomic, strong) UIImageView *heroImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;

@end

@implementation CSMTCTourmalineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self setupBackButton];
    [self setupHeroImageView];
    [self setupTitleLabel];
    [self setupSubtitleLabel];
    [self setupMainContainerView];
    [self setupOverlayContainerView];
    [self setupConstraints];
}


- (void)setupBackButton {
    self.backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.backButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.backButton setImage:[UIImage imageNamed:@"CSMTC_lightHavenFold"]
                     forState:UIControlStateNormal];
    [self.backButton addTarget:self
                        action:@selector(handleBackButtonTap)
              forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.backButton];
}

- (void)setupHeroImageView {
    self.heroImageView = [[UIImageView alloc] initWithImage:
                          [UIImage imageNamed:@"CSMTC_quietKnollRise"]];
    self.heroImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.heroImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubview:self.heroImageView];
}

- (void)setupTitleLabel {
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.text = @"Asset Comparison Matrix";
    self.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:20];
    self.titleLabel.textColor = [UIColor whiteColor];
    
    [self.view addSubview:self.titleLabel];
}

- (void)setupSubtitleLabel {
    self.subtitleLabel = [[UILabel alloc] init];
    self.subtitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.subtitleLabel.text =
    @"Matrix compares crypto assets across structural dimensions such as supply design, network role, and lifecycle context.";
    self.subtitleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.subtitleLabel.textColor =
    [UIColor colorWithWhite:0.725 alpha:1];
    self.subtitleLabel.numberOfLines = 3;
    
    [self.view addSubview:self.subtitleLabel];
}

- (void)setupMainContainerView {
    self.mainContainerView = [[CSMTCTourmalineTableView alloc] init];
    self.mainContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.mainContainerView.backgroundColor =
    [UIColor clearColor];
    [self.mainContainerView.calculationButton addTarget:self action:@selector(CSMTC_mellowKnollFoldTrailHollowPathClimbSpan) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.mainContainerView];
}

- (void)setupOverlayContainerView {
    self.overlayContainerView = [[CSMTCTourmalineResultView alloc] init];
    self.overlayContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.overlayContainerView.backgroundColor =
    [UIColor clearColor];
    self.overlayContainerView.hidden = YES;
    
    [self.view addSubview:self.overlayContainerView];
}

#pragma mark - Constraints

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.view.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        
        // backButton
        [self.backButton.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:15],
        [self.backButton.topAnchor constraintEqualToAnchor:safeArea.topAnchor constant:20],
        [self.backButton.widthAnchor constraintEqualToConstant:38],
        [self.backButton.heightAnchor constraintEqualToConstant:34],
        
        // heroImageView
        [self.heroImageView.topAnchor constraintEqualToAnchor:safeArea.topAnchor constant:32],
        [self.heroImageView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.heroImageView.widthAnchor constraintEqualToConstant:151],
        [self.heroImageView.heightAnchor constraintEqualToConstant:151],
        [self.heroImageView.leadingAnchor constraintEqualToAnchor:self.subtitleLabel.trailingAnchor constant:12],
        
        // titleLabel
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:15],
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.backButton.bottomAnchor constant:8],
        
        // subtitleLabel
        [self.subtitleLabel.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:15],
        [self.subtitleLabel.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor],
        
        // mainContainerView
        [self.mainContainerView.topAnchor constraintEqualToAnchor:self.subtitleLabel.bottomAnchor constant:19],
        [self.mainContainerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.mainContainerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.mainContainerView.bottomAnchor constraintEqualToAnchor:safeArea.bottomAnchor],
        
        // overlayContainerView（完全覆盖 mainContainerView）
        [self.overlayContainerView.topAnchor constraintEqualToAnchor:self.mainContainerView.topAnchor],
        [self.overlayContainerView.leadingAnchor constraintEqualToAnchor:self.mainContainerView.leadingAnchor],
        [self.overlayContainerView.trailingAnchor constraintEqualToAnchor:self.mainContainerView.trailingAnchor],
        [self.overlayContainerView.bottomAnchor constraintEqualToAnchor:self.mainContainerView.bottomAnchor]
    ]];
}

- (void)handleBackButtonTap {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)CSMTC_mellowKnollFoldTrailHollowPathClimbSpan {
    self.overlayContainerView.hidden = NO;
    self.overlayContainerView.alpha = 0.0;
    [UIView animateWithDuration:0.25 animations:^{
           self.mainContainerView.alpha = 0.0;
           self.overlayContainerView.alpha = 1.0;
       } completion:^(BOOL finished) {
           self.mainContainerView.hidden = YES;
           self.overlayContainerView.alpha = 1.0; 
       }];
    
}



@end
