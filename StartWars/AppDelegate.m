//
//  AppDelegate.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "AppDelegate.h"

#import "MJSCStarsWarsCharacter.h"
#import "MJSCCharacterViewController.h"
#import "MJSCWikiViewController.h"
#import "MJSCStarWarsUniverse.h"
#import "MJSCStarsWarsUniverseViewController.h"
#import "UIViewController+Combinator.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    
    
    // Creo el modelo
    MJSCStarWarsUniverse *model = [MJSCStarWarsUniverse new];
    
    // Averiguo el tipo de pantalla
    UIDevice *dev = [UIDevice currentDevice];
    if ([dev userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        // Configuramos para iPad
        [self configureForiPadWithModel:model];
    } else {
        // Configuramos para iPhone
         [self configureForiPhoneWithModel:model];
    }
    
    
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

# pragma masrk - App Configuration
-(void) configureForiPadWithModel:(MJSCStarWarsUniverse*) model {
    
    // Creo los controladores
    MJSCStarsWarsUniverseViewController *uVC = [[MJSCStarsWarsUniverseViewController alloc] initWithModel:model style:UITableViewStylePlain];
    
    MJSCCharacterViewController *cVC = [[MJSCCharacterViewController alloc] initWithModel:[model imperialAtIndex:0]];
    
    
    // Creo el combinador
    UISplitViewController *splitVC = [UISplitViewController new];
    splitVC.viewControllers = @[[uVC wrappedInNavigation], [cVC wrappedInNavigation]];
    
    // Asigno delegados
    splitVC.delegate = cVC;
    uVC.delegate = cVC;
    
    
    // Lo muestro en la pantalla
    
    self.window.rootViewController = splitVC;
    
    
}

-(void) configureForiPhoneWithModel:(MJSCStarWarsUniverse*) model {
    
    // Creo el controlador
    MJSCStarsWarsUniverseViewController *uVC = [[MJSCStarsWarsUniverseViewController alloc] initWithModel:model style:UITableViewStylePlain];
    
    // Creo el combinador
    
    UINavigationController *nv = [uVC wrappedInNavigation];
    
    // Asigno delegados
    
    // Lo muestro en pantalla
    
    self.window.rootViewController = nv;
    
}



@end
