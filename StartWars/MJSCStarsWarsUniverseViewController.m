//
//  MJSCStarsWarsUniverseViewController.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCStarsWarsUniverseViewController.h"
#import "MJSCStarWarsUniverse.h"
#import "MJSCCharacterViewController.h"


@interface MJSCStarsWarsUniverseViewController ()
@property (nonatomic, strong) MJSCStarWarsUniverse *model;
@end

@implementation MJSCStarsWarsUniverseViewController


-(id) initWithModel:(MJSCStarWarsUniverse*) model
              style:(UITableViewStyle) style {
    
    if (self = [super initWithStyle:style]) {
        _model = model;
        self.title = @"starsWarsUniverse";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if (section == IMPERIAL_SECTION) {
        return [self.model imperialCount];
    }
    return [self.model rebelCount];
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Averiguar de que personaje me habla
    MJSCStarsWarsCharacter *character;
    
    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.model imperialAtIndex:indexPath.row];
    } else {
        character = [self.model rebelAtIndex:indexPath.row];
    }
    
    
    //Crear la celda
    static NSString *cellId = @"StarWarsCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        // Si es nil la creo desde 0
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    
    
    //Configurarla: sincronizar model --> vista (celda)

    
    cell.imageView.image = character.photo;
    cell.textLabel.text = character.alias;
    cell.detailTextLabel.text = character.name;
    
    // Devolvemos la celda
    
    return cell;
    
    
}



-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == IMPERIAL_SECTION) {
        return @"Imperiales";
    }
    
    return @"Rebeldes";
}

#pragma mark - TableView Delegate

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Averiguar el personaje
    MJSCStarsWarsCharacter *character;
    if (indexPath.section == IMPERIAL_SECTION) {
        character = [self.model imperialAtIndex:indexPath.row];
    } else {
        character = [self.model rebelAtIndex:indexPath.row];
    }
    
    // Avisamos al delegado: primero verificamos que entiende el mensaje
    if ([self.delegate respondsToSelector:@selector(starWarsUniverseViewController:didSelectCharacter:)]) {
        [self.delegate starWarsUniverseViewController:self
                                   didSelectCharacter:character];

    }
    
    // Enviamos la notificacion
    NSDictionary *dict = @{CHARACTER_KEY: character};
    NSNotification *n = [NSNotification notificationWithName:CHARACTER_DID_CHANGE_NOTIFICATION
                                                      object:self
                                                    userInfo:dict];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    [nc postNotification:n];
    
    
    
}

# pragma mark - MJSCStarsWarsUniverseViewControllerDelegate
-(void) starWarsUniverseViewController:(MJSCStarsWarsUniverseViewController *)vc didSelectCharacter:(MJSCStarsWarsCharacter *)character {
    
    // Creo un Character VC
    MJSCCharacterViewController *charVC = [[MJSCCharacterViewController alloc] initWithModel:character];
    
    // Me hago un push
    [self.navigationController pushViewController:charVC animated:YES];
}

@end
