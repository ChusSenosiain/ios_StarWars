//
//  MJSCCharacterViewController.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCCharacterViewController.h"
#import "MJSCWikiViewController.h"
#import "CafPlayer.h"


@implementation MJSCCharacterViewController


- (id) initWithModel:(MJSCStarsWarsCharacter*) model {
    
    if (self = [super initWithNibName:nil bundle:nil]) {
        _model = model;
        _player = [CafPlayer cafPlayer];
        self.title = model.alias;

    }
    
    return self;
}


-(IBAction)playSound:(id)sender {
    
    [self.player playSoundData:self.model.soundData];
    
}

- (IBAction)displayWikipedia:(id)sender {
    
    // Createmos el wikiVC
    MJSCWikiViewController *wikiVC = [[MJSCWikiViewController alloc] initWithModel:self.model];
    
    // Pusheamos
    [self.navigationController pushViewController:wikiVC animated:YES];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    //Eliminamos comporramiento por defecto de IOS?
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    // sincronizar modelo -> vista
    self.photoView.image = self.model.photo;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
