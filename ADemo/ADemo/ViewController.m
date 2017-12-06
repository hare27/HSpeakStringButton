//
//  ViewController.m
//  speakingDemo
//
//  Created by 张文军 on 2017/12/5.
//  Copyright © 2017年 xbwqlwq. All rights reserved.
//

#import "ViewController.h"
#import "HSpeakStringButton.h"

@interface ViewController ()<HSpeakDelegate>

@property(nonatomic,strong)HSpeakButton *speakButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _speakButton = [HSpeakButton speakButton];
    _speakButton.backgroundColor = [UIColor orangeColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_speakButton];
    _speakButton.delegate = self;
    
}

-(void)speakEnd:(HSpeakButton *)button{
    NSLog(@"播放结束");
}
-(void)speakButton:(HSpeakButton *)button playError:(NSError *)error{
    NSLog(@"%@",error.domain);
}
- (IBAction)s1:(id)sender {
    [self.speakButton changeSpeakStr:@"今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊今天天气真好啊今天天气真好啊、今天天气。真好啊、今天天气真好啊今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊、今天天气真好啊今天天气真好啊今天天气真好啊、今天天气真好啊、今天天气真好啊今天天气真好啊。"];
}
- (IBAction)s2:(id)sender {
    [self.speakButton changeSpeakStr:@""];
}
- (IBAction)s3:(id)sender {
    [self.speakButton changeSpeakStr:nil];
}
- (IBAction)arr1:(id)sender {
    [self.speakButton changeSpeakArr:@[@"我从山中来，带着兰花草。",@"",@"种在小园中,希望花开早。"]];
}
- (IBAction)arr2:(id)sender {
    [self.speakButton changeSpeakArr:@[@"一日看三回,看得花时过。",@"兰花却依然,苞也无一个。",@""]];
}
- (IBAction)arr3:(id)sender {
    [self.speakButton changeSpeakArr:@[@"",@"转眼秋天到,移兰入暖房",@"朝朝频顾惜,夜夜不相忘.",@"期待春花开,能将夙愿偿.",@"满庭花簇簇,添得许多香."]];
}
- (IBAction)l1:(id)sender {
    [self.speakButton changeLanguage:@"zh-CN"];
}
- (IBAction)l2:(id)sender {
    [self.speakButton changeLanguage:@"en-GB"];
}
- (IBAction)l3:(id)sender {
    [self.speakButton changeLanguage:@"ja-JP"];
}


@end
