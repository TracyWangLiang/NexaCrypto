//
//  CSMTCTourmalineTableCollectionCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCTourmalineTableCollectionCell.h"

@interface CSMTCTourmalineTableCollectionCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation CSMTCTourmalineTableCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 4;
        self.layer.borderWidth = 1.0;
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Subviews

- (void)setupSubviews {
    
    self.contentView.backgroundColor = [UIColor clearColor];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:15];
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.numberOfLines = 1;
    
    [self.contentView addSubview:self.titleLabel];
}

#pragma mark - Constraints

- (void)setupConstraints {
    
    [NSLayoutConstraint activateConstraints:@[
   
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        
        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor],
        
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        
        [self.titleLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor]
    ]];
}

- (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise:(NSString *)CSMTC_firmHavenTrail CSMTC_brightValeClimb:(BOOL)CSMTC_brightValeClimb {
    self.titleLabel.text = CSMTC_firmHavenTrail;
    if (CSMTC_brightValeClimb) {
        self.titleLabel.textColor = [UIColor whiteColor];
        self.layer.borderColor = [[UIColor whiteColor] CGColor];
    } else {
        self.titleLabel.textColor = [[UIColor whiteColor] colorWithAlphaComponent:0.45];
        self.layer.borderColor = [UIColor colorWithRed:42/255.0 green:43/255.0 blue:48/255.0 alpha:1].CGColor;
    }
}


@end
