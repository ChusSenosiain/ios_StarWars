//
//  MJSCStarsWarsUniverseViewController.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#define IMPERIAL_SECTION 0
#define REBEL_SECTION 1
#define CHARACTER_DID_CHANGE_NOTIFICATION @"characterDidChange"
#define CHARACTER_KEY @"character"


@import UIKit;
#import "MJSCStarWarsUniverse.h"


@class MJSCStarsWarsUniverseViewController;
@protocol MJSCStarsWarsUniverseViewControllerDelegate <NSObject>

@optional
-(void)starWarsUniverseViewController:(MJSCStarsWarsUniverseViewController*)vc
                   didSelectCharacter:(MJSCStarsWarsCharacter *) character;

@end


@interface MJSCStarsWarsUniverseViewController : UITableViewController

@property (weak, nonatomic)id<MJSCStarsWarsUniverseViewControllerDelegate> delegate;

-(id) initWithModel:(MJSCStarWarsUniverse*) model
              style:(UITableViewStyle) style;

@end
