//
//  MJSCStarsWarsUniverseViewController.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#define IMPERIAL_SECTION 0
#define REBEL_SECTION 1

@import UIKit;
#import "MJSCStarWarsUniverse.h"

@interface MJSCStarsWarsUniverseViewController : UITableViewController

-(id) initWithModel:(MJSCStarWarsUniverse*) model
              style:(UITableViewStyle) style;

@end
