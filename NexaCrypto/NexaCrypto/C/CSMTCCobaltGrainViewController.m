//
//  CobaltGrainViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
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

@property (nonatomic, strong) CSMTCSearchNavigationBar *topContainerView;
@property (nonatomic, strong) UITableView *contentTableView;
@property (nonatomic, strong) CSMTCCobaltGrainHeaderView *CSMTC_headerView;
@property (nonatomic, copy) NSArray *array;

@end

@implementation CSMTCCobaltGrainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self setupSubviews];
    [self setupConstraints];
    [self setHeaderView];
}


- (void)setupSubviews {

    self.topContainerView = [[CSMTCSearchNavigationBar alloc] init];
    self.topContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.topContainerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.topContainerView];
    self.topContainerView.delegate = self;


    self.contentTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.contentTableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.contentTableView.backgroundColor = [UIColor clearColor];
    self.contentTableView.alwaysBounceVertical = YES;
    self.contentTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.contentTableView.delegate = self;
    self.contentTableView.dataSource = self;
    [self.contentTableView registerClass:[CSMTCCobaltGrainTableCell class] forCellReuseIdentifier:@"CSMTCCobaltGrainTableCell"];
    [self.view addSubview:self.contentTableView];
}

#pragma mark - Constraints

- (void)setupConstraints {

    UILayoutGuide *safeArea = self.view.safeAreaLayoutGuide;

    /// topContainerView 约束
    [NSLayoutConstraint activateConstraints:@[
        [self.topContainerView.topAnchor constraintEqualToAnchor:safeArea.topAnchor],
        [self.topContainerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.topContainerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.topContainerView.heightAnchor constraintEqualToConstant:72.0]
    ]];

    /// tableView 约束
    [NSLayoutConstraint activateConstraints:@[
        [self.contentTableView.topAnchor constraintEqualToAnchor:self.topContainerView.bottomAnchor],
        [self.contentTableView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.contentTableView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.contentTableView.bottomAnchor constraintEqualToAnchor:safeArea.bottomAnchor]
    ]];
}

- (void)setHeaderView {
    CSMTCCobaltGrainHeaderView *headerView =
    [[CSMTCCobaltGrainHeaderView alloc] initWithFrame:CGRectZero];

    headerView.delegate = self;

    CGFloat targetWidth = UIScreen.mainScreen.bounds.size.width;
    headerView.translatesAutoresizingMaskIntoConstraints = NO;
    [headerView.widthAnchor constraintEqualToConstant:targetWidth].active = YES;

    headerView.frame = CGRectMake(0, 0, targetWidth, 1);

    self.CSMTC_headerView = headerView;
    self.contentTableView.tableHeaderView = headerView;
}

- (void)CSMTC_refreshHeaderHeight {
    if (!self.CSMTC_headerView) return;

    CSMTCCobaltGrainHeaderView *headerView = self.CSMTC_headerView;

    // 记录当前位置，防止跳
    CGPoint currentOffset = self.contentTableView.contentOffset;

    // 强制 header 内部布局完成（collectionView 非常关键）
    [headerView setNeedsLayout];
    [headerView layoutIfNeeded];

    CGFloat targetWidth = UIScreen.mainScreen.bounds.size.width;
    CGSize fittingSize =
    [headerView systemLayoutSizeFittingSize:
     CGSizeMake(targetWidth, UILayoutFittingCompressedSize.height)];

    // 高度没变化就不折腾
    if (fabs(headerView.frame.size.height - fittingSize.height) < 0.5) {
        return;
    }

    [UIView performWithoutAnimation:^{
        CGRect frame = headerView.frame;
        frame.size.height = fittingSize.height;
        headerView.frame = frame;

        // 关键：重新赋值触发表头刷新
        self.contentTableView.tableHeaderView = headerView;

        // 还原滚动位置
        self.contentTableView.contentOffset = currentOffset;
        [self.contentTableView layoutIfNeeded];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCCobaltGrainTableCell"];
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_pureDellFoldTrailHollowClimbKnollRise:CSMTC_model CSMTC_gentleRidgeClimb:[NSString stringWithFormat:@"%ld", indexPath.row + 1]];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdZOvyedeOvnE2YkL+BDn+L7auVm/Hq+ZMw=="], CSMTC_model.CSMTC_id]];
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
    self.array = CSMTC_briskValeFold;
    [self CSMTC_refreshHeaderHeight];
    [self.contentTableView reloadData];
   
}

- (void)CSMTC_humbleKnollRisePathTrackHavenFold:(NSString *)CSMTC_freshHollowFold {
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowFold];
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan {
    CSMTCCoralSpireViewController *CSMTC_CoralSpire = [[CSMTCCoralSpireViewController alloc] init];
    CSMTC_CoralSpire.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    CSMTC_CoralSpire.modalPresentationStyle = UIModalPresentationOverFullScreen;
    CSMTC_CoralSpire.CSMTCCoralSpireViewBlock = ^{
        [self.CSMTC_headerView CSMTC_stillHollowFoldTrailKnollClimbPathSpan];
    };
    [self presentViewController:CSMTC_CoralSpire animated:YES completion:nil];
}




@end
