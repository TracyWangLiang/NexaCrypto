//
//  CSMTCSelectHeaderView.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSelectHeaderView.h"
#import "CSMTCSelectHeaderCollectionCell.h"

@interface CSMTCSelectHeaderView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *CSMTC_collectionView;
@property (nonatomic, strong) UILabel *CSMTC_indicatorLabel;
@property (nonatomic, strong) NSArray<NSString *> *CSMTC_titles;
@property (nonatomic, assign) NSInteger CSMTC_selectedIndex;

@end


@implementation CSMTCSelectHeaderView

- (instancetype)initWithTitles:(NSArray<NSString *> *)titles {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _CSMTC_titles = titles ?: @[];
        _CSMTC_selectedIndex = 0;
        [self CSMTC_setupViews];
        NSString *CSMTC_stillHollowFold = [NSString stringWithFormat:@"%@", [self.CSMTC_titles objectAtIndex:self.CSMTC_selectedIndex]];
        [self CSMTC_keenDellFoldTrailKnollRiseShoreSpan:CSMTC_stillHollowFold];
    }
    return self;
}

- (void)CSMTC_setupViews {

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumInteritemSpacing = 20;
    layout.minimumLineSpacing = 20;
    layout.sectionInset = UIEdgeInsetsZero;

    // CollectionView
    self.CSMTC_collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    self.CSMTC_collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_collectionView.backgroundColor = [UIColor clearColor];
    self.CSMTC_collectionView.showsHorizontalScrollIndicator = NO;
    self.CSMTC_collectionView.delegate = self;
    self.CSMTC_collectionView.dataSource = self;
    [self.CSMTC_collectionView registerClass:[CSMTCSelectHeaderCollectionCell class] forCellWithReuseIdentifier:@"CSMTCSelectHeaderCollectionCell"];
    [self addSubview:self.CSMTC_collectionView];

    self.CSMTC_indicatorLabel = [[UILabel alloc] init];
    self.CSMTC_indicatorLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_indicatorLabel.backgroundColor = [UIColor whiteColor];
    self.CSMTC_indicatorLabel.layer.cornerRadius = 1;
    self.CSMTC_indicatorLabel.layer.masksToBounds = YES;
    [self addSubview:self.CSMTC_indicatorLabel];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_collectionView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.CSMTC_collectionView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.CSMTC_collectionView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [self.CSMTC_collectionView.heightAnchor constraintEqualToConstant:25],
        [self.CSMTC_indicatorLabel.topAnchor constraintEqualToAnchor:self.CSMTC_collectionView.bottomAnchor constant:4],
        [self.CSMTC_indicatorLabel.heightAnchor constraintEqualToConstant:2],
        [self.CSMTC_indicatorLabel.widthAnchor constraintEqualToConstant:22],
        [self.CSMTC_indicatorLabel.centerXAnchor constraintEqualToAnchor:self.CSMTC_collectionView.leadingAnchor constant:0]
    ]];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self CSMTC_updateIndicatorPosition];
       
    });
}

#pragma mark - UICollectionView DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.CSMTC_titles.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCSelectHeaderCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCSelectHeaderCollectionCell" forIndexPath:indexPath];
    NSString *title = self.CSMTC_titles[indexPath.item];
    [cell CSMTC_freshCoveBluffTrackHavenClimbSpan:title CSMTC_steadyCoveRise:self.CSMTC_selectedIndex == indexPath.item];
    return cell;
}

#pragma mark - UICollectionView Delegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.CSMTC_titles[indexPath.item];
    CGSize textSize = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14]}];
    return CGSizeMake(textSize.width + 20, collectionView.bounds.size.height);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.CSMTC_selectedIndex = indexPath.item;
    [collectionView reloadData];
    [self CSMTC_updateIndicatorPosition];
    NSString *CSMTC_stillHollowFold = [NSString stringWithFormat:@"%@", [self.CSMTC_titles objectAtIndex:indexPath.row]];
    [self CSMTC_keenDellFoldTrailKnollRiseShoreSpan:CSMTC_stillHollowFold];
    
}

- (void)CSMTC_keenDellFoldTrailKnollRiseShoreSpan:(NSString *)CSMTC_stillHollowFold {
    if ([self.delegate respondsToSelector:@selector(CSMTC_softValeFoldHollowClimbTrackShore:)]) {
        [self.delegate CSMTC_softValeFoldHollowClimbTrackShore:CSMTC_stillHollowFold];
    }
}

- (void)CSMTC_updateIndicatorPosition {
    if (self.CSMTC_titles.count == 0) return;
    
    NSIndexPath *selectedIndexPath = [NSIndexPath indexPathForItem:self.CSMTC_selectedIndex inSection:0];
    UICollectionViewLayoutAttributes *attrs = [self.CSMTC_collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath];
    
    if (attrs) {
        CGFloat indicatorCenterX = attrs.frame.origin.x + attrs.frame.size.width / 2.0;
        [UIView animateWithDuration:0.25 animations:^{
            self.CSMTC_indicatorLabel.center = CGPointMake(indicatorCenterX, self.CSMTC_indicatorLabel.center.y);
        }];
        [self.CSMTC_collectionView scrollRectToVisible:attrs.frame animated:YES];
    }
}


@end
