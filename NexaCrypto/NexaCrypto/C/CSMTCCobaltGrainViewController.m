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

@interface CSMTCCobaltGrainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) CSMTCSearchNavigationBar *topContainerView;
@property (nonatomic, strong) UITableView *contentTableView;
@property (nonatomic, strong) CSMTCCobaltGrainHeaderView *CSMTC_headerView;

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
    CSMTCCobaltGrainHeaderView *headerView = [[CSMTCCobaltGrainHeaderView alloc] initWithFrame:CGRectZero];
    [headerView CSMTC_softValeFoldHollowClimbTrackShore:@[@"",@"",@"",@""]];
    CGFloat targetWidth = [UIScreen mainScreen].bounds.size.width;
    headerView.translatesAutoresizingMaskIntoConstraints = NO;
    [headerView.widthAnchor constraintEqualToConstant:targetWidth].active = YES;
    CGFloat fittingHeight = [headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    headerView.frame = CGRectMake(0, 0, targetWidth, fittingHeight);
    self.CSMTC_headerView = headerView;
    self.contentTableView.tableHeaderView = headerView;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCCobaltGrainTableCell"];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}



@end
