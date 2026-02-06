//
//  CSMTCSelectHeaderView.m
//  NexaCrypto
//
//   
//

#import "CSMTCSelectHeaderView.h"
#import "CSMTCSelectHeaderCollectionCell.h"
#import "CSMTCNexaManager.h"

@interface CSMTCSelectHeaderView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *CSMTC_steadyCoveRise;
@property (nonatomic, strong) UILabel *CSMTC_softCrestLane;
@property (nonatomic, strong) NSArray<NSString *> *CSMTC_clearGlenFold;
@property (nonatomic, assign) NSInteger CSMTC_mistyDellSpan;

@end


@implementation CSMTCSelectHeaderView

- (instancetype)initWithTitles:(NSArray<NSString *> *)CSMTC_sharpKnollTrace {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _CSMTC_clearGlenFold = CSMTC_sharpKnollTrace ?: @[];
        _CSMTC_mistyDellSpan = 0;
        [self CSMTC_calmKnollShorePathRiseFoldTrail];
        NSString *CSMTC_stillHollowFold = [NSString stringWithFormat:@"%@", [self.CSMTC_clearGlenFold objectAtIndex:self.CSMTC_mistyDellSpan]];
        [self CSMTC_keenDellFoldTrailKnollRiseShoreSpan:CSMTC_stillHollowFold];
    }
    return self;
}

- (void)CSMTC_calmKnollShorePathRiseFoldTrail {

    UICollectionViewFlowLayout *CSMTC_fairRidgeTrail = [[UICollectionViewFlowLayout alloc] init];
    CSMTC_fairRidgeTrail.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    CSMTC_fairRidgeTrail.minimumInteritemSpacing = 20;
    CSMTC_fairRidgeTrail.minimumLineSpacing = 20;
    CSMTC_fairRidgeTrail.sectionInset = UIEdgeInsetsZero;

    self.CSMTC_steadyCoveRise = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:CSMTC_fairRidgeTrail];
    self.CSMTC_steadyCoveRise.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_steadyCoveRise.backgroundColor = [UIColor clearColor];
    self.CSMTC_steadyCoveRise.showsHorizontalScrollIndicator = NO;
    self.CSMTC_steadyCoveRise.delegate = self;
    self.CSMTC_steadyCoveRise.dataSource = self;
    [self.CSMTC_steadyCoveRise registerClass:[CSMTCSelectHeaderCollectionCell class] forCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSelCSMTCMELLOW_ectHeaCSMTCMELLOW_derCollCSMTCMELLOW_ectionCell".CSMTC_removeMellowCoveSpan];
    [self addSubview:self.CSMTC_steadyCoveRise];

    self.CSMTC_softCrestLane = [[UILabel alloc] init];
    self.CSMTC_softCrestLane.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_softCrestLane.backgroundColor = [UIColor whiteColor];
    self.CSMTC_softCrestLane.layer.cornerRadius = 1;
    self.CSMTC_softCrestLane.layer.masksToBounds = YES;
    [self addSubview:self.CSMTC_softCrestLane];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_steadyCoveRise.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.CSMTC_steadyCoveRise.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.CSMTC_steadyCoveRise.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [self.CSMTC_steadyCoveRise.heightAnchor constraintEqualToConstant:25],
        [self.CSMTC_softCrestLane.topAnchor constraintEqualToAnchor:self.CSMTC_steadyCoveRise.bottomAnchor constant:4],
        [self.CSMTC_softCrestLane.heightAnchor constraintEqualToConstant:2],
        [self.CSMTC_softCrestLane.widthAnchor constraintEqualToConstant:22],
        [self.CSMTC_softCrestLane.centerXAnchor constraintEqualToAnchor:self.CSMTC_steadyCoveRise.leadingAnchor constant:0]
    ]];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self CSMTC_lightHavenFoldTrailPathKnollRise];
       
    });
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.CSMTC_clearGlenFold.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCSelectHeaderCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSelCSMTCMELLOW_ectHeaCSMTCMELLOW_derCollCSMTCMELLOW_ectionCell".CSMTC_removeMellowCoveSpan forIndexPath:indexPath];
    NSString *CSMTC_keenDellFold = self.CSMTC_clearGlenFold[indexPath.item];
    [CSMTC_cell CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_keenDellFold CSMTC_steadyCoveRise:self.CSMTC_mistyDellSpan == indexPath.item];
    return CSMTC_cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CSMTC_tameValeTrack = self.CSMTC_clearGlenFold[indexPath.item];
    CGSize CSMTC_livelyHavenPath = [CSMTC_tameValeTrack sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14]}];
    return CGSizeMake(CSMTC_livelyHavenPath.width + 20, collectionView.bounds.size.height);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.CSMTC_mistyDellSpan = indexPath.item;
    [collectionView reloadData];
    [self CSMTC_lightHavenFoldTrailPathKnollRise];
    NSString *CSMTC_stillHollowFold = [NSString stringWithFormat:@"%@", [self.CSMTC_clearGlenFold objectAtIndex:indexPath.row]];
    [self CSMTC_keenDellFoldTrailKnollRiseShoreSpan:CSMTC_stillHollowFold];
    
}

- (void)CSMTC_keenDellFoldTrailKnollRiseShoreSpan:(NSString *)CSMTC_stillHollowFold {
    if ([self.delegate respondsToSelector:@selector(CSMTC_softValeFoldHollowClimbTrackShore:)]) {
        [self.delegate CSMTC_softValeFoldHollowClimbTrackShore:CSMTC_stillHollowFold];
    }
}

- (void)CSMTC_lightHavenFoldTrailPathKnollRise {
    if (self.CSMTC_clearGlenFold.count == 0) return;
    
    NSIndexPath *CSMTC_braveGlenClimb = [NSIndexPath indexPathForItem:self.CSMTC_mistyDellSpan inSection:0];
    UICollectionViewLayoutAttributes *CSMTC_aptKnollTrail = [self.CSMTC_steadyCoveRise layoutAttributesForItemAtIndexPath:CSMTC_braveGlenClimb];
    
    if (CSMTC_aptKnollTrail) {
        CGFloat CSMTC_sharpDellPath = CSMTC_aptKnollTrail.frame.origin.x + CSMTC_aptKnollTrail.frame.size.width / 2.0;
        [UIView animateWithDuration:0.25 animations:^{
            self.CSMTC_softCrestLane.center = CGPointMake(CSMTC_sharpDellPath, self.CSMTC_softCrestLane.center.y);
        }];
        [self.CSMTC_steadyCoveRise scrollRectToVisible:CSMTC_aptKnollTrail.frame animated:YES];
    }
}


@end
