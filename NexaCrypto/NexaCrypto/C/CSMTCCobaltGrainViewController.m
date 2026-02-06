//
//  CobaltGrainViewController.m
//  NexaCrypto
//
//   
//

#import "CSMTCCobaltGrainViewController.h"
#import "CSMTCSearchNavigationBar.h"
#import "CSMTCBerylValeViewController.h"
#import "CSMTCCobaltGrainHeaderView.h"
#import "CSMTCCobaltGrainTableCell.h"
#import "CSMTCTourmalineViewController.h"
#import "CSMTCNexaManager.h"
#import "CSMTCCoralSpireViewController.h"

@interface CSMTCCobaltGrainViewController () <UITableViewDelegate, UITableViewDataSource, CSMTCCobaltGrainHeaderViewDelegate, CSMTCSearchNavigationBarDelegate>

@property (nonatomic, strong) CSMTCSearchNavigationBar *CSMTC_briskHarborLoom;
@property (nonatomic, strong) UITableView *CSMTC_silentHarborGlen;
@property (nonatomic, strong) CSMTCCobaltGrainHeaderView *CSMTC_firmHavenCrest;
@property (nonatomic, copy) NSArray *CSMTC_gentleValeBridge;

@end

@implementation CSMTCCobaltGrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self CSMTC_setupSubviews];
    [self CSMTC_setupConstraints];
    [self CSMTC_quickCoveTrailFoldHavenClimbPathRise];
}


- (void)CSMTC_setupSubviews {

    self.CSMTC_briskHarborLoom = [[CSMTCSearchNavigationBar alloc] init];
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.CSMTC_briskHarborLoom];
    self.CSMTC_briskHarborLoom.delegate = self;


    self.CSMTC_silentHarborGlen = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.CSMTC_silentHarborGlen.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentHarborGlen.backgroundColor = [UIColor clearColor];
    self.CSMTC_silentHarborGlen.alwaysBounceVertical = YES;
    self.CSMTC_silentHarborGlen.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.CSMTC_silentHarborGlen.delegate = self;
    self.CSMTC_silentHarborGlen.dataSource = self;
    [self.CSMTC_silentHarborGlen registerClass:[CSMTCCobaltGrainTableCell class] forCellReuseIdentifier:@"CSMTCMELLOW_CSMTCCobCSMTCMELLOW_altGrainCSMTCMELLOW_TableCell".CSMTC_removeMellowCoveSpan];
    [self.view addSubview:self.CSMTC_silentHarborGlen];
}

- (void)CSMTC_setupConstraints {

    UILayoutGuide *CSMTC_safeArea = self.view.safeAreaLayoutGuide;

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_briskHarborLoom.topAnchor constraintEqualToAnchor:CSMTC_safeArea.topAnchor],
        [self.CSMTC_briskHarborLoom.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_briskHarborLoom.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_briskHarborLoom.heightAnchor constraintEqualToConstant:72.0]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_silentHarborGlen.topAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.bottomAnchor],
        [self.CSMTC_silentHarborGlen.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_silentHarborGlen.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_silentHarborGlen.bottomAnchor constraintEqualToAnchor:CSMTC_safeArea.bottomAnchor]
    ]];
}

- (void)CSMTC_quickCoveTrailFoldHavenClimbPathRise {
    CSMTCCobaltGrainHeaderView *CSMTC_freshHollowClimb =
    [[CSMTCCobaltGrainHeaderView alloc] initWithFrame:CGRectZero];
    CSMTC_freshHollowClimb.delegate = self;
    CGFloat CSMTC_brightDellPath = UIScreen.mainScreen.bounds.size.width;
    CSMTC_freshHollowClimb.translatesAutoresizingMaskIntoConstraints = NO;
    [CSMTC_freshHollowClimb.widthAnchor constraintEqualToConstant:CSMTC_brightDellPath].active = YES;

    CSMTC_freshHollowClimb.frame = CGRectMake(0, 0, CSMTC_brightDellPath, 1);

    self.CSMTC_firmHavenCrest = CSMTC_freshHollowClimb;
    self.CSMTC_silentHarborGlen.tableHeaderView = CSMTC_freshHollowClimb;
}

