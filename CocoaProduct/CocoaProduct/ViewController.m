//
//  ViewController.m
//  CocoaProduct
//
//  Created by 共捷MAC on 2017/4/24.
//  Copyright © 2017年 共捷MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [NetWorkManager requestWithType:HttpRequestTypeGet withUrlString:@"idservice/id" withParaments:@{@"id":@"420984198704207896"} withSuccessBlock:^(NSDictionary *object) {
        
        
        
    } withFailureBlock:^(NSError *error) {
        NSLog(@"%@",error.localizedDescription);
        
        
    } progress:^(float progress) {
        
        
        
    }];
    UIView *testView = [[UIView alloc] init];
    testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:testView];
    [testView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(100, 100, 100, 100));
    }];
    CGSize size = self.view.mj_size;
    NSLog(@"%@",NSStringFromCGSize(size));
    
    NSString *str = [@"hello" mj_firstCharUpper];
    NSLog(@"%@",str);
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
