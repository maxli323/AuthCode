//
//  ViewController.m
//  AuthCode
//
//  Created by Max on 2017/10/16.
//  Copyright © 2017年 Max. All rights reserved.
//

#import "ViewController.h"
#import "MaxAuthCodeView.h"

@interface ViewController ()

@property (nonatomic, strong) MaxAuthCodeView * authcodeImage;/**< 验证码视图*/

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.authcodeImage = [[MaxAuthCodeView alloc] initWithFrame:CGRectMake(50, 100, 120, 60)];
    [self.view addSubview:self.authcodeImage];
    [self.authcodeImage getAuthcode];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(50, 200, 120, 50);
    [btn setTitle:self.authcodeImage.authCodeStr forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor cyanColor]];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnClick:(UIButton *)sender {
    [sender setTitle:self.authcodeImage.authCodeStr forState:UIControlStateNormal];
    NSLog(@"%@",self.authcodeImage.authCodeStr);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
