//
//  CSMTCTourmalineTableView.h
//  NexaCrypto
//
//  Created by 王星 on 2026/2/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CSMTCTourmalineTableViewDelegate <NSObject>
@optional
- (void)CSMTC_livelyHavenPathFoldTrailKnollRise:(NSString *)CSMTC_wideDellTrail CSMTC_keenCoveTrail:(NSString *)CSMTC_keenCoveTrail;
@end


@interface CSMTCTourmalineTableView : UIView
@property (nonatomic, strong) UIButton *calculationButton;
@property (nonatomic, weak) id<CSMTCTourmalineTableViewDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