- (void)CSMTC_refreshHeaderHeight {
    if (!self.CSMTC_firmHavenCrest) return;
    CSMTCCobaltGrainHeaderView *CSMTC_calmKnollShore = self.CSMTC_firmHavenCrest;
    CGPoint CSMTC_steadyCoveRise = self.CSMTC_silentHarborGlen.contentOffset;
    [CSMTC_calmKnollShore setNeedsLayout];
    [CSMTC_calmKnollShore layoutIfNeeded];

    CGFloat CSMTC_softCrestLane = UIScreen.mainScreen.bounds.size.width;
    CGSize CSMTC_clearGlenFold =
    [CSMTC_calmKnollShore systemLayoutSizeFittingSize:
     CGSizeMake(CSMTC_softCrestLane, UILayoutFittingCompressedSize.height)];
    if (fabs(CSMTC_calmKnollShore.frame.size.height - CSMTC_clearGlenFold.height) < 0.5) {
        return;
    }

    [UIView performWithoutAnimation:^{
        CGRect CSMTC_mistyDellSpan = CSMTC_calmKnollShore.frame;
        CSMTC_mistyDellSpan.size.height = CSMTC_clearGlenFold.height;
        CSMTC_calmKnollShore.frame = CSMTC_mistyDellSpan;

        self.CSMTC_silentHarborGlen.tableHeaderView = CSMTC_calmKnollShore;
        self.CSMTC_silentHarborGlen.contentOffset = CSMTC_steadyCoveRise;
        [self.CSMTC_silentHarborGlen layoutIfNeeded];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.CSMTC_gentleValeBridge.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCMELLOW_CSMTCCobCSMTCMELLOW_altGrainCSMTCMELLOW_TableCell".CSMTC_removeMellowCoveSpan];
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_gentleValeBridge objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_pureDellFoldTrailHollowClimbKnollRise:CSMTC_model CSMTC_gentleRidgeClimb:[NSString stringWithFormat:@"%ld", indexPath.row + 1]];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_gentleValeBridge objectAtIndex:indexPath.row];
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdZOvyedeOvnE2YkL+BDn+L7auVm/Hq+ZMw=="], CSMTC_model.CSMTC_sharpKnollTrace]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}

- (void)CSMTC_tameRidgeTrailFoldKnollPathBluffClimb:(NSString *)CSMTC_tameRidgeTrail {
    if ([CSMTC_tameRidgeTrail isEqualToString:@""]) {
        CSMTCTourmalineViewController *CSMTC_Tourmaline = [[CSMTCTourmalineViewController alloc] init];
        [self.navigationController pushViewController:CSMTC_Tourmaline animated:YES];
        
    } else {
        [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_tameRidgeTrail];
    }
}

- (void)CSMTC_keenCoveTrailFoldKnollClimbPathRise:(NSArray *)CSMTC_briskValeFold {
    self.CSMTC_gentleValeBridge = CSMTC_briskValeFold;
    [self CSMTC_refreshHeaderHeight];
    [self.CSMTC_silentHarborGlen reloadData];
   
}

- (void)CSMTC_humbleKnollRisePathTrackHavenFold:(NSString *)CSMTC_freshHollowFold {
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowFold];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan {
    CSMTCCoralSpireViewController *CSMTC_CoralSpire = [[CSMTCCoralSpireViewController alloc] init];
    CSMTC_CoralSpire.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    CSMTC_CoralSpire.modalPresentationStyle = UIModalPresentationOverFullScreen;
    CSMTC_CoralSpire.CSMTCCoralSpireViewBlock = ^{
        [self.CSMTC_firmHavenCrest CSMTC_stillHollowFoldTrailKnollClimbPathSpan];
    };
    [self presentViewController:CSMTC_CoralSpire animated:YES completion:nil];
}

- (void)CSMTC_freshHollowFoldTrailKnollRisePathBluff:(CSMTCCobaltGrainDataItemModel *)CSMTC_model {
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdZOvyedeOvnE2YkL+BDn+L7auVm/Hq+ZMw=="], CSMTC_model.CSMTC_sharpKnollTrace]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}


@end
