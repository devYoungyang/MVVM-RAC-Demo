//
//  GoodsListView.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/13.
//

#import "GoodsListView.h"
@interface GoodsListView () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataArr;

@end
@implementation GoodsListView

- (instancetype)init{
    if (self = [super init]) {
        [self createSubviews];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self createSubviews];
    }
    return self;
}

- (void)createSubviews{
    
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
    [self.tableView registerClass:[GoodsTableViewCell class] forCellReuseIdentifier:@"cellId"];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.width, 0.1)];
    self.goodsViewModel = [[GoodsViewModel alloc] init];
    @weakify(self);
    [self.goodsViewModel.getGoodsListCommand.executionSignals.switchToLatest subscribeNext:^(NSMutableArray *data) {
        @strongify(self)
        self.dataArr = data;
        [self.tableView reloadData];
    }];
    [self.goodsViewModel.getGoodsListCommand execute:@"商品列表"];
    [self.goodsViewModel.clickedGoods subscribeNext:^(id  _Nullable x) {
        NSLog(@"--跳转到商品详情页--");
    }];
}
-(NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return  _dataArr;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GoodsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    GoodsModel *model= self.dataArr[indexPath.row];
    cell.model = model;
//    cell.likeHandler = ^{
//        model.isCollected = !model.isCollected;
//    };
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.goodsViewModel.clickedGoods sendNext:@"点击商品"];
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
@end
