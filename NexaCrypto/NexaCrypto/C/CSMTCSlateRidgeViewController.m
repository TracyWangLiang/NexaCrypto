//
//  SlateRidgeViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCSlateRidgeViewController.h"
#import "CSMTCSearchNavigationBar.h"
#import "CSMTCBerylValeViewController.h"
#import "CSMTCSlateRidgeCollectionCell.h"
#import "CSMTCSlateExploreCollectionCell.h"
#import "CSMTCSelectHeaderView.h"
#import "CSMTCSlateRidgeReusableView.h"
#import "CSMTCNexaManager.h"

@interface CSMTCSlateRidgeViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, CSMTCSelectHeaderViewDelegate, CSMTCSearchNavigationBarDelegate>


@property (nonatomic, strong) CSMTCSearchNavigationBar *topContainerView;
@property (nonatomic, strong) CSMTCSelectHeaderView *middleSpacerView;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, assign) BOOL usingExploreStyle;
@property (nonatomic, copy) NSArray *array;

@end

@implementation CSMTCSlateRidgeViewController

- (void)viewDidLoad {
    
    self.view.backgroundColor = [UIColor colorWithRed:17/255.0 green:17/255.0 blue:17/255.0 alpha:1];
    [super viewDidLoad];
    self.array = @[];
    [self setupTopContainerView];
       [self setupMiddleSpacerView];
       [self setupCollectionView];
       [self setupConstraints];
       self.usingExploreStyle = NO;
       [self applyRidgeLayoutStyle];
    [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
    
}


- (void)setupTopContainerView {
    self.topContainerView = [[CSMTCSearchNavigationBar alloc] init];
    self.topContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.topContainerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.topContainerView];
    self.topContainerView.delegate = self;
}

- (void)setupMiddleSpacerView {
    self.middleSpacerView = [[CSMTCSelectHeaderView alloc] initWithTitles:@[@"Top Gainers",@"Top Losers",@"Explore"]];
    self.middleSpacerView.delegate = self;
    self.middleSpacerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.middleSpacerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.middleSpacerView];
}

- (void)setupCollectionView {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    self.collectionView =
    [[UICollectionView alloc] initWithFrame:CGRectZero
                       collectionViewLayout:layout];
    
    self.collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;

    [self.collectionView registerClass:NSClassFromString(@"CSMTCSlateRidgeCollectionCell")
            forCellWithReuseIdentifier:@"CSMTCSlateRidgeCollectionCell"];
    
    [self.collectionView registerClass:NSClassFromString(@"CSMTCSlateExploreCollectionCell")
            forCellWithReuseIdentifier:@"CSMTCSlateExploreCollectionCell"];
    
    [self.collectionView registerClass:[CSMTCSlateRidgeReusableView class]
            forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                   withReuseIdentifier:@"CSMTCSlateRidgeReusableView"];
    
    [self.view addSubview:self.collectionView];
}

#pragma mark - Constraints

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.view.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        [self.topContainerView.topAnchor constraintEqualToAnchor:safeArea.topAnchor],
        [self.topContainerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.topContainerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.topContainerView.heightAnchor constraintEqualToConstant:72],
        
        [self.middleSpacerView.topAnchor constraintEqualToAnchor:self.topContainerView.bottomAnchor],
        [self.middleSpacerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.middleSpacerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.middleSpacerView.heightAnchor constraintEqualToConstant:33],
        
        [self.collectionView.topAnchor constraintEqualToAnchor:self.middleSpacerView.bottomAnchor],
        [self.collectionView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.collectionView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.collectionView.bottomAnchor constraintEqualToAnchor:safeArea.bottomAnchor]
    ]];
}

#pragma mark - Layout Switch

/// 初始 Ridge 样式
- (void)applyRidgeLayoutStyle {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    CGFloat CSMTC_quickDellFold = [UIScreen mainScreen].bounds.size.width;
    layout.itemSize = CGSizeMake(CSMTC_quickDellFold, 60);
    layout.headerReferenceSize = CGSizeZero;
    
    [self.collectionView setCollectionViewLayout:layout animated:NO];
    [self.collectionView reloadData];
}

