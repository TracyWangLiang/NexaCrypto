//
//  CSMTCTourmalineResultView.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCTourmalineResultView.h"

@interface CSMTCTourmalineResultView ()

@property (nonatomic, strong) UIView *contentContainerView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextView *resultTextView;
@property (nonatomic, strong) UILabel *disclaimerLabel;

@end

@implementation CSMTCTourmalineResultView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setupContentContainerView];
        [self setupTitleLabel];
        [self setupResultTextView];
        [self setupDisclaimerLabel];
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Subviews

- (void)setupContentContainerView {
    self.contentContainerView = [[UIView alloc] init];
    self.contentContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.contentContainerView.backgroundColor =
    [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
    self.contentContainerView.layer.masksToBounds = YES;
    self.contentContainerView.layer.cornerRadius = 12;
    
    [self addSubview:self.contentContainerView];
}

- (void)setupTitleLabel {
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.text = @"Calculation Result";
    self.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.titleLabel.textColor = [UIColor whiteColor];
    
    [self.contentContainerView addSubview:self.titleLabel];
}

- (void)setupResultTextView {
    self.resultTextView = [[UITextView alloc] init];
    self.resultTextView.translatesAutoresizingMaskIntoConstraints = NO;
    self.resultTextView.editable = NO;
    self.resultTextView.backgroundColor = [UIColor clearColor];
    self.resultTextView.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:15];
    self.resultTextView.textColor = [UIColor whiteColor];
    self.resultTextView.text =
    @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
    
    [self.contentContainerView addSubview:self.resultTextView];
}

- (void)setupDisclaimerLabel {
    self.disclaimerLabel = [[UILabel alloc] init];
    self.disclaimerLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.disclaimerLabel.numberOfLines = 2;
    self.disclaimerLabel.text =
    @"Results are for structural reference only and do not imply performance or outcomes.";
    self.disclaimerLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12];
    self.disclaimerLabel.textColor =
    [UIColor colorWithRed:214/255.0 green:133/255.0 blue:94/255.0 alpha:1];
    
    [self addSubview:self.disclaimerLabel];
}

#pragma mark - Constraints

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        
        // contentContainerView
        [self.contentContainerView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.contentContainerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:12],
        [self.contentContainerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor constant:-12],
        [self.contentContainerView.bottomAnchor constraintEqualToAnchor:self.disclaimerLabel.topAnchor constant:-12],
        
        // titleLabel
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.contentContainerView.topAnchor constant:16],
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.contentContainerView.leadingAnchor constant:12],
        
        // resultTextView
        [self.resultTextView.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:11],
        [self.resultTextView.leadingAnchor constraintEqualToAnchor:self.contentContainerView.leadingAnchor constant:12],
        [self.resultTextView.trailingAnchor constraintEqualToAnchor:self.contentContainerView.trailingAnchor constant:-12],
        [self.resultTextView.bottomAnchor constraintEqualToAnchor:self.contentContainerView.bottomAnchor],
        
        // disclaimerLabel
        [self.disclaimerLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:20],
        [self.disclaimerLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-20],
        [self.disclaimerLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]
    ]];
}

- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_humbleRidgeTrail {
    self.resultTextView.text = CSMTC_humbleRidgeTrail;
}

@end
