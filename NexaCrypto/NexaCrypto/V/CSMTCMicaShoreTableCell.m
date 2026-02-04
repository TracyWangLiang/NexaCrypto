//
//  CSMTCMicaShoreTableCell.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCMicaShoreTableCell.h"

@interface CSMTCMicaShoreTableCell ()

@property (nonatomic, strong) UIImageView *coverImageView;
@property (nonatomic, strong) UILabel *headlineLabel;
@property (nonatomic, strong) UILabel *summaryLabel;
@property (nonatomic, strong) UILabel *metaInfoLabel;

@end

@implementation CSMTCMicaShoreTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
               reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];

        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}


- (void)setupSubviews {

    self.coverImageView = [[UIImageView alloc] init];
    self.coverImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.coverImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.coverImageView.clipsToBounds = YES;
    [self.contentView addSubview:self.coverImageView];

    self.headlineLabel = [[UILabel alloc] init];
    self.headlineLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.headlineLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:16];
    self.headlineLabel.textColor = UIColor.whiteColor;
    self.headlineLabel.numberOfLines = 2;
    self.headlineLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.headlineLabel];

    self.summaryLabel = [[UILabel alloc] init];
    self.summaryLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.summaryLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:14];
    self.summaryLabel.textColor =
    [UIColor colorWithRed:0.831 green:0.831 blue:0.831 alpha:1];
    self.summaryLabel.numberOfLines = 3;
    self.summaryLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    [self.contentView addSubview:self.summaryLabel];

    self.metaInfoLabel = [[UILabel alloc] init];
    self.metaInfoLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.metaInfoLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:13];
    self.metaInfoLabel.textColor =
    [UIColor colorWithRed:0.455 green:0.455 blue:0.455 alpha:1];
    [self.contentView addSubview:self.metaInfoLabel];
}


- (void)setupConstraints {

    [NSLayoutConstraint activateConstraints:@[
        [self.coverImageView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:12],
        [self.coverImageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:16],
        [self.coverImageView.widthAnchor constraintEqualToConstant:90],
        [self.coverImageView.heightAnchor constraintEqualToConstant:90]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.headlineLabel.leadingAnchor constraintEqualToAnchor:self.coverImageView.trailingAnchor constant:10],
        [self.headlineLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-12],
        [self.headlineLabel.topAnchor constraintEqualToAnchor:self.coverImageView.topAnchor constant:-5]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.summaryLabel.leadingAnchor constraintEqualToAnchor:self.coverImageView.trailingAnchor constant:10],
        [self.summaryLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-12],
        [self.summaryLabel.topAnchor constraintEqualToAnchor:self.headlineLabel.bottomAnchor constant:6]
    ]];

    [NSLayoutConstraint activateConstraints:@[
        [self.metaInfoLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:12],
        [self.metaInfoLabel.topAnchor constraintEqualToAnchor:self.coverImageView.bottomAnchor constant:12],
        [self.metaInfoLabel.heightAnchor constraintEqualToConstant:16],
        [self.metaInfoLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-18]
    ]];
}


@end
