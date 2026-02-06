//
//  CSMTCCoralSpireViewController.m
//  NexaCrypto
//
//   
//

#import "CSMTCCoralSpireViewController.h"
#import "CSMTCCoralSpireTableCell.h"
#import "CSMTCNexaManager.h"

@interface CSMTCCoralSpireViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIButton *CSMTC_briskHarborLoom;
@property (nonatomic, strong) UIView *CSMTC_silentHarborGlen;
@property (nonatomic, strong) UILabel *CSMTC_firmHavenCrest;
@property (nonatomic, strong) UITableView *CSMTC_gentleValeBridge;
@property (nonatomic, strong) UIButton *CSMTC_quickRidgeHollow;
@property (nonatomic, copy) NSArray *CSMTC_freshHollowClimb;

@end

@implementation CSMTCCoralSpireViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.05];
    self.CSMTC_freshHollowClimb = @[];
    [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
    [self CSMTC_quickRidgeTrailPathHavenClimbReach];
    [self CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff];
}

- (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise {
    
    self.CSMTC_briskHarborLoom = [UIButton buttonWithType:UIButtonTypeCustom];
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.backgroundColor = [UIColor clearColor];
    [self.CSMTC_briskHarborLoom addTarget:self action:@selector(CSMTC_silentValePointFoldKnollBluffPath:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.CSMTC_briskHarborLoom];
    
    
    
    self.CSMTC_silentHarborGlen = [[UIView alloc] init];
    self.CSMTC_silentHarborGlen.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentHarborGlen.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.CSMTC_silentHarborGlen];
    
    self.CSMTC_silentHarborGlen.layer.masksToBounds = YES;
    self.CSMTC_silentHarborGlen.layer.cornerRadius = 12;
    self.CSMTC_silentHarborGlen.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    
    self.CSMTC_firmHavenCrest = [[UILabel alloc] init];
    self.CSMTC_firmHavenCrest.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
    self.CSMTC_firmHavenCrest.translatesAutoresizingMaskIntoConstraints = NO;
    [self.CSMTC_silentHarborGlen addSubview:self.CSMTC_firmHavenCrest];
    
    self.CSMTC_gentleValeBridge = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.CSMTC_gentleValeBridge.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_gentleValeBridge.backgroundColor = [UIColor clearColor];
    self.CSMTC_gentleValeBridge.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.CSMTC_silentHarborGlen addSubview:self.CSMTC_gentleValeBridge];
    self.CSMTC_gentleValeBridge.delegate = self;
    self.CSMTC_gentleValeBridge.dataSource = self;
    [self.CSMTC_gentleValeBridge registerClass:[CSMTCCoralSpireTableCell class] forCellReuseIdentifier:@"CSMTCCoralSpireTableCell"];
    
    self.CSMTC_quickRidgeHollow = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.CSMTC_quickRidgeHollow setTitle:@"Sure" forState:UIControlStateNormal];
    [self.CSMTC_quickRidgeHollow setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.CSMTC_quickRidgeHollow.titleLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:15];
    self.CSMTC_quickRidgeHollow.backgroundColor = [UIColor blackColor];
    self.CSMTC_quickRidgeHollow.layer.masksToBounds = YES;
    self.CSMTC_quickRidgeHollow.layer.cornerRadius = 10;
    self.CSMTC_quickRidgeHollow.translatesAutoresizingMaskIntoConstraints = NO;
    [self.CSMTC_silentHarborGlen addSubview:self.CSMTC_quickRidgeHollow];
    [self.CSMTC_quickRidgeHollow addTarget:self action:@selector(CSMTC_briskDellLaneShoreTrackHollowSpan) forControlEvents:UIControlEventTouchUpInside];
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach {
    UILayoutGuide *CSMTC_safeArea = self.view.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[

        [self.CSMTC_briskHarborLoom.topAnchor constraintEqualToAnchor:CSMTC_safeArea.topAnchor],
        [self.CSMTC_briskHarborLoom.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_briskHarborLoom.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_briskHarborLoom.heightAnchor constraintEqualToConstant:250],
    
        [self.CSMTC_silentHarborGlen.topAnchor constraintEqualToAnchor:self.CSMTC_briskHarborLoom.bottomAnchor],
        [self.CSMTC_silentHarborGlen.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor],
        [self.CSMTC_silentHarborGlen.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor],
        [self.CSMTC_silentHarborGlen.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
        
        [self.CSMTC_firmHavenCrest.topAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.topAnchor constant:15],
        [self.CSMTC_firmHavenCrest.heightAnchor constraintEqualToConstant:2],
        [self.CSMTC_firmHavenCrest.widthAnchor constraintEqualToConstant:18],
        [self.CSMTC_firmHavenCrest.centerXAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.centerXAnchor],
        
        [self.CSMTC_quickRidgeHollow.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-5],
        [self.CSMTC_quickRidgeHollow.leadingAnchor constraintEqualToAnchor:CSMTC_safeArea.leadingAnchor constant:12],
        [self.CSMTC_quickRidgeHollow.trailingAnchor constraintEqualToAnchor:CSMTC_safeArea.trailingAnchor constant:-12],
        [self.CSMTC_quickRidgeHollow.heightAnchor constraintEqualToAnchor:self.CSMTC_quickRidgeHollow.widthAnchor multiplier:44.0 / 351.0],

        [self.CSMTC_gentleValeBridge.topAnchor constraintEqualToAnchor:self.CSMTC_firmHavenCrest.bottomAnchor constant:10],
        [self.CSMTC_gentleValeBridge.leadingAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.leadingAnchor],
        [self.CSMTC_gentleValeBridge.trailingAnchor constraintEqualToAnchor:self.CSMTC_silentHarborGlen.trailingAnchor],
        [self.CSMTC_gentleValeBridge.bottomAnchor constraintEqualToAnchor:self.CSMTC_quickRidgeHollow.topAnchor constant:-5],
    ]];
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)CSMTC_briskDellLaneShoreTrackHollowSpan {
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.CSMTCCoralSpireViewBlock) {
        self.CSMTCCoralSpireViewBlock();
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.CSMTC_freshHollowClimb.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCoralSpireTableCell *CSMTC_cell = [tableView dequeueReusableCellWithIdentifier:@"CSMTCCoralSpireTableCell"];
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_freshHollowClimb objectAtIndex:indexPath.row];
    [CSMTC_cell CSMTC_fairHavenTrailFoldClimbKnollPathSpan:CSMTC_model];
    return CSMTC_cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CSMTCCobaltGrainDataItemModel *CSMTC_model = [self.CSMTC_freshHollowClimb objectAtIndex:indexPath.row];
    if ([self CSMTC_calmKnollShorePathRiseFoldTrail:CSMTC_model CSMTC_firmHavenTrail:[CSMTCNexaManager CSMTC_softGlenPathFoldHavenClimbRise]]) {
        [CSMTCNexaManager CSMTC_clearValeTrailFoldKnollBluffSpan:CSMTC_model];
    } else {
        [CSMTCNexaManager CSMTC_steadyHollowClimbFoldRidgeTrailPath:CSMTC_model];
    }
    [tableView reloadData];
}


