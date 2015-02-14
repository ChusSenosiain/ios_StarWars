//
//  UIViewController+Combinator.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 14/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "UIViewController+Combinator.h"

@implementation UIViewController (Combinator)

-(UINavigationController*) wrappedInNavigation {
    
    UINavigationController *nav = [UINavigationController new];
    [nav pushViewController:self
                   animated:NO];
    return nav;
}

@end
