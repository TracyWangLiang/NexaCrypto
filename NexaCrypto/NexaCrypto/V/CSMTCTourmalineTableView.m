//
//  CSMTCTourmalineTableView.m
//  NexaCrypto
//
//   
//

#import "CSMTCTourmalineTableView.h"
#import "CSMTCTourmalineTableViewCell.h"
#import "CSMTCNexaCryptoModel.h"
@interface CSMTCTourmalineTableView () <UITableViewDelegate, UITableViewDataSource, CSMTCTourmalineTableViewCellDelegate>

@property (nonatomic, strong) UITableView *CSMTC_brightHollowFold;
@property (nonatomic, copy) NSArray *CSMTC_mistyValeClimb;


@end

@implementation CSMTCTourmalineTableView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self CSMTC_fairHavenTrailFoldClimbKnollPathSpan];
        [self CSMTC_pureDellFoldTrailHollowClimbKnollRise];
        [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
        self.CSMTC_mistyValeClimb = [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
       
    }
    return self;
}

- (void)CSMTC_fairHavenTrailFoldClimbKnollPathSpan {
    self.CSMTC_brightHollowFold = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.CSMTC_brightHollowFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_brightHollowFold.backgroundColor = [UIColor clearColor];
    self.CSMTC_brightHollowFold.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.CSMTC_brightHollowFold.delegate = self;
    self.CSMTC_brightHollowFold.dataSource = self;
    [self.CSMTC_brightHollowFold registerClass:[CSMTCTourmalineTableViewCell class] forCellReuseIdentifier:@"CSMTCTourmalineTableViewCell"];
    [self addSubview:self.CSMTC_brightHollowFold];
}

- (void)CSMTC_pureDellFoldTrailHollowClimbKnollRise {
    self.CSMTC_quickCoveTrail = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_quickCoveTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_quickCoveTrail.backgroundColor = [UIColor whiteColor];
    
    self.CSMTC_quickCoveTrail.titleLabel.font =
    [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    
    [self.CSMTC_quickCoveTrail setTitle:@"Calculation"
                            forState:UIControlStateNormal];
    [self.CSMTC_quickCoveTrail setTitleColor:[UIColor blackColor]
                                 forState:UIControlStateNormal];
    
    self.CSMTC_quickCoveTrail.layer.masksToBounds = YES;
    self.CSMTC_quickCoveTrail.layer.cornerRadius = 10;
    
    [self addSubview:self.CSMTC_quickCoveTrail];
}


- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    UILayoutGuide *CSMTC_safeArea = self.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        
        [self.CSMTC_brightHollowFold.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.CSMTC_brightHollowFold.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor constant:12],
        [self.CSMTC_brightHollowFold.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor constant:-12],
        [self.CSMTC_brightHollowFold.bottomAnchor constraintEqualToAnchor:self.CSMTC_quickCoveTrail.topAnchor constant:-5],
      
        [self.CSMTC_quickCoveTrail.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:12],
        [self.CSMTC_quickCoveTrail.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor constant:-12],
        [self.CSMTC_quickCoveTrail.bottomAnchor constraintEqualToAnchor:CSMTC_safeArea.bottomAnchor],
        [self.CSMTC_quickCoveTrail.heightAnchor constraintEqualToConstant:44]
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
    return self.CSMTC_mistyValeClimb.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCTourmalineTableViewCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCTourmalineTableViewCell"];
    CSMTCTourmalineModel *CSMTC_model = [self.CSMTC_mistyValeClimb objectAtIndex:indexPath.row];
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
