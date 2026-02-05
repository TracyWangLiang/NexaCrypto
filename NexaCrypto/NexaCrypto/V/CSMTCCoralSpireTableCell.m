//
//  CSMTCCoralSpireTableCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCCoralSpireTableCell.h"

@interface CSMTCCoralSpireTableCell ()

@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *rightImageView;

@end

@implementation CSMTCCoralSpireTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}


- (void)setupSubviews {
    self.selectionStyle = UITableViewCellSelectionStyleNone;

    self.leftImageView = [[UIImageView alloc] init];
    self.leftImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.leftImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.contentView addSubview:self.leftImageView];
    self.leftImageView.layer.masksToBounds = YES;
    self.leftImageView.layer.cornerRadius = 15;

    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.titleLabel.textColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1]; // sRGB
    [self.contentView addSubview:self.titleLabel];

    self.rightImageView = [[UIImageView alloc] init];
    self.rightImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.rightImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.rightImageView];
}

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.contentView.safeAreaLayoutGuide;

    [NSLayoutConstraint activateConstraints:@[
        // leftImageView
        [self.leftImageView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:12],
        [self.leftImageView.centerYAnchor constraintEqualToAnchor:safeArea.centerYAnchor],
        [self.leftImageView.widthAnchor constraintEqualToConstant:30],
        [self.leftImageView.heightAnchor constraintEqualToConstant:30],

        // titleLabel
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leftImageView.trailingAnchor constant:8],
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.leftImageView.centerYAnchor],

        // rightImageView
        [self.rightImageView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor constant:-12],
        [self.rightImageView.centerYAnchor constraintEqualToAnchor:safeArea.centerYAnchor],
        [self.rightImageView.widthAnchor constraintEqualToConstant:20],
        [self.rightImageView.heightAnchor constraintEqualToConstant:20],
    ]];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan:(CSMTCCobaltGrainDataItemModel *)CSMTC_model {
    [CSMTCNexaManager CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_model.CSMTC_id completion:^(UIImage * _Nullable image) {
        self.leftImageView.image = image;
    }];
    self.titleLabel.text = CSMTC_model.CSMTC_name;
    self.rightImageView.highlighted = [self CSMTC_containsDataModel:CSMTC_model inArray:[CSMTCNexaManager CSMTC_loadAllGrainDataModels]];
    
}

- (BOOL)CSMTC_containsDataModel:(CSMTCCobaltGrainDataItemModel *)model inArray:(NSArray *)array {
    if (!model || !array || array.count == 0) return NO;
    for (CSMTCCobaltGrainDataItemModel *item in array) {
        if ([item.CSMTC_id isEqualToString:model.CSMTC_id]) {
            return YES;
        }
    }
    return NO;
}

@end
