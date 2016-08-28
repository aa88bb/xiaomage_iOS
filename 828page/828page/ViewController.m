//
//  ViewController.m
//  828page
//
//  Created by zhuchenglong on 16/8/28.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for(int i=0;i<5;i++){
        UIImageView *imageView = [[UIImageView alloc] init];
        NSString *name = [NSString stringWithFormat:@"img_0%d",i+1];
        imageView.image = [UIImage imageNamed:name];
        imageView.frame = CGRectMake(i*self.scrollView.frame.size.width, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
        [self.scrollView addSubview:imageView];
     

    }
        self.scrollView.contentSize = CGSizeMake(5*self.scrollView.frame.size.width, 0);
        self.scrollView.pagingEnabled = YES;
    self.pageController.currentPage = 0;
    
    //self.pageController.numberOfPages = count;
    
    
    
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int page = scrollView.contentOffset.x/scrollView.frame.size.width + 0.5;
    self.pageController.currentPage = page;
}

//-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
//    if(decelerate == NO){
//        int page = scrollView.contentOffset.x/scrollView.frame.size.width;
//        self.pageController.currentPage = page;
//    }
//}
//
//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    //cal page
//    int page = scrollView.contentOffset.x/scrollView.frame.size.width;
//    self.pageController.currentPage = page;
//    
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
