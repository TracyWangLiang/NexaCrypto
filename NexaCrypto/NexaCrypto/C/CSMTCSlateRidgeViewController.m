//
//  SlateRidgeViewController.m
//  NexaCrypto
//
//   
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

@property (nonatomic, strong) CSMTCSearchNavigationBar *CSMTC_sharpKnollTrace;
@property (nonatomic, strong) CSMTCSelectHeaderView *CSMTC_vastValePoint;
@property (nonatomic, strong) UICollectionView *CSMTC_plainHollowPeak;
@property (nonatomic, assign) BOOL CSMTC_wideRidgeTrail;
@property (nonatomic, copy) NSArray *CSMTC_mellowCoveBluff;

@end

@implementation CSMTCSlateRidgeViewController

- (void)viewDidLoad {
    
    self.view.backgroundColor = [UIColor colorWithRed:17/255.0 green:17/255.0 blue:17/255.0 alpha:1];
    [super viewDidLoad];
    self.CSMTC_mellowCoveBluff = @[];
    [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
       [self CSMTC_quickRidgeTrailPathHavenClimbReach];
       [self CSMTC_briskDellLaneShoreTrackHollowSpan];
       [self CSMTC_freshCoveBluffTrackHavenClimbSpan];
       self.CSMTC_wideRidgeTrail = NO;
       [self CSMTC_lightHavenFoldTrailPathKnollRise];
    [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
    
}


- (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise {
    self.CSMTC_sharpKnollTrace = [[CSMTCSearchNavigationBar alloc] init];
    self.CSMTC_sharpKnollTrace.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_sharpKnollTrace.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.CSMTC_sharpKnollTrace];
    self.CSMTC_sharpKnollTrace.delegate = self;
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach {
    self.CSMTC_vastValePoint = [[CSMTCSelectHeaderView alloc] initWithTitles:@[@"CSMTCMELLOW_ToCSMTCMELLOW_p GainCSMTCMELLOW_ers".CSMTC_removeMellowCoveSpan,@"CSMTCMELLOW_ToCSMTCMELLOW_p LosCSMTCMELLOW_ers".CSMTC_removeMellowCoveSpan,@"CSMTCMELLOW_ExpCSMTCMELLOW_lorCSMTCMELLOW_e".CSMTC_removeMellowCoveSpan]];
    self.CSMTC_vastValePoint.delegate = self;
    self.CSMTC_vastValePoint.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_vastValePoint.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.CSMTC_vastValePoint];
}

- (void)CSMTC_briskDellLaneShoreTrackHollowSpan {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    self.CSMTC_plainHollowPeak =
    [[UICollectionView alloc] initWithFrame:CGRectZero
                       collectionViewLayout:layout];
    
    self.CSMTC_plainHollowPeak.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_plainHollowPeak.backgroundColor = [UIColor clearColor];
    self.CSMTC_plainHollowPeak.delegate = self;
    self.CSMTC_plainHollowPeak.dataSource = self;

    [self.CSMTC_plainHollowPeak registerClass:NSClassFromString(@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teRidgeCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan)
            forCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teRidgeCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan];
    
    [self.CSMTC_plainHollowPeak registerClass:NSClassFromString(@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teExploreCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan)
            forCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teExploreCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan];
    
    [self.CSMTC_plainHollowPeak registerClass:[CSMTCSlateRidgeReusableView class]
            forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                   withReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teRidgeReusCSMTCMELLOW_ableView".CSMTC_removeMellowCoveSpan];
    
    [self.view addSubview:self.CSMTC_plainHollowPeak];
}

- (void)CSMTC_freshCoveBluffTrackHavenClimbSpan {
    UILayoutGuide *CSMTC_safeArea = self.view.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_sharpKnollTrace.topAnchor constraintEqualToAnchor:CSMTC_safeArea.topAnchor],
        [self.CSMTC_sharpKnollTrace.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_sharpKnollTrace.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_sharpKnollTrace.heightAnchor constraintEqualToConstant:72],
        
        [self.CSMTC_vastValePoint.topAnchor constraintEqualToAnchor:self.CSMTC_sharpKnollTrace.bottomAnchor],
        [self.CSMTC_vastValePoint.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_vastValePoint.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_vastValePoint.heightAnchor constraintEqualToConstant:33],
        
        [self.CSMTC_plainHollowPeak.topAnchor constraintEqualToAnchor:self.CSMTC_vastValePoint.bottomAnchor],
        [self.CSMTC_plainHollowPeak.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_plainHollowPeak.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_plainHollowPeak.bottomAnchor constraintEqualToAnchor:CSMTC_safeArea.bottomAnchor]
    ]];
}

