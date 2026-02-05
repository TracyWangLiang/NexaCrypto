//
//  CSMTCTourmalineTableViewCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCTourmalineTableViewCell.h"
#import "CSMTCTourmalineTableCollectionCell.h"

@interface CSMTCTourmalineTableViewCell ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UICollectionView *collectionView;

/// 数据
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, assign) NSInteger itemsPerRow;

/// 高度约束（关键）
@property (nonatomic, strong) NSLayoutConstraint *collectionHeightConstraint;

@property (nonatomic, assign) NSInteger CSMTC_quickDellFold;


@end

@implementation CSMTCTourmalineTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
    
        self.CSMTC_quickDellFold = 0;
        [self setupViews];
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Views

- (void)setupViews {
    
    // containerView
    self.containerView = [[UIView alloc] init];
    self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.containerView.backgroundColor =
    [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
    [self.contentView addSubview:self.containerView];
    self.containerView.layer.masksToBounds = YES;
    self.containerView.layer.cornerRadius = 12;
    
    // titleLabel
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.text = @"Assets to Compare";
    self.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.titleLabel.textColor = [UIColor whiteColor];
    [self.containerView addSubview:self.titleLabel];
    
    // collectionView
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    
    self.collectionView =
    [[UICollectionView alloc] initWithFrame:CGRectZero
                       collectionViewLayout:layout];
    self.collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.scrollEnabled = NO;
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    [self.collectionView registerClass:[CSMTCTourmalineTableCollectionCell class]
            forCellWithReuseIdentifier:@"CSMTCTourmalineTableCollectionCell"];
    
    [self.containerView addSubview:self.collectionView];
}

#pragma mark - Constraints

- (void)setupConstraints {
    
    // containerView
    [NSLayoutConstraint activateConstraints:@[
        [self.containerView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        [self.containerView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        [self.containerView.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor],
        [self.containerView.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-16]
    ]];
    
    // titleLabel
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.containerView.topAnchor constant:16],
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.containerView.leadingAnchor constant:12],
        [self.titleLabel.heightAnchor constraintEqualToConstant:20]
    ]];
    
    // collectionView
    self.collectionHeightConstraint =
    [self.collectionView.heightAnchor constraintEqualToConstant:0];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.collectionView.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:12],
        [self.collectionView.leadingAnchor constraintEqualToAnchor:self.containerView.leadingAnchor constant:12],
        [self.collectionView.trailingAnchor constraintEqualToAnchor:self.containerView.trailingAnchor constant:-12],
        [self.collectionView.bottomAnchor constraintEqualToAnchor:self.containerView.bottomAnchor constant:-20],
        self.collectionHeightConstraint
    ]];
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach:(CSMTCTourmalineModel *)CSMTC_model {
    self.dataArray = CSMTC_model.CSMTC_brightValeClimb;
    self.itemsPerRow = MAX(CSMTC_model.CSMTC_gentleCoveTrail, 1);
    self.titleLabel.text = CSMTC_model.CSMTC_firmHavenTrail;
    [self updateCollectionHeight];
    [self.collectionView reloadData];
}

- (void)updateCollectionHeight {
    
    NSInteger itemHeight = 38;
    NSInteger lineSpacing = 10;
    
    NSInteger rows = (self.dataArray.count + self.itemsPerRow - 1) / self.itemsPerRow;
    
    CGFloat height = rows * itemHeight + MAX(rows - 1, 0) * lineSpacing;
    
    self.collectionHeightConstraint.constant = height;
    
    [self layoutIfNeeded];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                          cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CSMTCTourmalineTableCollectionCell *CSMTC_cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCTourmalineTableCollectionCell" forIndexPath:indexPath];
    NSString *CSMTC_firmHavenTrail = [NSString stringWithFormat:@"%@", [self.dataArray objectAtIndex:indexPath.row]];
    [CSMTC_cell CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_firmHavenTrail CSMTC_brightValeClimb:self.CSMTC_quickDellFold == indexPath.row];
    return CSMTC_cell;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)layout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat totalSpacing = (self.itemsPerRow - 1) * 10;
    
    CGFloat width = (collectionView.bounds.size.width - totalSpacing) / self.itemsPerRow;
    
    return CGSizeMake(floor(width), 38);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.CSMTC_quickDellFold = indexPath.row;
    [collectionView reloadData];
}



@end
