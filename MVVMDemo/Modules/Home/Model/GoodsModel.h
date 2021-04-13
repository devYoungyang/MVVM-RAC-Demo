//
//  GoodsModel.h
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GoodsModel : NSObject

@property (nonatomic, strong) NSString *goodsName;

@property (nonatomic, strong) NSString *price;

@property (nonatomic, strong) NSString *storeName;

@property (nonatomic, strong) NSString *goodsPic;

@property (nonatomic, strong) NSString *salesNumber;


//@property (nonatomic, assign) BOOL isCollected;

@end

NS_ASSUME_NONNULL_END
