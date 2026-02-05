//
//  CSMTCCobaltGrainHeaderView.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCCobaltGrainHeaderView.h"
#import "CSMTCCobaltGrainCollectionCell.h"
#import "CSMTCSelectHeaderView.h"
#import "CSMTCNexaManager.h"

@interface CSMTCCobaltGrainHeaderView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, CSMTCSelectHeaderViewDelegate>

@property (nonatomic, strong) UILabel *CSMTC_titleLabel;
@property (nonatomic, strong) UILabel *CSMTC_priceLabel;
@property (nonatomic, strong) UILabel *CSMTC_unitLabel;
@property (nonatomic, strong) UIButton *CSMTC_addButton;
@property (nonatomic, strong) UILabel *CSMTC_usdLabel;

@property (nonatomic, strong) UICollectionView *CSMTC_collectionView;
@property (nonatomic, strong) NSLayoutConstraint *CSMTC_collectionHeightConstraint;

@property (nonatomic, strong) UIStackView *CSMTC_toolStack;
@property (nonatomic, copy) NSString *CSMTC_tameValeTrack;

@property (nonatomic, strong) UILabel *CSMTC_sectionLabel;
@property (nonatomic, strong) CSMTCSelectHeaderView *CSMTC_bottomSpacer;

@property (nonatomic, copy) NSArray *array;

@property (nonatomic, copy) NSArray *CSMTC_dataSource;


@end

@implementation CSMTCCobaltGrainHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.CSMTC_tameValeTrack = @"";
        [self CSMTC_buildSubviews];
        [self CSMTC_buildConstraints];
        [self CSMTC_stillHollowFoldTrailKnollClimbPathSpan];
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
        [self CSMTC_humbleKnollRisePathTrackHavenFold];
    }
    return self;
}

- (void)CSMTC_buildSubviews {

    self.backgroundColor = [UIColor clearColor];

    // Watchlist
    self.CSMTC_titleLabel = [[UILabel alloc] init];
    self.CSMTC_titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:13];
    self.CSMTC_titleLabel.textColor = [UIColor colorWithRed:0.451 green:0.463 blue:0.49 alpha:1];
    self.CSMTC_titleLabel.text = @"Watchlist";
    self.CSMTC_titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_titleLabel];

    // Price
    self.CSMTC_priceLabel = [[UILabel alloc] init];
    self.CSMTC_priceLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:28];
    self.CSMTC_priceLabel.textColor = UIColor.whiteColor;
    self.CSMTC_priceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_priceLabel];

    // ETH
    self.CSMTC_unitLabel = [[UILabel alloc] init];
    self.CSMTC_unitLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:17];
    self.CSMTC_unitLabel.textColor = UIColor.whiteColor;
    self.CSMTC_unitLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_unitLabel];

    // Add button
    self.CSMTC_addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_addButton.backgroundColor = UIColor.whiteColor;
    self.CSMTC_addButton.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:14];
    [self.CSMTC_addButton setTitle:@" Add" forState:UIControlStateNormal];
    [self.CSMTC_addButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [self.CSMTC_addButton setImage:[UIImage imageNamed:@"CSMTC_silentHarborGlen"] forState:UIControlStateNormal];
    self.CSMTC_addButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_addButton];
    self.CSMTC_addButton.layer.masksToBounds = YES;
    self.CSMTC_addButton.layer.cornerRadius = 6;
    [self.CSMTC_addButton addTarget:self action:@selector(CSMTC_wideDellTrailFoldKnollClimbHollowPath) forControlEvents:UIControlEventTouchUpInside];
    
    // USD
    self.CSMTC_usdLabel = [[UILabel alloc] init];
    self.CSMTC_usdLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12];
    self.CSMTC_usdLabel.textColor = [UIColor colorWithRed:0.522 green:0.522 blue:0.522 alpha:1];
    self.CSMTC_usdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_usdLabel];

    // CollectionView
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 11;
    layout.minimumInteritemSpacing = 11;

    self.CSMTC_collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    self.CSMTC_collectionView.backgroundColor = UIColor.clearColor;
    self.CSMTC_collectionView.dataSource = self;
    self.CSMTC_collectionView.delegate = self;
    self.CSMTC_collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.CSMTC_collectionView registerClass:CSMTCCobaltGrainCollectionCell.class
                  forCellWithReuseIdentifier:@"CSMTCCobaltGrainCollectionCell"];
    [self addSubview:self.CSMTC_collectionView];
    self.CSMTC_collectionView.contentInset = UIEdgeInsetsMake(0, 12, 0, 12);

    // Tool stack
    self.CSMTC_toolStack = [[UIStackView alloc] init];
    self.CSMTC_toolStack.axis = UILayoutConstraintAxisHorizontal;
    self.CSMTC_toolStack.distribution = UIStackViewDistributionFillEqually;
    self.CSMTC_toolStack.spacing = 50;
    self.CSMTC_toolStack.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_toolStack];

    NSArray *items = @[
        @{@"img":@"CSMTC_quickRidgeHollow", @"txt":@"Map"},
        @{@"img":@"CSMTC_freshHollowClimb", @"txt":@"Flow"},
        @{@"img":@"CSMTC_brightDellPath", @"txt":@"Matrix"}
    ];

    for (NSDictionary *info in items) {
        UIView *container = [self CSMTC_toolItemWithImage:info[@"img"] title:info[@"txt"]];
        [self.CSMTC_toolStack addArrangedSubview:container];
    }

    // Section title
    self.CSMTC_sectionLabel = [[UILabel alloc] init];
    self.CSMTC_sectionLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_sectionLabel.textColor = UIColor.whiteColor;
    self.CSMTC_sectionLabel.text = @"Top Assets";
    self.CSMTC_sectionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_sectionLabel];

    // Bottom spacer
    self.CSMTC_bottomSpacer = [[CSMTCSelectHeaderView alloc] initWithTitles:@[@"Today",@"Week",@"Month", @"3 Month"]];
    self.CSMTC_bottomSpacer.backgroundColor = UIColor.clearColor;
    self.CSMTC_bottomSpacer.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.CSMTC_bottomSpacer];
    self.CSMTC_bottomSpacer.delegate = self;
}