/// 10 秒后的 Explore 样式
- (void)applyExploreLayoutStyle {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    CGFloat CSMTC_quickDellFold = ([UIScreen mainScreen].bounds.size.width - 44) / 3.0;
    layout.itemSize = CGSizeMake(CSMTC_quickDellFold, 146);
    layout.sectionInset = UIEdgeInsetsMake(0, 12, 0, 12);
    
    __weak typeof(self) weakSelf = self;
    [self.collectionView setCollectionViewLayout:layout animated:YES completion:^(BOOL finished) {
        [weakSelf.collectionView.collectionViewLayout invalidateLayout];
        [weakSelf.collectionView reloadData];
        [weakSelf.collectionView layoutIfNeeded];
    }];
    
    self.usingExploreStyle = YES;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    
    if (!self.usingExploreStyle) return CGSizeZero;
    
    // 使用 dequeue 的 header 测量
    static CSMTCSlateRidgeReusableView *sizingHeader = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sizingHeader = [[CSMTCSlateRidgeReusableView alloc] initWithFrame:CGRectMake(0, 0, collectionView.bounds.size.width, 0)];
    });
    
    sizingHeader.translatesAutoresizingMaskIntoConstraints = NO;
    sizingHeader.bounds = CGRectMake(0, 0, collectionView.bounds.size.width, 0);
    [sizingHeader setNeedsLayout];
    [sizingHeader layoutIfNeeded];
    
    CGSize fittingSize = [sizingHeader systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return CGSizeMake(collectionView.bounds.size.width, fittingSize.height);
}

- (__kindof UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if (!self.usingExploreStyle) {
        return nil;
    }
    
    CSMTCSlateRidgeReusableView *header =
    [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"CSMTCSlateRidgeReusableView" forIndexPath:indexPath];
    [header.chatButton addTarget:self action:@selector(CSMTC_stillHollowFoldTrailKnollClimbPathSpan) forControlEvents:UIControlEventTouchUpInside];
    return header;
}

#pragma mark - UICollectionView DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.array.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.usingExploreStyle) {
        
        CSMTCSlateExploreCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCSlateExploreCollectionCell" forIndexPath:indexPath];
        CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
        [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model];
        return CSMTC_cell;
    } else {
        CSMTCSlateRidgeCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCSlateRidgeCollectionCell" forIndexPath:indexPath];
        CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
        [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model CSMTC_clearKnollClimb:[NSString stringWithFormat:@"%ld", indexPath.row + 1]];
        return CSMTC_cell;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdZOvyedeOvnE2YkL+BDn+L7auVm/Hq+ZMw=="], CSMTC_model.CSMTC_id]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}


- (void)CSMTC_softValeFoldHollowClimbTrackShore:(NSString *)CSMTC_tameRidgeTrail {
    if ([CSMTC_tameRidgeTrail isEqualToString:@"Explore"]) {
        self.usingExploreStyle = YES;
        [self applyExploreLayoutStyle];
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
        return;
    }
    self.usingExploreStyle = NO;
    [self applyRidgeLayoutStyle];
    if ([CSMTC_tameRidgeTrail isEqualToString:@"Top Gainers"]) {
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
    } else if ([CSMTC_tameRidgeTrail isEqualToString:@"Top Losers"]) {
        self.array = [[self.array reverseObjectEnumerator] allObjects];
        [self.collectionView reloadData];
    }
    
}


- (void)CSMTC_humbleKnollRisePathTrackHavenFold:(NSString *)CSMTC_freshHollowFold {
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowFold];
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}


- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    [CSMTCNexaManager getRequestWithURL:[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhydj2SdmOgB69UELFU/ehuZiegIFBqdueXpvn3utuwNJ7MSpl44cejrT7q48Hk1FTfok4l8sLOPbuzI2cqAr3xGcJfEq0HG++8sxyERtnIBalHH9T1Jz"] CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCCobaltGrainDataModel *CSMTC_model = [CSMTCCobaltGrainDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            self.array = [CSMTCNexaManager CSMTC_sortDataModels:CSMTC_model.CSMTC_cryptoCurrencyList byQuoteField:CSMTCQuoteSortFieldPrice];
            [self.collectionView reloadData];
           
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

- (void)CSMTC_stillHollowFoldTrailKnollClimbPathSpan {
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@?", [CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdNtzGZb/9nPu6TnbdxM="]]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}


@end