- (void)CSMTC_lightHavenFoldTrailPathKnollRise {
    UICollectionViewFlowLayout *CSMTC_tameValeTrack = [[UICollectionViewFlowLayout alloc] init];
    CSMTC_tameValeTrack.scrollDirection = UICollectionViewScrollDirectionVertical;
    CSMTC_tameValeTrack.minimumLineSpacing = 0;
    CSMTC_tameValeTrack.minimumInteritemSpacing = 0;
    CGFloat CSMTC_quickDellFold = [UIScreen mainScreen].bounds.size.width;
    CSMTC_tameValeTrack.itemSize = CGSizeMake(CSMTC_quickDellFold, 60);
    CSMTC_tameValeTrack.headerReferenceSize = CGSizeZero;
    
    [self.CSMTC_plainHollowPeak setCollectionViewLayout:CSMTC_tameValeTrack animated:NO];
    [self.CSMTC_plainHollowPeak reloadData];
}

- (void)CSMTC_mellowCoveTrailFoldBluffShoreSpan {
    UICollectionViewFlowLayout *CSMTC_braveGlenClimb = [[UICollectionViewFlowLayout alloc] init];
    CSMTC_braveGlenClimb.scrollDirection = UICollectionViewScrollDirectionVertical;
    CSMTC_braveGlenClimb.minimumLineSpacing = 10;
    CSMTC_braveGlenClimb.minimumInteritemSpacing = 10;
    CGFloat CSMTC_quickDellFold = ([UIScreen mainScreen].bounds.size.width - 44) / 3.0;
    CSMTC_braveGlenClimb.itemSize = CGSizeMake(CSMTC_quickDellFold, 146);
    CSMTC_braveGlenClimb.sectionInset = UIEdgeInsetsMake(0, 12, 0, 12);
    
    __weak typeof(self) weakSelf = self;
    [self.CSMTC_plainHollowPeak setCollectionViewLayout:CSMTC_braveGlenClimb animated:YES completion:^(BOOL finished) {
        [weakSelf.CSMTC_plainHollowPeak.collectionViewLayout invalidateLayout];
        [weakSelf.CSMTC_plainHollowPeak reloadData];
        [weakSelf.CSMTC_plainHollowPeak layoutIfNeeded];
    }];
    
    self.CSMTC_wideRidgeTrail = YES;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    
    if (!self.CSMTC_wideRidgeTrail) return CGSizeZero;
    static CSMTCSlateRidgeReusableView *CSMTC_aptKnollTrail = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CSMTC_aptKnollTrail = [[CSMTCSlateRidgeReusableView alloc] initWithFrame:CGRectMake(0, 0, collectionView.bounds.size.width, 0)];
    });
    
    CSMTC_aptKnollTrail.translatesAutoresizingMaskIntoConstraints = NO;
    CSMTC_aptKnollTrail.bounds = CGRectMake(0, 0, collectionView.bounds.size.width, 0);
    [CSMTC_aptKnollTrail setNeedsLayout];
    [CSMTC_aptKnollTrail layoutIfNeeded];
    
    CGSize CSMTC_sharpDellPath = [CSMTC_aptKnollTrail systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return CGSizeMake(collectionView.bounds.size.width, CSMTC_sharpDellPath.height);
}

