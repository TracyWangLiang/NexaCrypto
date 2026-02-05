//
//  CSMTCCoralSpireViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCCoralSpireViewController.h"
#import "CSMTCCoralSpireTableCell.h"
#import "CSMTCNexaManager.h"

@interface CSMTCCoralSpireViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIButton *topButton;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *sureButton;


@property (nonatomic, copy) NSArray *array;

@end

@implementation CSMTCCoralSpireViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:0.3];
    self.array = @[];
    [self setupSubviews];
    [self setupConstraints];
    [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
}

#pragma mark - Setup Subviews

- (void)setupSubviews {
    
    self.topButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.topButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.topButton.backgroundColor = [UIColor systemBackgroundColor];
    [self.topButton addTarget:self action:@selector(topButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.topButton];
    
    self.containerView = [[UIView alloc] init];
    self.containerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.containerView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.containerView];
    
    self.containerView.layer.masksToBounds = YES;
    self.containerView.layer.cornerRadius = 12;
    self.containerView.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    
    
    // tableView
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.backgroundColor = [UIColor systemBackgroundColor];
    //    self.tableView.alwaysBounceVertical = YES;
    [self.containerView addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CSMTCCoralSpireTableCell class] forCellReuseIdentifier:@"CSMTCCoralSpireTableCell"];
    
    self.sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sureButton setTitle:@"Sure" forState:UIControlStateNormal];
    [self.sureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.sureButton.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.sureButton.backgroundColor = [UIColor whiteColor];
    self.sureButton.layer.masksToBounds = YES;
    self.sureButton.layer.cornerRadius = 10;
    self.sureButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.sureButton];
}

#pragma mark - Setup Constraints

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.view.safeAreaLayoutGuide;

    [NSLayoutConstraint activateConstraints:@[
        // topButton constraints
        [self.topButton.topAnchor constraintEqualToAnchor:safeArea.topAnchor],
        [self.topButton.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.topButton.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.topButton.heightAnchor constraintEqualToConstant:250],
        
        
        [self.sureButton.bottomAnchor constraintEqualToAnchor:self.containerView.bottomAnchor constant:-5],
        [self.sureButton.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:12],
        [self.sureButton.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor constant:-12],
        [self.sureButton.heightAnchor constraintEqualToAnchor:self.sureButton.widthAnchor multiplier:44.0 / 351.0],

        // containerView constraints
        [self.containerView.topAnchor constraintEqualToAnchor:self.topButton.bottomAnchor],
        [self.containerView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor],
        [self.containerView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor],
        [self.containerView.bottomAnchor constraintEqualToAnchor:self.sureButton.topAnchor constant:-5],

        // tableView constraints (fill containerView)
        [self.tableView.topAnchor constraintEqualToAnchor:self.containerView.topAnchor],
        [self.tableView.leadingAnchor constraintEqualToAnchor:self.containerView.leadingAnchor],
        [self.tableView.trailingAnchor constraintEqualToAnchor:self.containerView.trailingAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor:self.containerView.bottomAnchor],
    ]];
}

- (void)topButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)aaaa {
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.CSMTCCoralSpireViewBlock) {
        self.CSMTCCoralSpireViewBlock();
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCoralSpireTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCCoralSpireTableCell"];
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    if ([self CSMTC_containsDataModel:CSMTC_model inArray:[CSMTCNexaManager CSMTC_loadAllGrainDataModels]]) {
        [CSMTCNexaManager CSMTC_deleteGrainDataModel:CSMTC_model];
    } else {
        [CSMTCNexaManager CSMTC_saveGrainDataModel:CSMTC_model];
    }
    [tableView reloadData];
}


- (BOOL)CSMTC_containsDataModel:(CSMTCCobaltGrainDataItemModel *)model inArray:(NSArray *)array {
    if (!model || !array || array.count == 0) return NO;
    for (CSMTCCobaltGrainDataItemModel *item in array) {
        if ([item.CSMTC_id isEqualToString:model.CSMTC_id]) {
            return YES;
        }
    }
    return NO;
}

- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    [CSMTCNexaManager getRequestWithURL:[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhydj2SdmOgB69UELFU/ehuZiegIFBqdueXpvn3utuwNJ7MSpl44cejrT7q48Hk1FTfok4l8sLOPbuzI2cqAr3xGcJfEq0HG++8sxyERtnIBalHH9T1Jz"] CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCCobaltGrainDataModel *CSMTC_model = [CSMTCCobaltGrainDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            self.array = [CSMTCNexaManager CSMTC_sortDataModels:CSMTC_model.CSMTC_cryptoCurrencyList byQuoteField:CSMTCQuoteSortFieldPrice];
            [self.tableView reloadData];
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

@end
