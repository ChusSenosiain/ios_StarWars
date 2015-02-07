//
//  MJSCWikiViewController.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

@import UIKit;
#import "MJSCStarsWarsCharacter.h"

@interface MJSCWikiViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic, strong) MJSCStarsWarsCharacter *model;
@property (nonatomic, weak) IBOutlet UIWebView *browser;

-(id) initWithModel:(MJSCStarsWarsCharacter*) model;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;

@end
