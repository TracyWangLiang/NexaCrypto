//
//  CSMTCBerylValeViewController.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "CSMTCBerylValeViewController.h"
#import <WebKit/WebKit.h>
#import "CSMTCLoadingHUD.h"

@interface CSMTCBerylValeViewController () <WKNavigationDelegate, WKScriptMessageHandler>

@property (nonatomic, strong) WKWebView *CSMTC_briskHarborLoom;
@property (nonatomic, copy) NSString *CSMTC_silentHarborGlen;
@property (nonatomic, strong) WKWebViewConfiguration *CSMTC_gentleValeBridge;


@end

@implementation CSMTCBerylValeViewController

- (instancetype)initWithSilentHarborGlen:(NSString *)CSMTC_silentHarborGlen {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.CSMTC_silentHarborGlen = CSMTC_silentHarborGlen;
    }
    return self;
}


- (void)viewDidLoad {
    //    http://43.136.234.225:20092/backone
    //    87164025
    //    http://43.136.234.225:20102/#/页面名称?token=123&appID=123&deviceID=123
    
    [super viewDidLoad];
    [CSMTCLoadingHUD CSMTC_showLoading];
    self.view.backgroundColor = [UIColor colorWithRed:6/255.0 green:8/255.0 blue:7/255.0 alpha:1];
    [self CSMTC_setupView];
    [self CSMTC_setupConstraint];
    [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
    
    
}

- (void)CSMTC_setupView {
    self.CSMTC_briskHarborLoom = [[WKWebView alloc] initWithFrame:CGRectZero configuration:self.CSMTC_gentleValeBridge];
    self.CSMTC_briskHarborLoom.navigationDelegate = self;
    self.CSMTC_briskHarborLoom.translatesAutoresizingMaskIntoConstraints = NO;
    self.CSMTC_briskHarborLoom.hidden = YES;
    [self.view addSubview:self.CSMTC_briskHarborLoom];
    [self CSMTC_gentleHollowBridgeFoldTrackSpanRise];
    
}

- (void)CSMTC_setupConstraint {
    [NSLayoutConstraint activateConstraints:@[
        [self.CSMTC_briskHarborLoom.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [self.CSMTC_briskHarborLoom.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [self.CSMTC_briskHarborLoom.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [self.CSMTC_briskHarborLoom.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
        
    ]];
}

- (void)CSMTC_gentleHollowBridgeFoldTrackSpanRise {
    NSURL *CSMTC_firmHavenCrest = [NSURL URLWithString:self.CSMTC_silentHarborGlen];
    [self.CSMTC_briskHarborLoom loadRequest:[NSURLRequest requestWithURL:CSMTC_firmHavenCrest]];
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    NSString *CSMTC_quickRidgeHollow = [NSString stringWithFormat:@"%@", message.name];
    NSString *CSMTC_freshHollowClimb = [NSString stringWithFormat:@"%@", message.body];
    [self CSMTC_quickRidgeTrailPathHavenClimbReach:CSMTC_quickRidgeHollow CSMTC_freshHollowClimb:CSMTC_freshHollowClimb];
}

- (void)CSMTC_quickRidgeTrailPathHavenClimbReach:(NSString *)CSMTC_quickRidgeHollow CSMTC_freshHollowClimb:(NSString *)CSMTC_freshHollowClimb {
    
    if ([CSMTC_quickRidgeHollow isEqualToString:@"vexloria"]) {
        [self CSMTC_silentValePointFoldKnollBluffPath:CSMTC_freshHollowClimb];
    }else if ([CSMTC_quickRidgeHollow isEqualToString:@"calypher"]) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)CSMTC_silentValePointFoldKnollBluffPath:(NSString *)CSMTC_freshHollowClimb {
    CSMTCBerylValeViewController *CSMTC_BerylVale = [[CSMTCBerylValeViewController alloc] initWithSilentHarborGlen:CSMTC_freshHollowClimb];
    [self.navigationController pushViewController:CSMTC_BerylVale animated:YES];
}


- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self CSMTC_briskDellLaneShoreTrackHollowSpan];
    });
}

- (void)CSMTC_briskDellLaneShoreTrackHollowSpan {
    [CSMTCLoadingHUD CSMTC_dismiss];
    self.CSMTC_briskHarborLoom.hidden = NO;
}



- (WKWebViewConfiguration *)CSMTC_gentleValeBridge {
    if (!_CSMTC_gentleValeBridge) {
        _CSMTC_gentleValeBridge = [[WKWebViewConfiguration alloc] init];
        WKUserContentController *CSMTC_quickRidgeHollow = [[WKUserContentController alloc] init];
        [CSMTC_quickRidgeHollow addScriptMessageHandler:self name:@"vexloria"];
        [CSMTC_quickRidgeHollow addScriptMessageHandler:self name:@"calypher"];
        _CSMTC_gentleValeBridge.userContentController = CSMTC_quickRidgeHollow;
    }
    return _CSMTC_gentleValeBridge;
}

@end
