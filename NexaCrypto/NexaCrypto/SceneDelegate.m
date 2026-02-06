//
//  SceneDelegate.m
//  NexaCrypto
//
//   
//

#import "SceneDelegate.h"
#import "CSMTCCobaltGrainViewController.h"
#import "CSMTCSlateRidgeViewController.h"
#import "CSMTCMicaShoreViewController.h"
#import "CSMTCNexaManager.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    UINavigationController *CSMTC_nav = [[UINavigationController alloc] initWithRootViewController:[self CSMTC_clearKnollClimbTrailFoldHollowPathSpan]];
    CSMTC_nav.navigationBarHidden = YES;
    self.window.rootViewController = CSMTC_nav;
    [self.window makeKeyAndVisible];
    
    
}

- (NSArray *)CSMTC_softDellFoldTrailHavenClimbKnollRise {
    CSMTCCobaltGrainViewController *CSMTC_CobaltGrain = [[CSMTCCobaltGrainViewController alloc] init];
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_CobaltGrain CSMTC_brightValeClimb:@"CSMTCMELLOW_HoCSMTCMELLOW_me".CSMTC_removeMellowCoveSpan];
    CSMTCSlateRidgeViewController *CSMTC_SlateRidge = [[CSMTCSlateRidgeViewController alloc] init];
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_SlateRidge CSMTC_brightValeClimb:@"CSMTCMELLOW_MaCSMTCMELLOW_rket".CSMTC_removeMellowCoveSpan];
    CSMTCMicaShoreViewController *CSMTC_MicaShore = [[CSMTCMicaShoreViewController alloc] init];
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_MicaShore CSMTC_brightValeClimb:@"CSMTCMELLOW_NCSMTCMELLOW_ewCSMTCMELLOW_s".CSMTC_removeMellowCoveSpan];
    return @[CSMTC_CobaltGrain, CSMTC_SlateRidge, CSMTC_MicaShore];
}

- (UITabBarController *)CSMTC_clearKnollClimbTrailFoldHollowPathSpan {
    UITabBarController *CSMTC_tabbar = [[UITabBarController alloc] init];
    UITabBarAppearance *CSMTC_gentleCoveTrail = [[UITabBarAppearance alloc] init];
    [CSMTC_gentleCoveTrail configureWithOpaqueBackground];
    CSMTC_gentleCoveTrail.backgroundColor = [UIColor colorWithRed:13/255.0 green:13/255.0 blue:15/255.0 alpha:1];
    CSMTC_gentleCoveTrail.stackedLayoutAppearance.normal.titleTextAttributes = @{
        NSForegroundColorAttributeName: [[UIColor whiteColor] colorWithAlphaComponent:0.5],
        NSFontAttributeName: [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12]
    };
    CSMTC_gentleCoveTrail.stackedLayoutAppearance.selected.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor whiteColor],
        NSFontAttributeName: [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12]
    };
    [UITabBar appearance].standardAppearance = CSMTC_gentleCoveTrail;
    if (@available(iOS 15.0, *)) {
        [UITabBar appearance].scrollEdgeAppearance = CSMTC_gentleCoveTrail;
    }
    CSMTC_tabbar.viewControllers = [self CSMTC_softDellFoldTrailHavenClimbKnollRise];
    return CSMTC_tabbar;
}

- (void)CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:(UIViewController *)CSMTC_firmHavenTrail CSMTC_brightValeClimb:(NSString *)CSMTC_brightValeClimb {
    NSString *CSMTC_steadyKnollFold = @"";
    NSString *CSMTC_gentleCoveTrail = @"";
    if ([CSMTC_brightValeClimb isEqualToString:@"CSMTCMELLOW_HomCSMTCMELLOW_e".CSMTC_removeMellowCoveSpan]) {
        CSMTC_steadyKnollFold = @"CSMTCMELLOW_CSMTC_shaCSMTCMELLOW_rpKnolCSMTCMELLOW_lTrace".CSMTC_removeMellowCoveSpan;
        CSMTC_gentleCoveTrail = @"CSMTCMELLOW_CSMTC_soCSMTCMELLOW_ftCresCSMTCMELLOW_tLane".CSMTC_removeMellowCoveSpan;
    } else if ([CSMTC_brightValeClimb isEqualToString:@"CSMTCMELLOW_MaCSMTCMELLOW_rkCSMTCMELLOW_et".CSMTC_removeMellowCoveSpan]) {
        CSMTC_steadyKnollFold = @"CSMTCMELLOW_CSMTC_cleCSMTCMELLOW_arGleCSMTCMELLOW_nFold".CSMTC_removeMellowCoveSpan;
        CSMTC_gentleCoveTrail = @"CSMTCMELLOW_CSMTC_vasCSMTCMELLOW_tValeCSMTCMELLOW_Point".CSMTC_removeMellowCoveSpan;
    } else if ([CSMTC_brightValeClimb isEqualToString:@"CSMTCMELLOW_NCSMTCMELLOW_ewCSMTCMELLOW_s".CSMTC_removeMellowCoveSpan]) {
        CSMTC_steadyKnollFold = @"CSMTCMELLOW_CSMTC_mCSMTCMELLOW_istyDCSMTCMELLOW_ellSpan".CSMTC_removeMellowCoveSpan;
        CSMTC_gentleCoveTrail = @"CSMTCMELLOW_CSMTC_deeCSMTCMELLOW_pGlenCSMTCMELLOW_Track".CSMTC_removeMellowCoveSpan;
    }
    
    CSMTC_firmHavenTrail.tabBarItem = [[UITabBarItem alloc] initWithTitle:CSMTC_brightValeClimb image:[[UIImage CSMTC_garnetImage:CSMTC_steadyKnollFold] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage CSMTC_garnetImage:CSMTC_gentleCoveTrail] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
}



- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
