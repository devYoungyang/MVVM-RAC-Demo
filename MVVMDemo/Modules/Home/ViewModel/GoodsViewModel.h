//
//  GoodsViewModel.h
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//

#import <ReactiveObjC.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GoodsViewModel : NSObject

@property (nonatomic, strong) RACCommand *getGoodsListCommand;

@property (nonatomic, strong) RACSubject *clickedGoods;

@end

NS_ASSUME_NONNULL_END
