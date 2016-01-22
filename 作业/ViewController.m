//
//  ViewController.m
//  作业
//
//  Created by qingyun on 16/1/21.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()
@property (nonatomic, strong) UIView *photoView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIView *timeTipView;
@property (nonatomic, strong) UILabel *timelabel;
@property (nonatomic, strong) UIView *purpleView;
@property (nonatomic, strong) UIView *goodView;
@property (nonatomic, strong) UILabel *goodNumLabel;
@property (nonatomic, strong) UIView *grayView;
@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *moreView;
@end

@implementation ViewController
#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.photoView];
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.timeTipView];
    [self.view addSubview:self.timelabel];
    [self.view addSubview:self.purpleView];
    [self.view addSubview:self.goodView];
    [self.view addSubview:self.goodNumLabel];
    [self.view addSubview:self.grayView];
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.moreView];
    
    [self setupLayoutWithMasonry];
}

#pragma mark - setter & getter
-(UIView *)photoView{
    if (_photoView == nil) {
        _photoView = [[UIView alloc] init];
        _photoView.backgroundColor = [UIColor redColor];
        _photoView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _photoView;
}
-(UILabel *)nameLabel{
    if (_nameLabel == nil) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.text = @"dorayo";
        _nameLabel.textColor = [UIColor blueColor];
        _nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _nameLabel;
}
-(UIView *)timeTipView{
    if (_timeTipView == nil) {
        _timeTipView = [[UIView alloc] init];
        _timeTipView.backgroundColor = [UIColor greenColor];
        _timeTipView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _timeTipView;
}
-(UILabel *)timelabel{
    if (_timelabel == nil) {
        _timelabel = [[UILabel alloc] init];
        _timelabel.text = @"7小时";
        _timelabel.textColor = [UIColor grayColor];
        _timelabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _timelabel;
}
-(UIView *)purpleView{
    if (_purpleView == nil) {
        _purpleView = [[UIView alloc]init];
        _purpleView.backgroundColor = [UIColor purpleColor];
        _purpleView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _purpleView;
}
-(UIView *)goodView{
    if (_goodView == nil) {
        _goodView = [[UIView alloc]init];
        _goodView.backgroundColor = [UIColor orangeColor];
        _goodView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _goodView;
}
-(UILabel *)goodNumLabel{
    if (_goodNumLabel == nil) {
        _goodNumLabel = [[UILabel alloc]init];
        _goodNumLabel.text = @"12次赞";
        _goodNumLabel.textColor = [UIColor blueColor];
        _goodNumLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _goodNumLabel;
}
-(UIView *)grayView{
    if (_grayView == nil) {
        _grayView = [[UIView alloc]init];
        _grayView.backgroundColor = [UIColor grayColor];
        _grayView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _grayView;
}
-(UIView *)blueView{
    if (_blueView == nil) {
        _blueView = [[UIView alloc]init];
        _blueView.backgroundColor = [UIColor blueColor];
        _blueView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _blueView;
}
-(UIView *)moreView{
    if (_moreView == nil) {
        _moreView = [[UIView alloc] init];
        _moreView.backgroundColor = [UIColor purpleColor];
        _moreView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _moreView;
}
#pragma mark - constraints
-(void)setupLayoutWithMasonry{
    [_photoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(10);
        make.top.equalTo(self.view).with.offset(20);
        //make.right.equalTo(_nameLabel.mas_left).with.offset(10);
        make.bottom.equalTo(_purpleView.mas_top).with.offset(10);
        make.width.equalTo(@35);
        make.height.equalTo(@35);
    }];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_photoView);
        make.left.equalTo(_photoView.mas_right).with.offset(10);
    }];
    [_timeTipView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_timelabel.mas_left).with.offset(10);
        make.centerY.equalTo(_photoView);
        make.width.equalTo(@10);
        make.height.equalTo(@10);
    }];
    [_timelabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).with.offset(10);
        
        make.centerY.equalTo(_photoView);
    }];

}
@end
