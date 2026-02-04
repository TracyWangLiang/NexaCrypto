//
//  SceneDelegate.m
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import "SceneDelegate.h"
#import "CSMTCCobaltGrainViewController.h"
#import "CSMTCSlateRidgeViewController.h"
#import "CSMTCMicaShoreViewController.h"

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
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_CobaltGrain CSMTC_brightValeClimb:@"Home"];
    CSMTCSlateRidgeViewController *CSMTC_SlateRidge = [[CSMTCSlateRidgeViewController alloc] init];
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_SlateRidge CSMTC_brightValeClimb:@"Market"];
    CSMTCMicaShoreViewController *CSMTC_MicaShore = [[CSMTCMicaShoreViewController alloc] init];
    [self CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:CSMTC_MicaShore CSMTC_brightValeClimb:@"News"];
    return @[CSMTC_CobaltGrain, CSMTC_SlateRidge, CSMTC_MicaShore];
}

- (UITabBarController *)CSMTC_clearKnollClimbTrailFoldHollowPathSpan {
    UITabBarController *CSMTC_tabbar = [[UITabBarController alloc] init];
    UITabBarAppearance *appearance = [[UITabBarAppearance alloc] init];
    [appearance configureWithOpaqueBackground];
    appearance.backgroundColor = [UIColor colorWithRed:13/255.0 green:13/255.0 blue:15/255.0 alpha:1];
    appearance.stackedLayoutAppearance.normal.titleTextAttributes = @{
        NSForegroundColorAttributeName: [[UIColor whiteColor] colorWithAlphaComponent:0.5],
        NSFontAttributeName: [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12]
    };
    appearance.stackedLayoutAppearance.selected.titleTextAttributes = @{
        NSForegroundColorAttributeName: [UIColor whiteColor],
        NSFontAttributeName: [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:12]
    };
    [UITabBar appearance].standardAppearance = appearance;
    if (@available(iOS 15.0, *)) {
        [UITabBar appearance].scrollEdgeAppearance = appearance;
    }
    CSMTC_tabbar.viewControllers = [self CSMTC_softDellFoldTrailHavenClimbKnollRise];
    return CSMTC_tabbar;
}

- (void)CSMTC_humbleRidgeTrailFoldKnollPathBluffClimb:(UIViewController *)CSMTC_firmHavenTrail CSMTC_brightValeClimb:(NSString *)CSMTC_brightValeClimb {
    NSString *CSMTC_steadyKnollFold = @"";
    NSString *CSMTC_gentleCoveTrail = @"";
    if ([CSMTC_brightValeClimb isEqualToString:@"Home"]) {
        CSMTC_steadyKnollFold = @"CSMTC_sharpKnollTrace";
        CSMTC_gentleCoveTrail = @"CSMTC_softCrestLane";
    } else if ([CSMTC_brightValeClimb isEqualToString:@"Market"]) {
        CSMTC_steadyKnollFold = @"CSMTC_clearGlenFold";
        CSMTC_gentleCoveTrail = @"CSMTC_vastValePoint";
    } else if ([CSMTC_brightValeClimb isEqualToString:@"News"]) {
        CSMTC_steadyKnollFold = @"CSMTC_mistyDellSpan";
        CSMTC_gentleCoveTrail = @"CSMTC_deepGlenTrack";
    }
    
    CSMTC_firmHavenTrail.tabBarItem = [[UITabBarItem alloc] initWithTitle:CSMTC_brightValeClimb image:[[UIImage imageNamed:CSMTC_steadyKnollFold] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:CSMTC_gentleCoveTrail] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
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