- (UIView *)CSMTC_toolItemWithImage:(NSString *)imageName title:(NSString *)title {

    UIView *container = [[UIView alloc] init];
    container.translatesAutoresizingMaskIntoConstraints = NO;

    UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    icon.contentMode = UIViewContentModeScaleAspectFit;
    icon.translatesAutoresizingMaskIntoConstraints = NO;
    [container addSubview:icon];

    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    label.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:13];
    label.textColor = UIColor.whiteColor;
    label.textAlignment = NSTextAlignmentCenter;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [container addSubview:label];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [container addSubview:button];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(CSMTC_mellowCoveTrailFoldBluffShoreSpan:) forControlEvents:UIControlEventTouchUpInside];

    [NSLayoutConstraint activateConstraints:@[
        [icon.topAnchor constraintEqualToAnchor:container.topAnchor],
        [icon.centerXAnchor constraintEqualToAnchor:container.centerXAnchor],
        [icon.widthAnchor constraintEqualToConstant:38],
        [icon.heightAnchor constraintEqualToConstant:38],

        [label.topAnchor constraintEqualToAnchor:icon.bottomAnchor constant:6],
        [label.leadingAnchor constraintEqualToAnchor:container.leadingAnchor],
        [label.trailingAnchor constraintEqualToAnchor:container.trailingAnchor],
        [label.bottomAnchor constraintEqualToAnchor:container.bottomAnchor],

        [button.topAnchor constraintEqualToAnchor:container.topAnchor],
        [button.leadingAnchor constraintEqualToAnchor:container.leadingAnchor],
        [button.trailingAnchor constraintEqualToAnchor:container.trailingAnchor],
        [button.bottomAnchor constraintEqualToAnchor:container.bottomAnchor],
    ]];

    return container;
}

