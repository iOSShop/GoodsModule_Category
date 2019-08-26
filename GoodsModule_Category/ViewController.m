//
//  ViewController.m
//  GoodsModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "ViewController.h"
#import "CCMediator+GoodsModule.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clickButton:(id)sender {
    UIViewController *viewController = [[CCMediator sharedInstance] Goods_viewControllerForMineList];

    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:viewController] animated:YES completion:nil];
    
//    UIViewController *detailViewController = [[CCMediator sharedInstance] Goods_viewControllerForDetailWithID:@(10)];
//    self.view.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:detailViewController];
}


@end
