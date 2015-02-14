//
//  UIViewController+Combinator.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 14/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Combinator)
-(UINavigationController*) wrappedInNavigation;

@end
