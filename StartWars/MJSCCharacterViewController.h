//
//  MJSCCharacterViewController.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

@import UIKit;
#import "MJSCStarsWarsCharacter.h"
#import "CafPlayer.h"
#import "MJSCStarsWarsUniverseViewController.h"

@interface MJSCCharacterViewController : UIViewController <UISplitViewControllerDelegate,
MJSCStarsWarsUniverseViewControllerDelegate>


@property (nonatomic, strong) MJSCStarsWarsCharacter *model;
@property (nonatomic, weak) IBOutlet UIImageView *photoView;
@property (nonatomic, strong) CafPlayer *player;

- (id) initWithModel:(MJSCStarsWarsCharacter*) model;
- (IBAction)playSound:(id)sender;
- (IBAction)displayWikipedia:(id)sender;


@end
