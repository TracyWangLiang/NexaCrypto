//
//  CSMTCCobaltGrainTableCell.m
//  NexaCrypto
//
//   
//

#import "CSMTCCobaltGrainTableCell.h"

@interface CSMTCCobaltGrainTableCell ()

@property (nonatomic, strong) UIImageView *CSMTC_tameRidgeTrail;
@property (nonatomic, strong) UILabel *CSMTC_silentValeClimb;
@property (nonatomic, strong) UILabel *CSMTC_quickDellFold;
@property (nonatomic, strong) UILabel *CSMTC_gentleCoveTrail;
@property (nonatomic, strong) UIImageView *CSMTC_steadyKnollFold;
@property (nonatomic, strong) UILabel *CSMTC_brightValeClimb;
@property (nonatomic, strong) UILabel *CSMTC_firmHavenTrail;
@property (nonatomic, strong) UILabel *CSMTC_briskHarborLoom;

@end

@implementation CSMTCCobaltGrainTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        [self CSMTC_wideHollowPathTrailFoldKnollRise];
        [self CSMTC_mellowCoveTrailFoldBluffShoreSpan];
    }
    return self;
}


- (void)CSMTC_wideHollowPathTrailFoldKnollRise {
  
    self.CSMTC_tameRidgeTrail = [[UIImageView alloc] init];
    self.CSMTC_tameRidgeTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_tameRidgeTrail.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.CSMTC_tameRidgeTrail];
    self.CSMTC_tameRidgeTrail.backgroundColor = [UIColor redColor];
    self.CSMTC_tameRidgeTrail.layer.masksToBounds = YES;
    self.CSMTC_tameRidgeTrail.layer.cornerRadius = 15;

    self.CSMTC_silentValeClimb = [[UILabel alloc] init];
    self.CSMTC_silentValeClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_silentValeClimb.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.CSMTC_silentValeClimb.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CSMTC_silentValeClimb];
    self.CSMTC_silentValeClimb.text = @"Bitcoin";

    self.CSMTC_quickDellFold = [[UILabel alloc] init];
    self.CSMTC_quickDellFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_quickDellFold.font = [UIFont systemFontOfSize:12];
    self.CSMTC_quickDellFold.textAlignment = NSTextAlignmentCenter;
    self.CSMTC_quickDellFold.textColor = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:1];
    self.CSMTC_quickDellFold.backgroundColor = [UIColor colorWithRed:68/255.0 green:68/255.0 blue:68/255.0 alpha:1];
    self.CSMTC_quickDellFold.layer.cornerRadius = 2;
    self.CSMTC_quickDellFold.layer.masksToBounds = YES;
    [self.contentView addSubview:self.CSMTC_quickDellFold];
    self.CSMTC_quickDellFold.text = @"1";

    self.CSMTC_gentleCoveTrail = [[UILabel alloc] init];
    self.CSMTC_gentleCoveTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_gentleCoveTrail.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_gentleCoveTrail.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_gentleCoveTrail];
    self.CSMTC_gentleCoveTrail.text = @"BTC";

    self.CSMTC_steadyKnollFold = [[UIImageView alloc] init];
    self.CSMTC_steadyKnollFold.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_steadyKnollFold.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.CSMTC_steadyKnollFold];
    self.CSMTC_steadyKnollFold.image = [UIImage imageNamed:@"CSMTC_calmKnollShore"];
    self.CSMTC_steadyKnollFold.highlightedImage = [UIImage imageNamed:@"CSMTC_steadyCoveRise"];

    self.CSMTC_brightValeClimb = [[UILabel alloc] init];
    self.CSMTC_brightValeClimb.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_brightValeClimb.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_brightValeClimb.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    [self.contentView addSubview:self.CSMTC_brightValeClimb];

    self.CSMTC_brightValeClimb.text = @"0.00";
    
    self.CSMTC_firmHavenTrail = [[UILabel alloc] init];
    self.CSMTC_firmHavenTrail.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_firmHavenTrail.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:16];
    self.CSMTC_firmHavenTrail.textColor = [UIColor whiteColor];
    self.CSMTC_firmHavenTrail.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.CSMTC_firmHavenTrail];
    self.CSMTC_firmHavenTrail.text = @"$0.00";

    self.CSMTC_briskHarborLoom = [[UILabel alloc] init];
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.CSMTC_briskHarborLoom.textColor = [UIColor colorWithRed:151/255.0 green:151/255.0 blue:151/255.0 alpha:1];
    self.CSMTC_briskHarborLoom.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.CSMTC_briskHarborLoom];
    self.CSMTC_briskHarborLoom.text = @"Mkt Cap: $0.00";
}


