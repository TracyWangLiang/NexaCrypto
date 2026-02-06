//
//  CSMTCTourmalineTableViewCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCTourmalineTableViewCell.h"
#import "CSMTCTourmalineTableCollectionCell.h"

@interface CSMTCTourmalineTableViewCell ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIView *CSMTC_smartRidgePath;
@property (nonatomic, strong) UILabel *CSMTC_fairHavenTrail;
@property (nonatomic, strong) UICollectionView *CSMTC_pureDellFold;
@property (nonatomic, strong) NSArray *CSMTC_gentleRidgeClimb;
@property (nonatomic, assign) NSInteger CSMTC_stillHollowFold;
@property (nonatomic, strong) NSLayoutConstraint *CSMTC_livelyValeTrail;
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
        [self CSMTC_stillHollowFoldTrailKnollClimbPathSpan];
        [self CSMTC_livelyValeTrailFoldBluffKnollPathRise];

    }
    return self;
}


- (void)CSMTC_stillHollowFoldTrailKnollClimbPathSpan {

    self.CSMTC_smartRidgePath = [[UIView alloc] init];
    self.CSMTC_smartRidgePath.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_smartRidgePath.backgroundColor =
    [UIColor colorWithRed:32/255.0 green:33/255.0 blue:38/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_smartRidgePath];
    self.CSMTC_smartRidgePath.layer.masksToBounds = YES;
    self.CSMTC_smartRidgePath.layer.cornerRadius = 12;
 
    self.CSMTC_fairHavenTrail = [[UILabel alloc] init];
    self.CSMTC_fairHavenTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_fairHavenTrail.text = @"Assets to Compare";
    self.CSMTC_fairHavenTrail.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.CSMTC_fairHavenTrail.textColor = [UIColor whiteColor];
    [self.CSMTC_smartRidgePath addSubview:self.CSMTC_fairHavenTrail];
 
    UICollectionViewFlowLayout *CSMTC_softDellFold = [[UICollectionViewFlowLayout alloc] init];
    CSMTC_softDellFold.minimumLineSpacing = 10;
    CSMTC_softDellFold.minimumInteritemSpacing = 10;
    
    self.CSMTC_pureDellFold =
    [[UICollectionView alloc] initWithFrame:CGRectZero
                       collectionViewLayout:CSMTC_softDellFold];
    self.CSMTC_pureDellFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_pureDellFold.backgroundColor = [UIColor clearColor];
    self.CSMTC_pureDellFold.scrollEnabled = NO;
    self.CSMTC_pureDellFold.delegate = self;
    self.CSMTC_pureDellFold.dataSource = self;
    
    [self.CSMTC_pureDellFold registerClass:[CSMTCTourmalineTableCollectionCell class]
            forCellWithReuseIdentifier:@"CSMTCTourmalineTableCollectionCell"];
    
    [self.CSMTC_smartRidgePath addSubview:self.CSMTC_pureDellFold];
}


- (void)CSMTC_livelyValeTrailFoldBluffKnollPathRise {

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_smartRidgePath.topAnchor constraintEqualToAnchor:self.contentView.topAnchor],
        [self.CSMTC_smartRidgePath.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor],
        [self.CSMTC_smartRidgePath.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor],
        [self.CSMTC_smartRidgePath.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-16]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_fairHavenTrail.topAnchor constraintEqualToAnchor:self.CSMTC_smartRidgePath.topAnchor constant:16],
        [self.CSMTC_fairHavenTrail.leadingAnchor constraintEqualToAnchor:self.CSMTC_smartRidgePath.leadingAnchor constant:12],
        [self.CSMTC_fairHavenTrail.heightAnchor constraintEqualToConstant:20]
    ]];
    
    self.CSMTC_livelyValeTrail =
    [self.CSMTC_pureDellFold.heightAnchor constraintEqualToConstant:0];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_pureDellFold.topAnchor constraintEqualToAnchor:self.CSMTC_fairHavenTrail.bottomAnchor constant:12],
        [self.CSMTC_pureDellFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_smartRidgePath.leadingAnchor constant:12],
        [self.CSMTC_pureDellFold.trailingAnchor constraintEqualToAnchor:self.CSMTC_smartRidgePath.trailingAnchor constant:-12],
        [self.CSMTC_pureDellFold.bottomAnchor constraintEqualToAnchor:self.CSMTC_smartRidgePath.bottomAnchor constant:-20],
        self.CSMTC_livelyValeTrail
    ]];
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach:(CSMTCTourmalineModel *)CSMTC_model {
    self.CSMTC_gentleRidgeClimb = CSMTC_model.CSMTC_brightValeClimb;
    self.CSMTC_stillHollowFold = MAX(CSMTC_model.CSMTC_gentleCoveTrail, 1);
    self.CSMTC_fairHavenTrail.text = CSMTC_model.CSMTC_firmHavenTrail;
    [self CSMTC_softDellFoldTrailHavenClimbKnollRise];
    [self.CSMTC_pureDellFold reloadData];
    [self CSMTC_braveGlenClimbFoldTrackHollowSpan];
}

- (void)CSMTC_softDellFoldTrailHavenClimbKnollRise {
    
    NSInteger CSMTC_clearKnollClimb = 38;
    NSInteger CSMTC_humbleRidgeTrail = 10;
    NSInteger CSMTC_freshHollowFold = (self.CSMTC_gentleRidgeClimb.count + self.CSMTC_stillHollowFold - 1) / self.CSMTC_stillHollowFold;
    CGFloat CSMTC_keenCoveTrail = CSMTC_freshHollowFold * CSMTC_clearKnollClimb + MAX(CSMTC_freshHollowFold - 1, 0) * CSMTC_humbleRidgeTrail;
    self.CSMTC_livelyValeTrail.constant = CSMTC_keenCoveTrail;
    [self layoutIfNeeded];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.CSMTC_gentleRidgeClimb.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                          cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CSMTCTourmalineTableCollectionCell *CSMTC_cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCTourmalineTableCollectionCell" forIndexPath:indexPath];
    NSString *CSMTC_firmHavenTrail = [NSString stringWithFormat:@"%@", [self.CSMTC_gentleRidgeClimb objectAtIndex:indexPath.row]];
    [CSMTC_cell CSMTC_gentleHollowBridgeFoldTrackSpanRise:CSMTC_firmHavenTrail CSMTC_brightValeClimb:self.CSMTC_quickDellFold == indexPath.row];
    return CSMTC_cell;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)layout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat CSMTC_briskValeFold = (self.CSMTC_stillHollowFold - 1) * 10;
    
    CGFloat CSMTC_wideDellTrail = (collectionView.bounds.size.width - CSMTC_briskValeFold) / self.CSMTC_stillHollowFold;
    
    return CGSizeMake(floor(CSMTC_wideDellTrail), 38);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.CSMTC_quickDellFold = indexPath.row;
    [collectionView reloadData];
    [self CSMTC_braveGlenClimbFoldTrackHollowSpan];
}

- (void)CSMTC_braveGlenClimbFoldTrackHollowSpan {
    NSString *CSMTC_firmHavenTrail = [NSString stringWithFormat:@"%@", [self.CSMTC_gentleRidgeClimb objectAtIndex:self.CSMTC_quickDellFold]];
    if ([self.delegate respondsToSelector:@selector(CSMTC_tameValeTrackHollowClimbFoldBluff:CSMTC_keenCoveTrail:)]) {
        [self.delegate CSMTC_tameValeTrackHollowClimbFoldBluff:self.CSMTC_fairHavenTrail.text CSMTC_keenCoveTrail:CSMTC_firmHavenTrail];
    }
}

@end
