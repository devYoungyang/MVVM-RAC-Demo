//
//  GoodsTableViewCell.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//

#import "GoodsTableViewCell.h"
@interface GoodsTableViewCell()

@property (nonatomic, strong) UILabel *goodsTitle;

//@property (nonatomic, strong) UILabel *goodsDetailLabel;

//@property (nonatomic, strong) UIButton *collectBtn;

@property (nonatomic, strong) UIImageView *goodsImgView;

@property (nonatomic, strong) UILabel *storeNameLabel;

@property (nonatomic, strong) UILabel *priceLabel;

@property (nonatomic, strong) UILabel *salesNumberLabel;


@end
@implementation GoodsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createSubViews];
    }
    return  self;
}

- (void)createSubViews{
    
    self.goodsImgView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.goodsImgView];
    self.goodsImgView.sd_layout
    .leftSpaceToView(self.contentView, 15)
    .topSpaceToView(self.contentView, 15)
    .heightIs(80)
    .widthEqualToHeight();
    
    self.goodsTitle = [[UILabel alloc] init];
    [self.contentView addSubview:self.goodsTitle];
    self.goodsTitle.sd_layout
    .leftSpaceToView(self.goodsImgView, 10)
    .rightSpaceToView(self.contentView, 15)
    .topSpaceToView(self.contentView, 15)
    .heightIs(20);
    
    self.priceLabel = [UILabel new];
    [self.contentView addSubview:self.priceLabel];
    self.priceLabel.sd_layout
    .leftEqualToView(self.goodsTitle)
    .topSpaceToView(self.goodsTitle, 10)
    .heightIs(20);
    [self.priceLabel setSingleLineAutoResizeWithMaxWidth:120];
    
    self.salesNumberLabel = [UILabel new];
    [self.contentView addSubview:self.salesNumberLabel];
    self.salesNumberLabel.sd_layout
    .topEqualToView(self.priceLabel)
    .leftSpaceToView(self.priceLabel, 10)
    .heightIs(20);
    [self.salesNumberLabel setSingleLineAutoResizeWithMaxWidth:120];
    
    self.storeNameLabel = [UILabel new];
    [self.contentView addSubview:self.storeNameLabel];
    self.storeNameLabel.sd_layout
    .leftEqualToView(self.goodsTitle)
    .topSpaceToView(self.priceLabel, 10)
    .heightIs(20)
    .rightSpaceToView(self.contentView, 15);
    
    
    
//    self.goodsDetailLabel = [[UILabel alloc] init];
//    [self.contentView addSubview:self.goodsDetailLabel];
//
//    self.goodsDetailLabel.sd_layout
//    .leftEqualToView(self.goodsTitle)
//    .topSpaceToView(self.goodsTitle, 10)
//    .heightIs(30)
//    .rightSpaceToView(self.contentView, 50);
//
//    self.collectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [self.contentView addSubview:self.collectBtn];
//    self.collectBtn.sd_layout
//    .rightSpaceToView(self.contentView, 22)
//    .heightIs(20)
//    .widthIs(20)
//    .centerYEqualToView(self.contentView);
//
//    [self.collectBtn setImage:[UIImage imageNamed:@"unlike"] forState:UIControlStateNormal];
//    [self.collectBtn setImage:[UIImage imageNamed:@"like"] forState:UIControlStateSelected];
//    [self.collectBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)btnClicked:(UIButton *)btn{
    btn.selected = !btn.selected;
//    self.likeHandler();
}

-(void)setModel:(GoodsModel *)model{
//    self.collectBtn.selected=model.isCollected;
    self.goodsTitle.text =model.goodsName;
    self.goodsImgView.image =[UIImage imageNamed:@"apple"];
    self.priceLabel.text = model.price;
    self.salesNumberLabel.text =model.salesNumber;
    self.storeNameLabel.text =model.storeName;
//    self.goodsDetailLabel.text = model.goodsDetail;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