- (void)CSMTC_mellowCoveTrailFoldBluffShoreSpan {
    UIView *CSMTC_content = self.contentView;
    [NSLayoutConstraint activateConstraints:@[

        [self.CSMTC_tameRidgeTrail.leadingAnchor constraintEqualToAnchor:CSMTC_content.leadingAnchor constant:12],
        [self.CSMTC_tameRidgeTrail.centerYAnchor constraintEqualToAnchor:CSMTC_content.centerYAnchor],
        [self.CSMTC_tameRidgeTrail.widthAnchor constraintEqualToConstant:30],
        [self.CSMTC_tameRidgeTrail.heightAnchor constraintEqualToConstant:30],
        [self.CSMTC_tameRidgeTrail.topAnchor constraintEqualToAnchor:CSMTC_content.topAnchor constant:15],
        [self.CSMTC_tameRidgeTrail.bottomAnchor constraintEqualToAnchor:CSMTC_content.bottomAnchor constant:-15],

        [self.CSMTC_silentValeClimb.leadingAnchor constraintEqualToAnchor:self.CSMTC_tameRidgeTrail.trailingAnchor constant:8],
        [self.CSMTC_silentValeClimb.topAnchor constraintEqualToAnchor:self.CSMTC_tameRidgeTrail.topAnchor constant:-4],

        [self.CSMTC_quickDellFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_tameRidgeTrail.trailingAnchor constant:8],
        [self.CSMTC_quickDellFold.bottomAnchor constraintEqualToAnchor:self.CSMTC_tameRidgeTrail.bottomAnchor constant:5],
        [self.CSMTC_quickDellFold.widthAnchor constraintEqualToConstant:18],
        [self.CSMTC_quickDellFold.heightAnchor constraintEqualToConstant:16],

        [self.CSMTC_gentleCoveTrail.leadingAnchor constraintEqualToAnchor:self.CSMTC_quickDellFold.trailingAnchor constant:4],
        [self.CSMTC_gentleCoveTrail.centerYAnchor constraintEqualToAnchor:self.CSMTC_quickDellFold.centerYAnchor],

        [self.CSMTC_steadyKnollFold.leadingAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.trailingAnchor constant:8],
        [self.CSMTC_steadyKnollFold.centerYAnchor constraintEqualToAnchor:self.CSMTC_gentleCoveTrail.centerYAnchor],
        [self.CSMTC_steadyKnollFold.widthAnchor constraintEqualToConstant:12],
        [self.CSMTC_steadyKnollFold.heightAnchor constraintEqualToConstant:12],

        [self.CSMTC_brightValeClimb.leadingAnchor constraintEqualToAnchor:self.CSMTC_steadyKnollFold.trailingAnchor constant:4],
        [self.CSMTC_brightValeClimb.centerYAnchor constraintEqualToAnchor:self.CSMTC_steadyKnollFold.centerYAnchor],

        [self.CSMTC_firmHavenTrail.trailingAnchor constraintEqualToAnchor:CSMTC_content.trailingAnchor constant:-12],
        [self.CSMTC_firmHavenTrail.centerYAnchor constraintEqualToAnchor:self.CSMTC_silentValeClimb.centerYAnchor],

        [self.CSMTC_briskHarborLoom.trailingAnchor constraintEqualToAnchor:CSMTC_content.trailingAnchor constant:-12],
        [self.CSMTC_briskHarborLoom.centerYAnchor constraintEqualToAnchor:self.CSMTC_brightValeClimb.centerYAnchor]
    ]];
}


- (void)CSMTC_pureDellFoldTrailHollowClimbKnollRise:(CSMTCCobaltGrainDataItemModel*)CSMTC_model CSMTC_gentleRidgeClimb:(NSString *)CSMTC_gentleRidgeClimb {
    
    CSMTCCobaltGrainItemModel *CSMTC_itemModel = CSMTC_model.CSMTC_quotes.firstObject;
    [CSMTCNexaManager CSMTC_freshCoveBluffTrackHavenClimbSpan:CSMTC_model.CSMTC_id completion:^(UIImage * _Nullable image) {
        self.CSMTC_tameRidgeTrail.image = image;
    }];
    self.CSMTC_silentValeClimb.text = CSMTC_model.CSMTC_name;
    self.CSMTC_quickDellFold.text = CSMTC_gentleRidgeClimb;
    self.CSMTC_gentleCoveTrail.text = CSMTC_model.CSMTC_symbol;
    self.CSMTC_steadyKnollFold.highlighted = [CSMTCNexaManager CSMTC_brightHollowFoldTrailKnollPathBluff:CSMTC_itemModel.CSMTC_percentChange1h];
    self.CSMTC_brightValeClimb.text = [CSMTCNexaCrypto CSMTC_braveGlenClimbFoldTrackHollowSpan:CSMTC_itemModel.CSMTC_percentChange1h];
    self.CSMTC_brightValeClimb.textColor = [CSMTCNexaManager CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_percentChange1h];
    self.CSMTC_firmHavenTrail.text = [NSString stringWithFormat:@"$%@",[CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_price]];
    self.CSMTC_briskHarborLoom.text = [NSString stringWithFormat:@"Mkt Cap: $%@", [CSMTCNexaCrypto CSMTC_mistyValeClimbTrailFoldShoreKnollSpan:CSMTC_itemModel.CSMTC_marketCap]];
    
}

@end
