//
//  CSMTCSelectHeaderView.h
//  NexaCrypto
//
//  Created by 王星 on 2026/2/4.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@protocol CSMTCSelectHeaderViewDelegate <NSObject>
@optional
- (void)CSMTC_softValeFoldHollowClimbTrackShore:(NSString *)CSMTC_tameRidgeTrail;
@end

@interface CSMTCSelectHeaderView : UIView
@property (nonatomic, weak) id<CSMTCSelectHeaderViewDelegate> delegate;
- (instancetype)initWithTitles:(NSArray<NSString *> *)titles;

@end

NS_ASSUME_NONNULL_END
