//
//  CSMTCTourmalineTableView.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import "CSMTCTourmalineTableView.h"
#import "CSMTCTourmalineTableViewCell.h"
#import "CSMTCNexaCryptoModel.h"
@interface CSMTCTourmalineTableView () <UITableViewDelegate, UITableViewDataSource, CSMTCTourmalineTableViewCellDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *array;


@end

@implementation CSMTCTourmalineTableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setupTableView];
        [self setupCalculationButton];
        [self setupConstraints];
        self.array = [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
       
    }
    return self;
}

#pragma mark - Subviews

- (void)setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero
                                                  style:UITableViewStylePlain];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CSMTCTourmalineTableViewCell class] forCellReuseIdentifier:@"CSMTCTourmalineTableViewCell"];
    [self addSubview:self.tableView];
}

- (void)setupCalculationButton {
    self.calculationButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.calculationButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.calculationButton.backgroundColor = [UIColor whiteColor];
    
    self.calculationButton.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    
    [self.calculationButton setTitle:@"Calculation"
                            forState:UIControlStateNormal];
    [self.calculationButton setTitleColor:[UIColor blackColor]
                                 forState:UIControlStateNormal];
    
    self.calculationButton.layer.masksToBounds = YES;
    self.calculationButton.layer.cornerRadius = 10;
    
    [self addSubview:self.calculationButton];
}

#pragma mark - Constraints

- (void)setupConstraints {
    UILayoutGuide *safeArea = self.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        
        // tableView
        [self.tableView.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.tableView.leadingAnchor constraintEqualToAnchor:safeArea.leadingAnchor constant:12],
        [self.tableView.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor constant:-12],
        [self.tableView.bottomAnchor constraintEqualToAnchor:self.calculationButton.topAnchor constant:-5],
        
        // calculationButton
        [self.calculationButton.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.calculationButton.trailingAnchor constraintEqualToAnchor:safeArea.trailingAnchor constant:-12],
        [self.calculationButton.bottomAnchor constraintEqualToAnchor:safeArea.bottomAnchor],
        [self.calculationButton.heightAnchor constraintEqualToConstant:44]
    ]];
}

- (NSArray *)CSMTC_gentleHollowBridgeFoldTrackSpanRise {
    NSMutableArray *CSMTC_steadyKnollFold = [NSMutableArray array];
    for (int i = 0; i < 7; i++) {
        CSMTCTourmalineModel *CSMTC_model = [[CSMTCTourmalineModel alloc] init];
        if (i == 0) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Assets to Compare";
            CSMTC_model.CSMTC_brightValeClimb = @[@"ETH",@"SOL",@"ARB",@"BNB",@"BTC",@"XRP"];
            CSMTC_model.CSMTC_gentleCoveTrail = 3;
        } else if (i == 1) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Structure Dimension";
            CSMTC_model.CSMTC_brightValeClimb = @[@"Supply Structure",@"Network Role",@"Utility Distribution",@"Governance Design",@"Ecosystem Dependency"];
            CSMTC_model.CSMTC_gentleCoveTrail = 2;
        } else if (i == 2) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Comparison Scope";
            CSMTC_model.CSMTC_brightValeClimb = @[@"Same Category",@"Cross Category",@"Ecosystem Level"];
            CSMTC_model.CSMTC_gentleCoveTrail = 2;
        } else if (i == 3) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Lifecycle Context";
            CSMTC_model.CSMTC_brightValeClimb = @[@"Early Stage",@"Growth Stage",@"Mature Stage"];
            CSMTC_model.CSMTC_gentleCoveTrail = 3;
        } else if (i == 4) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Circulation Perspective";
            CSMTC_model.CSMTC_brightValeClimb = @[@"Current Circulation",@"Fully Released",@"Scheduled Release"];
            CSMTC_model.CSMTC_gentleCoveTrail = 2;
        } else if (i == 5) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Data Emphasis";
            CSMTC_model.CSMTC_brightValeClimb = @[@"Structural Balance",@"Network Maturity",@"Ecosystem Stability"];
            CSMTC_model.CSMTC_gentleCoveTrail = 2;
        } else if (i == 6) {
            CSMTC_model.CSMTC_firmHavenTrail = @"Base Unit";
            CSMTC_model.CSMTC_brightValeClimb = @[@"USD",@"ETH",@"ETH"];
            CSMTC_model.CSMTC_gentleCoveTrail = 3;
        }
        [CSMTC_steadyKnollFold addObject:CSMTC_model];
    }
    return [CSMTC_steadyKnollFold copy];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCTourmalineTableViewCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCTourmalineTableViewCell"];
    CSMTCTourmalineModel *CSMTC_model = [self.array objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_model];
    CSMTC_cell.delegate = self;
    return CSMTC_cell;
}

- (void)CSMTC_tameValeTrackHollowClimbFoldBluff:(NSString *)CSMTC_wideDellTrail CSMTC_keenCoveTrail:(NSString *)CSMTC_keenCoveTrail {
    
    if ([self.delegate respondsToSelector:@selector(CSMTC_livelyHavenPathFoldTrailKnollRise:CSMTC_keenCoveTrail:)]) {
        [self.delegate CSMTC_livelyHavenPathFoldTrailKnollRise:CSMTC_wideDellTrail CSMTC_keenCoveTrail:CSMTC_keenCoveTrail];
    }
}


@end
