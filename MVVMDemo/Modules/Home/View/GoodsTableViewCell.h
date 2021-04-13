//
//  GoodsTableViewCell.h
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//
#import "GoodsModel.h"

#import <UIKit/UIKit.h>
//typedef void (^ClickedLikeHandler)(void);
NS_ASSUME_NONNULL_BEGIN

@interface GoodsTableViewCell : UITableViewCell

@property (nonatomic, strong) GoodsModel *model;

//@property (nonatomic, strong) ClickedLikeHandler likeHandler;

@end

NS_ASSUME_NONNULL_END
