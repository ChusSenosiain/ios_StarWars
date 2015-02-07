//
//  MJSCCharacterViewController.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCCharacterViewController.h"
#import "CafPlayer.h"


@implementation MJSCCharacterViewController


- (id) initWithModel:(MJSCStarsWarsCharacter*) model {
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = model;
        _player = [CafPlayer cafPlayer];

    }
    
    return self;
}


-(IBAction)playSound:(id)sender {
    
       [self.player playSoundData:self.model.soundData];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // sincronizar modelo -> vista
    self.photoView.image = self.model.photo;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
