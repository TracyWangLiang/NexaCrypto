//
//  CSMTCTourmalineViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCTourmalineViewController.h"
#import "CSMTCTourmalineResultView.h"
#import "CSMTCTourmalineTableView.h"
#import "CSMTCNexaManager.h"

@interface CSMTCTourmalineViewController () <CSMTCTourmalineTableViewDelegate>

@property (nonatomic, strong) UIButton *backButton;
@property (nonatomic, strong) CSMTCTourmalineTableView *mainContainerView;
@property (nonatomic, strong) CSMTCTourmalineResultView *overlayContainerView;
@property (nonatomic, strong) UIImageView *heroImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;

@property (nonatomic, copy) NSString *CSMTC_firmHavenTrail;
@property (nonatomic, copy) NSString *CSMTC_brightValeClimb;
@property (nonatomic, copy) NSString *CSMTC_steadyKnollFold;
@property (nonatomic, copy) NSString *CSMTC_gentleCoveTrail;
@property (nonatomic, copy) NSString *CSMTC_quickDellFold;
@property (nonatomic, copy) NSString *CSMTC_silentValeClimb;
@property (nonatomic, copy) NSString *CSMTC_tameRidgeTrail;


@end

@implementation CSMTCTourmalineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self CSMTC_calmKnollShorePathRiseFoldTrail];
    [self setupBackButton];
    [self setupHeroImageView];
    [self setupTitleLabel];
    [self setupSubtitleLabel];
    [self setupMainContainerView];
    [self setupOverlayContainerView];
    [self setupConstraints];
}

- (void)CSMTC_calmKnollShorePathRiseFoldTrail {
    self.CSMTC_firmHavenTrail = @"ETH";
    self.CSMTC_brightValeClimb = @"Supply Structure";
    self.CSMTC_steadyKnollFold = @"Same Category";
    self.CSMTC_gentleCoveTrail = @"Early Stage";
    self.CSMTC_quickDellFold = @"Current Circulation";
    self.CSMTC_silentValeClimb = @"Structural Balance";
    self.CSMTC_tameRidgeTrail = @"USD";
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
    self.mainContainerView.delegate = self;
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
    
    
    NSString *CSMTC_humbleRidgeTrail = [self analyzeMatrixReportWithAsset:self.CSMTC_firmHavenTrail structureDimension:self.CSMTC_brightValeClimb comparisonScope:self.CSMTC_steadyKnollFold lifecycleContext:self.CSMTC_gentleCoveTrail circulationPerspective:self.CSMTC_quickDellFold dataEmphasis:self.CSMTC_silentValeClimb baseUnit:self.CSMTC_tameRidgeTrail];
    
    [CSMTCLoadingHUD CSMTC_showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CSMTCLoadingHUD CSMTC_dismiss];
        [self.overlayContainerView CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_humbleRidgeTrail];
        self.overlayContainerView.hidden = NO;
        self.overlayContainerView.alpha = 0.0;
        [UIView animateWithDuration:0.25 animations:^{
            self.mainContainerView.alpha = 0.0;
            self.overlayContainerView.alpha = 1.0;
        } completion:^(BOOL finished) {
            self.mainContainerView.hidden = YES;
            self.overlayContainerView.alpha = 1.0;
        }];
        
    });
    
}


- (NSString *)analyzeMatrixReportWithAsset:(NSString *)assetToCompare structureDimension:(NSString *)structureDimension comparisonScope:(NSString *)comparisonScope lifecycleContext:(NSString *)lifecycleContext circulationPerspective:(NSString *)circulationPerspective dataEmphasis:(NSString *)dataEmphasis baseUnit:(NSString *)baseUnit {
    NSMutableString *report = [NSMutableString string];

    [report appendString:@"=== Structure Comparison Table ===\n"];
    [report appendFormat:@"Asset: %@\n", assetToCompare];
    [report appendFormat:@"Structure Dimension: %@\n", structureDimension];
    [report appendFormat:@"Data Emphasis: %@\n\n", dataEmphasis];

    [report appendString:@"=== Structural Difference Summary ===\n"];
    [report appendFormat:@"For the selected asset '%@' and structure dimension '%@', considering the lifecycle context '%@' and circulation perspective '%@', the data emphasis on '%@' highlights key structural aspects. ", assetToCompare, structureDimension, lifecycleContext, circulationPerspective, dataEmphasis];
    [report appendString:@"This summary serves as an abstract representation of structural variation and does not imply performance or outcomes.\n\n"];

    NSUInteger assetHash = [assetToCompare length];
    NSUInteger dimensionHash = [structureDimension length];
    NSUInteger lifecycleHash = [lifecycleContext length];
    NSUInteger circulationHash = [circulationPerspective length];
    NSUInteger emphasisHash = [dataEmphasis length];

    double simulatedIndex = fmod((assetHash * 0.2 + dimensionHash * 0.15 + lifecycleHash * 0.25 + circulationHash * 0.2 + emphasisHash * 0.2), 1.0);
    NSString *indexString = [NSString stringWithFormat:@"%.2f", simulatedIndex];

    [report appendString:@"=== Relative Structure Index ===\n"];
    [report appendFormat:@"%@: %@\n\n", assetToCompare, indexString];

    [report appendString:@"=== Reference Note ===\n"];
    [report appendString:@"Results are for structural reference only and do not imply performance or outcomes.\n"];

    return [report copy];
}

- (void)CSMTC_livelyHavenPathFoldTrailKnollRise:(NSString *)CSMTC_wideDellTrail CSMTC_keenCoveTrail:(NSString *)CSMTC_keenCoveTrail {
    
    if ([CSMTC_wideDellTrail isEqualToString:@"Assets to Compare"]) {
        self.CSMTC_firmHavenTrail = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Structure Dimension"]) {
        self.CSMTC_brightValeClimb = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Comparison Scope"]) {
        self.CSMTC_steadyKnollFold = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Lifecycle Context"]) {
        self.CSMTC_gentleCoveTrail = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Circulation Perspective"]) {
        self.CSMTC_quickDellFold = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Data Emphasis"]) {
        self.CSMTC_silentValeClimb = CSMTC_keenCoveTrail;
    } else if ([CSMTC_wideDellTrail isEqualToString:@"Base Unit"]) {
        self.CSMTC_tameRidgeTrail = CSMTC_keenCoveTrail;
    }
    
}


@end