- (void)CSMTC_buildConstraints {

    CGFloat side = 12;

    self.CSMTC_collectionHeightConstraint =
    [self.CSMTC_collectionView.heightAnchor constraintEqualToConstant:0];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_titleLabel.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.CSMTC_titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:side],
        [self.CSMTC_titleLabel.heightAnchor constraintEqualToConstant:16],

        [self.CSMTC_priceLabel.topAnchor constraintEqualToAnchor:self.CSMTC_titleLabel.bottomAnchor constant:10],
        [self.CSMTC_priceLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:side],
        [self.CSMTC_priceLabel.heightAnchor constraintEqualToConstant:34],

        [self.CSMTC_unitLabel.leadingAnchor constraintEqualToAnchor:self.CSMTC_priceLabel.trailingAnchor constant:8],
        [self.CSMTC_unitLabel.bottomAnchor constraintEqualToAnchor:self.CSMTC_priceLabel.bottomAnchor constant:-4],

        [self.CSMTC_addButton.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-12],
        [self.CSMTC_addButton.bottomAnchor constraintEqualToAnchor:self.CSMTC_priceLabel.bottomAnchor],
        [self.CSMTC_addButton.widthAnchor constraintEqualToConstant:90],
        [self.CSMTC_addButton.heightAnchor constraintEqualToConstant:36],

        [self.CSMTC_usdLabel.topAnchor constraintEqualToAnchor:self.CSMTC_priceLabel.bottomAnchor constant:6],
        [self.CSMTC_usdLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:side],
        [self.CSMTC_usdLabel.heightAnchor constraintEqualToConstant:15],

        [self.CSMTC_collectionView.topAnchor constraintEqualToAnchor:self.CSMTC_usdLabel.bottomAnchor constant:20],
        [self.CSMTC_collectionView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.CSMTC_collectionView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        self.CSMTC_collectionHeightConstraint,

        [self.CSMTC_toolStack.topAnchor constraintEqualToAnchor:self.CSMTC_collectionView.bottomAnchor constant:28],
        [self.CSMTC_toolStack.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:28],
        [self.CSMTC_toolStack.widthAnchor constraintEqualToConstant:250],
        [self.CSMTC_toolStack.heightAnchor constraintEqualToConstant:60],

        [self.CSMTC_sectionLabel.topAnchor constraintEqualToAnchor:self.CSMTC_toolStack.bottomAnchor constant:32],
        [self.CSMTC_sectionLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:side],
        [self.CSMTC_sectionLabel.heightAnchor constraintEqualToConstant:20],

        [self.CSMTC_bottomSpacer.topAnchor constraintEqualToAnchor:self.CSMTC_sectionLabel.bottomAnchor constant:16],
        [self.CSMTC_bottomSpacer.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.CSMTC_bottomSpacer.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [self.CSMTC_bottomSpacer.heightAnchor constraintEqualToConstant:33],
        [self.CSMTC_bottomSpacer.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
    ]];
}

- (void)CSMTC_stillHollowFoldTrailKnollClimbPathSpan {
    self.CSMTC_dataSource = @[];
    NSArray *array = [CSMTCNexaManager CSMTC_loadAllGrainDataModels];
    if (array.count <= 0) {
        if (self.array.count > 0) {
            self.CSMTC_dataSource = @[self.array.firstObject];
        }
    } else {
        self.CSMTC_dataSource = array;
    }
    [self.CSMTC_collectionView reloadData];
    [self CSMTC_updateCollectionHeight];

    [self CSMTC_pureDellFoldTrailHollowClimbKnollRise];
}

- (void)CSMTC_pureDellFoldTrailHollowClimbKnollRise {
    if (self.CSMTC_dataSource.count <= 0) {
        return;
    }
    CSMTCCobaltGrainDataItemModel *CSMTC_model = self.CSMTC_dataSource.firstObject;
    CSMTCCobaltGrainItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_quotes.firstObject;
    self.CSMTC_unitLabel.text = CSMTC_model.CSMTC_symbol;
    self.CSMTC_usdLabel.text = [NSString stringWithFormat:@"≈%@ USD", [CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_price]];
    self.CSMTC_priceLabel.text = [CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_model.CSMTC_marketPairCount];
    
}



- (void)CSMTC_updateCollectionHeight {
    NSInteger rows = ceil(self.CSMTC_dataSource.count / 2.0);
    CGFloat height = rows * 80 + (rows - 1) * 11;
    self.CSMTC_collectionHeightConstraint.constant = height;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

    CGFloat width = (UIScreen.mainScreen.bounds.size.width - 35) / 2.0;
    return CGSizeMake(width, 80);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.CSMTC_dataSource.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCCobaltGrainCollectionCell" forIndexPath:indexPath];
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_dataSource objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_model];
    return CSMTC_cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_dataSource objectAtIndex:indexPath.row];
    if ([self.delegate respondsToSelector:@selector(CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:)]) {
        [self.delegate CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_model];
    }
}

