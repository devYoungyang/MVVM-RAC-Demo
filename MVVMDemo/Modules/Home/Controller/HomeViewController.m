//
//  HomeViewController.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//

#import "GoodsListView.h"

@interface HomeViewController ()

@property (nonatomic, strong) GoodsListView *goodsView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.goodsView = [[GoodsListView alloc] init];
    [self.view addSubview:self.goodsView];
    [self.goodsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
    [self.goodsView.goodsViewModel.clickedGoods subscribeNext:^(id  _Nullable x) {
        NSLog(@"--跳转到商品详情页--");
    }];
}



@end
