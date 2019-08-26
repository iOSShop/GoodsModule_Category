//
//  CCMediator+GoodsModule.h
//  GoodsModule_Category
//
//  Created by Cai Cai on 2019/8/26.
//  Copyright © 2019 Cai Cai. All rights reserved.
//

#import "CCMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCMediator (GoodsModule)
/**
 *我的商品列表
 **/
- (UIViewController *)Goods_viewControllerForMineList;
/**
 *商品详情
 **/
- (UIViewController *)Goods_viewControllerForDetailWithID:(NSNumber *)goodsID;
@end

NS_ASSUME_NONNULL_END
