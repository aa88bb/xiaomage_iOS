//
//  ViewController.m
//  827addBigPicture
//
//  Created by zhuchenglong on 16/8/27.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"minion"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = image.size;
    
    //内容偏移量 也可以得知用户的滚动位置
    self.scrollView.contentOffset = CGPointMake(200, 100);
    
    //self.scrollView.showsHorizontalScrollIndicator = NO;
    
    //self.scrollView.bounces = NO;
}


// touch the view
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