- (BOOL)CSMTC_calmKnollShorePathRiseFoldTrail:(CSMTCCobaltGrainDataItemModel *)CSMTC_brightValeClimb CSMTC_firmHavenTrail:(NSArray *)CSMTC_firmHavenTrail {
    if (!CSMTC_brightValeClimb || !CSMTC_firmHavenTrail || CSMTC_firmHavenTrail.count == 0) return NO;
    for (CSMTCCobaltGrainDataItemModel *CSMTC_steadyKnollFold in CSMTC_firmHavenTrail) {
        if ([CSMTC_steadyKnollFold.CSMTC_id isEqualToString:CSMTC_brightValeClimb.CSMTC_id]) {
            return YES;
        }
    }
    return NO;
}

- (void)CSMTC_gentleRidgeClimbPathFoldKnollTrailBluff {
    [CSMTCNexaManager CSMTC_firmKnollTrailFoldHavenClimbSpan:[CSMTCNexaCrypto CSMTC_quickCoveTrailPath:@"mO0Xkkxlhydj2SdmOgB69UELFU/ehuZiegIFBqdueXpvn3utuwNJ7MSpl44cejrT7q48Hk1FTfok4l8sLOPbuzI2cqAr3xGcJfEq0HG++8sxyERtnIBalHH9T1Jz"] CSMTC_success:^(NSDictionary * _Nonnull CSMTC_dict) {
        if (CSMTC_dict.count > 0) {
            CSMTCCobaltGrainDataModel *CSMTC_model = [CSMTCCobaltGrainDataModel CSMTC_modelWithDictionary:CSMTC_dict];
            self.CSMTC_freshHollowClimb = [CSMTCNexaManager CSMTC_briskRidgeTrailFoldDellKnollSpan:CSMTC_model.CSMTC_cryptoCurrencyList CSMTC_humbleRidgeTrail:CSMTCQuoteSortFieldPrice];
            [self.CSMTC_gentleValeBridge reloadData];
        }
    } CSMTC_failure:^(NSInteger CSMTC_errorCode, NSString * _Nonnull CSMTC_errorMsg) {
        
    }];
}

@end