- (__kindof UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if (!self.CSMTC_wideRidgeTrail) {
        return nil;
    }
    
    CSMTCSlateRidgeReusableView *CSMTC_quickCoveTrail =
    [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teRidgeReusCSMTCMELLOW_ableView".CSMTC_removeMellowCoveSpan forIndexPath:indexPath];
    [CSMTC_quickCoveTrail.CSMTC_wideRidgeTrail addTarget:self action:@selector(CSMTC_stillHollowFoldTrailKnollClimbPathSpan) forControlEvents:UIControlEventTouchUpInside];
    return CSMTC_quickCoveTrail;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.CSMTC_mellowCoveBluff.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.CSMTC_wideRidgeTrail) {
        
        CSMTCSlateExploreCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teExploreCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan forIndexPath:indexPath];
        CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_mellowCoveBluff objectAtIndex:indexPath.row];
        [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model];
        return CSMTC_cell;
    } else {
        CSMTCSlateRidgeCollectionCell *CSMTC_cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CSMTCMELLOW_CSMTCSlaCSMTCMELLOW_teRidgeCoCSMTCMELLOW_llectionCell".CSMTC_removeMellowCoveSpan forIndexPath:indexPath];
        CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_mellowCoveBluff objectAtIndex:indexPath.row];
        [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model CSMTC_clearKnollClimb:[NSString stringWithFormat:@"%ld", indexPath.row + 1]];
        return CSMTC_cell;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_mellowCoveBluff objectAtIndex:indexPath.row];
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdZOvyedeOvnE2YkL+BDn+L7auVm/Hq+ZMw=="], CSMTC_model.CSMTC_sharpKnollTrace]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}


- (void)CSMTC_softValeFoldHollowClimbTrackShore:(NSString *)CSMTC_tameRidgeTrail {
    if ([CSMTC_tameRidgeTrail isEqualToString:@"CSMTCMELLOW_ExpCSMTCMELLOW_lorCSMTCMELLOW_e".CSMTC_removeMellowCoveSpan]) {
        self.CSMTC_wideRidgeTrail = YES;
        [self CSMTC_mellowCoveTrailFoldBluffShoreSpan];
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
        return;
    }
    self.CSMTC_wideRidgeTrail = NO;
    [self CSMTC_lightHavenFoldTrailPathKnollRise];
    if ([CSMTC_tameRidgeTrail isEqualToString:@"CSMTCMELLOW_ToCSMTCMELLOW_p GainCSMTCMELLOW_ers".CSMTC_removeMellowCoveSpan]) {
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
    } else if ([CSMTC_tameRidgeTrail isEqualToString:@"CSMTCMELLOW_ToCSMTCMELLOW_p LosCSMTCMELLOW_ers".CSMTC_removeMellowCoveSpan]) {
        self.CSMTC_mellowCoveBluff = [[self.CSMTC_mellowCoveBluff reverseObjectEnumerator] allObjects];
        [self.CSMTC_plainHollowPeak reloadData];
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
    [CSMTCNexaManager CSMTC_firmKnollTrailFoldHavenClimbSpan:[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhydj2SdmOgB69UELFU/ehuZiegIFBqdueXpvn3utuwNJ7MSpl44cejrT7q48Hk1FTfok4l8sLOPbuzI2cqAr3xGcJfEq0HG++8sxyERtnIBalHH9T1Jz"] CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCCobaltGrainDataModel *CSMTC_model = [CSMTCCobaltGrainDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            self.CSMTC_mellowCoveBluff = [CSMTCNexaManager CSMTC_briskRidgeTrailFoldDellKnollSpan:CSMTC_model.CSMTC_fairRidgeTrail CSMTC_humbleRidgeTrail:CSMTCQuoteSortFieldPrice];
            [self.CSMTC_plainHollowPeak reloadData];
           
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

- (void)CSMTC_stillHollowFoldTrailKnollClimbPathSpan {
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@?", [CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdNtzGZb/9nPu6TnbdxM="]]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}


@end
