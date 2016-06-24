//
//  ViewController.h
//  CATransition
//
//  Created by xuxiwen on 16/6/11.
//  Copyright © 2016年 xuxiwen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) NSIndexPath *indexPath;
@property (assign, nonatomic) CGRect finiRect;

@end

