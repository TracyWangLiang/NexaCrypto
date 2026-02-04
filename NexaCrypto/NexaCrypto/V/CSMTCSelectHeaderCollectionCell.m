//
//  CSMTCSelectHeaderCollectionCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSelectHeaderCollectionCell.h"

@interface CSMTCSelectHeaderCollectionCell ()
@property (nonatomic, strong) UILabel *CSMTC_titleLabel;

@end


@implementation CSMTCSelectHeaderCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self CSMTC_setupViews];
    }
    return self;
}

- (void)CSMTC_setupViews {

    self.contentView.backgroundColor = [UIColor clearColor];
    
    // 创建 Label
    self.CSMTC_titleLabel = [[UILabel alloc] init];
    self.CSMTC_titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_titleLabel.text = @"Top Gainers";
    self.CSMTC_titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:14];
    self.CSMTC_titleLabel.textColor = [UIColor whiteColor];
    self.CSMTC_titleLabel.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_titleLabel.numberOfLines = 1;
    
    [self.contentView addSubview:self.CSMTC_titleLabel];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_titleLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        [self.CSMTC_titleLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor],
        [self.CSMTC_titleLabel.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        [self.CSMTC_titleLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor]
    ]];
}

- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan:(NSString *)CSMTC_freshHollowClimb CSMTC_steadyCoveRise:(BOOL)CSMTC_steadyCoveRise {
    self.CSMTC_titleLabel.text = CSMTC_freshHollowClimb;
    if (CSMTC_steadyCoveRise) {
        self.CSMTC_titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:14];
        self.CSMTC_titleLabel.textColor = [UIColor whiteColor];
    } else {
        self.CSMTC_titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
        self.CSMTC_titleLabel.textColor = [UIColor colorWithRed:122/255.0 green:122/255.0 blue:122/255.0 alpha:1];
    }
}

@end
