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
@property (nonatomic, strong) UIImageView *photoImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIView *timeTipView;
@property (nonatomic, strong) UILabel *timeLabel;
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
    [self.view addSubview:self.photoImageView];
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.timeTipView];
    [self.view addSubview:self.timeLabel];
    [self.view addSubview:self.purpleView];
    [self.view addSubview:self.goodView];
    [self.view addSubview:self.goodNumLabel];
    [self.view addSubview:self.grayView];
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.moreView];
    
    [self setupLayoutWithMasonry];
    //[self setupLayoutWithVFL];
}

#pragma mark - setter & getter
-(UIView *)photoImageView{
    if (_photoImageView == nil) {
        _photoImageView = [[UIImageView alloc] init];
        _photoImageView.backgroundColor = [UIColor redColor];
        _photoImageView.layer.cornerRadius = 35/2;
        _photoImageView.layer.masksToBounds = YES;
        _photoImageView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _photoImageView;
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
-(UILabel *)timeLabel{
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.text = @"7小时";
        _timeLabel.textColor = [UIColor grayColor];
        _timeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _timeLabel;
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
    [_photoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(10);
        make.top.equalTo(self.view).with.offset(20);
        make.bottom.equalTo(_purpleView.mas_top).with.offset(-10);
        make.width.equalTo(@35);
        make.height.equalTo(_photoImageView.mas_width);
    }];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_photoImageView);
        make.left.equalTo(_photoImageView.mas_right).with.offset(10);
    }];
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).with.offset(-10);
        make.centerY.equalTo(_photoImageView);
    }];
    [_timeTipView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_timeLabel.mas_left).with.offset(-10);
        make.centerY.equalTo(_photoImageView);
        make.width.equalTo(@10);
        make.height.equalTo(_timeTipView.mas_width);
    }];
    [_purpleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        //make.top.equalTo(_photoView.mas_bottom).with.offset(10);
        make.height.equalTo(_purpleView.mas_width);
    }];
    [_goodView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_purpleView.mas_bottom).with.offset(10);
        make.centerX.equalTo(_photoImageView);
        make.width.equalTo(@20);
        make.height.equalTo(_goodView.mas_width);
    }];
    [_goodNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_goodView.mas_right).with.offset(10);
        make.centerY.equalTo(_goodView);
    }];
    [_grayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_photoImageView);
        make.top.equalTo(_goodView.mas_bottom).with.offset(20);
        make.width.equalTo(@50);
        make.height.equalTo(@25);
    }];
    [_blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_grayView.mas_right).with.offset(5);
        make.centerY.equalTo(_grayView);
        make.width.equalTo(@60);
        make.height.equalTo(_grayView);
    }];
    [_moreView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).with.offset(-10);
        make.centerY.equalTo(_grayView);
        make.width.equalTo(@40);
        make.height.equalTo(_grayView);
    }];
    
}
-(void)setupLayoutWithVFL{
    NSDictionary *views = NSDictionaryOfVariableBindings(self.view,_photoImageView,_nameLabel,_timeTipView,_timeLabel,_purpleView,_goodView,_goodNumLabel,_grayView,_blueView,_moreView);
    NSNumber *margin0 = @5;
    NSNumber *margin1 = @10;
    NSNumber *margin2 = @20;
    NSNumber *margin3 = @25;
    NSDictionary *metrics = NSDictionaryOfVariableBindings(margin0,margin1,margin2,margin3);
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-margin1-[_photoImageView(35)]-margin1-[_nameLabel][_timeTipView(>=10)]-margin1-[_timeLabel]-margin1-|" options:NSLayoutFormatAlignAllCenterY metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|[_purpleView]|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"|-margin1-[_goodView(>=20)]-margin1-[_goodNumLabel]" options:NSLayoutFormatAlignAllCenterY metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-margin1-[_grayView(50)]-margin0-[_blueView(60)]-200-[_moreView(40)]-margin1-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-margin2-[_photoImageView(>=35)]-margin1-[_purpleView(>=375)]-margin1-[_goodView(>=20)]-margin2-[_grayView(>=25)]" options:0 metrics:metrics views:views]];
    
}

@end
