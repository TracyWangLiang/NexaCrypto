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

@interface CSMTCMicaShoreViewController () <UITableViewDelegate, UITableViewDataSource>
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
}


- (void)setupSubviews {

    self.topContainerView = [[CSMTCSearchNavigationBar alloc] init];
    self.topContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.topContainerView.backgroundColor = UIColor.clearColor;
    [self.view addSubview:self.topContainerView];

    /// TableView
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero
                                                  style:UITableViewStylePlain];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.backgroundColor = UIColor.clearColor;
    self.tableView.alwaysBounceVertical = YES;
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
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
//    return self.array.count;
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCMicaShoreTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCMicaShoreTableCell"];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}


- (NSArray *)array {
    if (!_array) {
        _array = @[];
    }
    return _array;
}

@end
