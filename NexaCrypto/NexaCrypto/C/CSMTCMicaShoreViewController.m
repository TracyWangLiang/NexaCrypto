//
//  CSMTCMicaShoreViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCMicaShoreViewController.h"
#import "CSMTCSearchNavigationBar.h"
#import "CSMTCBerylValeViewController.h"
#import "CSMTCMicaShoreTableCell.h"
#import "CSMTCNexaManager.h"

@interface CSMTCMicaShoreViewController () <UITableViewDelegate, UITableViewDataSource, CSMTCSearchNavigationBarDelegate>
@property (nonatomic, strong) CSMTCSearchNavigationBar *topContainerView;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *array;

@end

@implementation CSMTCMicaShoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self setupSubviews];
    [self setupConstraints];
    [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
}


- (void)setupSubviews {

    self.topContainerView = [[CSMTCSearchNavigationBar alloc] init];
    self.topContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.topContainerView.backgroundColor = UIColor.clearColor;
    [self.view addSubview:self.topContainerView];
    self.topContainerView.delegate = self;

    /// TableView
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.backgroundColor = UIColor.clearColor;
    self.tableView.alwaysBounceVertical = YES;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CSMTCMicaShoreTableCell class] forCellReuseIdentifier:@"CSMTCMicaShoreTableCell"];
    [self.view addSubview:self.tableView];
}

#pragma mark - Constraints

- (void)setupConstraints {

    UILayoutGuide *safe = self.view.safeAreaLayoutGuide;

    /// topContainerView
    [NSLayoutConstraint activateConstraints:@[
        [self.topContainerView.topAnchor constraintEqualToAnchor:safe.topAnchor],
        [self.topContainerView.leadingAnchor constraintEqualToAnchor:safe.leadingAnchor],
        [self.topContainerView.trailingAnchor constraintEqualToAnchor:safe.trailingAnchor],
        [self.topContainerView.heightAnchor constraintEqualToConstant:72]
    ]];

    /// tableView
    [NSLayoutConstraint activateConstraints:@[
        [self.tableView.topAnchor constraintEqualToAnchor:self.topContainerView.bottomAnchor],
        [self.tableView.leadingAnchor constraintEqualToAnchor:safe.leadingAnchor],
        [self.tableView.trailingAnchor constraintEqualToAnchor:safe.trailingAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor:safe.bottomAnchor]
    ]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCMicaShoreTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCMicaShoreTableCell"];
    CSMTCMicaShoreItemModel *CSMTC_itemModel = [self.array objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCMicaShoreItemModel *CSMTC_itemModel = [self.array objectAtIndex:indexPath.row];
    NSString *CSMTC_freshHollowClimb = [CSMTCNexaCrypto CSMTC_calmKnollShorePathRiseFoldTrail:[NSString stringWithFormat:@"%@%@&",[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"qBmfY0ygdI23kYceu4uCHeGLWFH5fNKKqbgQgY9xUTrMH0mjyA=="], CSMTC_itemModel.CSMTC_streetDynamics]];
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}

- (void)CSMTC_humbleKnollRisePathTrackHavenFold:(NSString *)CSMTC_freshHollowFold {
    [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowFold];
}

- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    NSString *CSMTC_gentleRidgeClimb = [CSMTCNexaCrypto CSMTC_wideHollowPathTrailFoldKnollRise:@"slnphz/vfjnahccdzzfg"];
    [CSMTCNexaManager postRequestWithURL:CSMTC_gentleRidgeClimb CSMTC_parameters:@{@"urbanGroove":@"1",@"nightDistrict":@"3"} CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCMicaShoreDataModel *CSMTC_model = [CSMTCMicaShoreDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            if ([CSMTC_model.CSMTC_code isEqualToString:@"200000"]) {
                self.array = CSMTC_model.CSMTC_data;
                [self.tableView reloadData];
            }
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

- (NSArray *)array {
    if (!_array) {
        _array = @[];
    }
    return _array;
}

@end
