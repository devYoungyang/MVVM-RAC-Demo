//
//  GoodsViewModel.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//
#import "GoodsModel.h"
#import "GoodsViewModel.h"

@implementation GoodsViewModel


- (RACCommand *)getGoodsListCommand{
    if (!_getGoodsListCommand) {
        _getGoodsListCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
            return [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
                NSMutableArray *temp = [NSMutableArray array];
                for (NSInteger i=0; i<80; i++) {
                    GoodsModel *model =[[GoodsModel alloc] init];
                    model.goodsName = [NSString stringWithFormat:@"%li 号商品",i+1];
                    model.storeName = @"店铺名：Apple官方旗舰店";
                    model.price = @"价格¥: 6899";
                    model.salesNumber = @"销量 122w";
                    [temp addObject:model];
                }
                [subscriber sendNext:temp];
                [subscriber sendCompleted];
                return  [RACDisposable disposableWithBlock:^{
                    
                }];
            }];
        }];
    }
    return _getGoodsListCommand;
}

- (RACSubject *)clickedGoods{
    if (!_clickedGoods) {
        _clickedGoods = [RACSubject subject];
    }
    return _clickedGoods;
}


@end
