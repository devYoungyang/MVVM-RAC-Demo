//
//  ViewController.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*
    RACSignal *signal = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        NSLog(@"-----1111----");
        [subscriber sendNext:@"Hello, World"]; //先发送信号后订阅的
        return [RACDisposable disposableWithBlock:^{
            NSLog(@"信号被销毁");
        }];
    }];
    [signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"==%@==",x);
    }];// 订阅信号
    
    RACSubject *subject = [RACSubject subject];
    [subject subscribeNext:^(id  _Nullable x) {
        NSLog(@"====%@===",x);
    }];// 先订阅信号，后发送信号
    [subject sendNext:@"发送信号"];
    
    NSArray *array=@[@"AAA",@"BBB",@"CCC",@"DDD",@"EEE",@"FFF",@"GGG",@"HHH",@"JJJ"];
    [array.rac_sequence.signal subscribeNext:^(id  _Nullable x) {
        NSLog(@"=====%@====",x);
    }];//数组遍历
    NSArray *numbers = @[@1,@2,@3,@4,@5,@6,@7];
    NSArray*newNumbers= [[numbers.rac_sequence.signal map:^id _Nullable(id  _Nullable value) {
        return @([value intValue]*2);
    }] toArray]; //映射
    NSLog(@"====%@===",newNumbers);
    
    
    NSDictionary *dict=@{@"A":@"64",@"B":@"65",@"C":@"66"};
    [dict.rac_sequence.signal subscribeNext:^(RACTuple* x) {
        RACTupleUnpack(NSString *key,NSString *value)= x; //解包元组
        NSLog(@"=====%@=====%@====",key,value);
    }];
    self.command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
        return  [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
            [subscriber sendNext:@"网络请求数据"];
            [subscriber sendCompleted];
            return [RACDisposable disposableWithBlock:^{
                
            }];
        }] ;
    }];
    [self.command.executionSignals subscribeNext:^(id  _Nullable x) {
        [x subscribeNext:^(id  _Nullable y) {
            NSLog(@"=====%@=====",y);
        }];
    }];
    [self.command execute:@"23223"];
    
    [[RACScheduler scheduler] afterDelay:2 schedule:^{
        NSLog(@"延迟2秒执行");
    }];
    
    [[RACSignal interval:2 onScheduler:[RACScheduler mainThreadScheduler]] subscribeNext:^(NSDate * _Nullable x) {
        NSLog(@"每隔2秒执行一次");
    }];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 180, 220, 40)];
    [self.view addSubview:titleLabel];
    titleLabel.text = @"我是文字";
    titleLabel.backgroundColor = [UIColor orangeColor];
    RAC(titleLabel,text) = [[RACSignal interval:1 onScheduler:[RACScheduler mainThreadScheduler]] map:^id _Nullable(NSDate * _Nullable value) {
        return  value.description;
    }];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(120, 260, 120, 40);
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    [btn setTitle:@"+++" forState:UIControlStateNormal];
    [[btn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        NSLog(@"=====点击了按钮====");
    }];
    **/
}


@end
