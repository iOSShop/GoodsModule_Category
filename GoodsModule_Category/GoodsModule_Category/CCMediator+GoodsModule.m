//
//  CCMediator+GoodsModule.m
//  GoodsModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "CCMediator+GoodsModule.h"

NSString * const MediatorTargetGoods = @"Goods";
NSString * const MediatorActionGoodsMineListViewController = @"nativeMineListViewController";
NSString * const MediatorActionGoodsDetailViewController = @"nativeDetailViewController";

@implementation CCMediator (GoodsModule)

/**
 *我的商品列表
 **/
- (UIViewController *)Goods_viewControllerForMineList {
    UIViewController *viewController = [self performTarget:MediatorTargetGoods action:MediatorActionGoodsMineListViewController params:nil shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
/**
 *商品详情
 **/
- (UIViewController *)Goods_viewControllerForDetailWithID:(NSNumber *)goodsID {
    if (goodsID == nil) {
        NSException *exception = [[NSException alloc] initWithName:@"Goods_viewControllerForDetailWithID:提示" reason:@"goodsID不能为空" userInfo:nil];
        @throw exception;
    }
    
    UIViewController *viewController = [self performTarget:MediatorTargetGoods action:MediatorActionGoodsDetailViewController params:@{@"goodsID":goodsID} shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

@end
