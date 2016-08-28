//
//  ViewController.m
//  827scrollView
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
    
}


- (IBAction)up:(id)sender {
    
//    [UIView animateWithDuration:1 animations:^{
//        CGPoint offset = self.scrollView.contentOffset;
//        offset.y = 0;
//        self.scrollView.contentOffset = offset;
//    }];
    
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x , 0) animated:YES];
    
    //in content
    self.scrollView.contentInset = UIEdgeInsetsMake(10, 20, 30, 40);
    
}



- (IBAction)right:(id)sender {
    
}


- (IBAction)updowm:(id)sender {
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
