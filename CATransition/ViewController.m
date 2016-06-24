//
//  ViewController.m
//  CATransition
//
//  Created by xuxiwen on 16/6/11.
//  Copyright © 2016年 xuxiwen. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"
#import "DeatailViewController.h"
#import "MagicMoveTransition.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, UINavigationControllerDelegate>

@end

@implementation ViewController


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // 这是的转场动画属于自定义push 由导航栏来控制
    // 属于导航控制器来负责转场
    // 我们让当前控制器来作为 UINavigationControllerDelegate代理对象， 并实现协议方法。
    
    self.navigationController.delegate = self;

}




#pragma mark - 返回我们写好的转场对象


- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC
{
    if ([toVC isKindOfClass:[DeatailViewController class]]) {
        MagicMoveTransition *transition = [[MagicMoveTransition alloc] init];
        return transition;
    }
    return nil;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}



//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    DeatailViewController *vc = [story instantiateViewControllerWithIdentifier:@"123"];
//    
//    
//    [self.navigationController pushViewController:vc animated:YES];
//}


@end