- (void)CSMTC_mellowCoveTrailFoldBluffShoreSpan:(UIButton *)sender {
    NSString *CSMTC_tameRidgeTrail = @"";
    if ([sender.titleLabel.text isEqualToString:@"Map"]) {
        CSMTC_tameRidgeTrail = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@&", [CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0yg7bOnoYZ+dwCoKTOLmA7enpdyqndBAanZMw=="]]];
    } else if ([sender.titleLabel.text isEqualToString:@"Flow"]) {
        if ([self.CSMTC_tameValeTrack isEqualToString:@""]) {
            return;
        }
        CSMTC_tameRidgeTrail = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdI2bsacdfPuoyWmMU85mbL7KSiKDhpWVGR1tndqthwOFh/mg"], self.CSMTC_tameValeTrack]];
    }
    if ([self.delegate respondsToSelector:@selector(CSMTC_tameRidgeTrailFoldKnollPathBluffClimb:)]) {
        [self.delegate CSMTC_tameRidgeTrailFoldKnollPathBluffClimb:CSMTC_tameRidgeTrail];
    }
}


- (void)CSMTC_softValeFoldHollowClimbTrackShore:(NSString *)CSMTC_tameRidgeTrail {

    if (self.array.count <= 0) {
        return;
    }
    if ([CSMTC_tameRidgeTrail isEqualToString:@"Today"]) {
        self.array = [CSMTCNexaManager CSMTC_sortDataModels:self.array byQuoteField:CSMTCQuoteSortFieldPercentChange24h];
    } else if ([CSMTC_tameRidgeTrail isEqualToString:@"Week"]) {
        self.array = [CSMTCNexaManager CSMTC_sortDataModels:self.array byQuoteField:CSMTCQuoteSortFieldPercentChange7d];
    } else if ([CSMTC_tameRidgeTrail isEqualToString:@"Month"]) {
        self.array = [CSMTCNexaManager CSMTC_sortDataModels:self.array byQuoteField:CSMTCQuoteSortFieldPercentChange30d];
    } else if ([CSMTC_tameRidgeTrail isEqualToString:@"3 Month"]) {
        self.array = [CSMTCNexaManager CSMTC_sortDataModels:self.array byQuoteField:CSMTCQuoteSortFieldPercentChange90d];
    }
    
        if ([self.delegate respondsToSelector:@selector(CSMTC_keenCoveTrailFoldKnollClimbPathRise:)]) {
            [self.delegate CSMTC_keenCoveTrailFoldKnollClimbPathRise:self.array];
        }
}

- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    [CSMTCNexaManager getRequestWithURL:[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhydj2SdmOgB69UELFU/ehuZiegIFBqdueXpvn3utuwNJ7MSpl44cejrT7q48Hk1FTfok4l8sLOPbuzI2cqAr3xGcJfEq0HG++8sxyERtnIBalHH9T1Jz"] CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCCobaltGrainDataModel *CSMTC_model = [CSMTCCobaltGrainDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            self.array = [CSMTCNexaManager CSMTC_sortDataModels:CSMTC_model.CSMTC_cryptoCurrencyList byQuoteField:CSMTCQuoteSortFieldPrice];
            [self CSMTC_stillHollowFoldTrailKnollClimbPathSpan];
            [self CSMTC_softValeFoldHollowClimbTrackShore:@"Today"];
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}


- (void)CSMTC_humbleKnollRisePathTrackHavenFold {
    NSString *CSMTC_gentleRidgeClimb = [CSMTCNexaCrypto CSMTC_wideHollowPathTrailFoldKnollRise:@"slnphz/vfjnahccdzzfg"];
    [CSMTCNexaManager postRequestWithURL:CSMTC_gentleRidgeClimb CSMTC_parameters:@{@"urbanGroove":@"1",@"nightDistrict":@"3"} CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCMicaShoreDataModel *CSMTC_model = [CSMTCMicaShoreDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            if ([CSMTC_model.CSMTC_code isEqualToString:@"200000"]) {
                CSMTCMicaShoreItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_data.firstObject;
                self.CSMTC_tameValeTrack = CSMTC_itemModel.CSMTC_streetDynamics;
            }
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

- (void)CSMTC_wideDellTrailFoldKnollClimbHollowPath {
    if ([self.delegate respondsToSelector:@selector(CSMTC_fairHavenTrailFoldClimbKnollPathSpan)]) {
        [self.delegate CSMTC_fairHavenTrailFoldClimbKnollPathSpan];
    }
}

@end
