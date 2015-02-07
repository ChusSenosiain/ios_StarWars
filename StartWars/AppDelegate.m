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


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    
    
    // Creo el combinador
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    [tabVC setViewControllers:[self arrayOfControllers]];
    // Lo muestro en la pantalla
    self.window.rootViewController = tabVC;
    
    
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


#pragma mark - Utils
-(NSArray*) arrayOfModels {
    
    
    
    // Vader
    NSURL *vaderURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Darth_Vader"];
    NSBundle *b = [NSBundle mainBundle];
    NSData *vaderSound = [NSData dataWithContentsOfURL:[b URLForResource:@"vader" withExtension:@"caf"]];
    UIImage *vaderImage = [UIImage imageNamed:@"darthVader.jpg"];
    
    
    MJSCStarsWarsCharacter *vader = [MJSCStarsWarsCharacter starsWarsCharacterWithName:@"Anakin Skywalker"
                                                                                 alias:@"Darth Vader"
                                                                                   url:vaderURL
                                                                                 sound:vaderSound
                                                                                 image:vaderImage];
    
    
    // Chewie
    NSURL *chewieURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/Chewbacca"];
    NSBundle *chewieBound = [NSBundle mainBundle];
    NSData *chewieSound = [NSData dataWithContentsOfURL:[b URLForResource:@"chewbacca" withExtension:@"caf"]];
    UIImage *chewieImage = [UIImage imageNamed:@"chewbacca.jpg"];
    
    
    MJSCStarsWarsCharacter *chewie = [MJSCStarsWarsCharacter starsWarsCharacterWithAlias:@"Chewbacca"
                                                                                   url:chewieURL
                                                                                 sound:chewieSound
                                                                                 image:chewieImage];
    
    
    // C3po
    NSURL *c3poURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/C3-PO"];
    NSBundle *c3poBound = [NSBundle mainBundle];
    NSData *c3poSound = [NSData dataWithContentsOfURL:[b URLForResource:@"c3po" withExtension:@"caf"]];
    UIImage *c3poImage = [UIImage imageNamed:@"c3po.jpg"];
    
    
    MJSCStarsWarsCharacter *c3po = [MJSCStarsWarsCharacter starsWarsCharacterWithAlias:@"C-3po"
                                                                                     url:c3poURL
                                                                                   sound:c3poSound
                                                                                   image:c3poImage];
    
    
    // r2d2
    NSURL *r2d2URL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/R2-D2"];
    NSBundle *r2d2Bound = [NSBundle mainBundle];
    NSData *r2d2Sound = [NSData dataWithContentsOfURL:[b URLForResource:@"r2-d2" withExtension:@"caf"]];
    UIImage *r2d2Image = [UIImage imageNamed:@"R2-D2.jpg"];
    
    
    MJSCStarsWarsCharacter *r2d2 = [MJSCStarsWarsCharacter starsWarsCharacterWithAlias:@"R2-D2"
                                                                                     url:r2d2URL
                                                                                   sound:r2d2Sound
                                                                                   image:r2d2Image];
    
    
    
    // YODA
    NSURL *yodaURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/yoda"];
    NSBundle *yodaBound = [NSBundle mainBundle];
    NSData *yodaSound = [NSData dataWithContentsOfURL:[b URLForResource:@"yoda" withExtension:@"caf"]];
    UIImage *yodaImage = [UIImage imageNamed:@"yoda.jpg"];
    
    
    MJSCStarsWarsCharacter *yoda = [MJSCStarsWarsCharacter starsWarsCharacterWithName:@"Minch"
                                                                                alias:@"yoda"
                                                                                   url:yodaURL
                                                                                 sound:yodaSound
                                                                                 image:yodaImage];
    
    
    // TARKIN
    NSURL *tarkinURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/tarkin"];
    NSBundle *tarkinBound = [NSBundle mainBundle];
    NSData *tarkinSound = [NSData dataWithContentsOfURL:[b URLForResource:@"tarkin" withExtension:@"caf"]];
    UIImage *tarkinImage = [UIImage imageNamed:@"tarkin.jpg"];
    
    
    MJSCStarsWarsCharacter *tarkin = [MJSCStarsWarsCharacter starsWarsCharacterWithName:@"Grand Mof Tarkin"
                                                                                alias:@"Tarkin"
                                                                                  url:tarkinURL
                                                                                sound:tarkinSound                                                                                image:tarkinImage];
    
    
    
    // PALPATINE
    NSURL *palpatineURL = [NSURL URLWithString:@"http://es.wikipedia.org/wiki/palpatine"];
    NSBundle *palpatineBound = [NSBundle mainBundle];
    NSData *palpatineSound = [NSData dataWithContentsOfURL:[b URLForResource:@"palpatine" withExtension:@"caf"]];
    UIImage *palpatineImage = [UIImage imageNamed:@"palpatine.jpg"];
    
    
    MJSCStarsWarsCharacter *palpatine = [MJSCStarsWarsCharacter starsWarsCharacterWithName:@"Palpatine"
                                                                                alias:@"Darth Sidious"
                                                                                  url:palpatineURL
                                                                                sound:palpatineSound                                                                                image:palpatineImage];
    
    
    
    return @[vader, chewie, c3po, r2d2, yoda, tarkin, palpatine];
    

    
}


- (NSArray*) arrayOfControllers {
    NSArray *models = [self arrayOfModels];
    NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:models.count];
    
    for (MJSCStarsWarsCharacter *model in models) {
        // Por cada modelo creo un controlador
        
        MJSCCharacterViewController *charVC = [[MJSCCharacterViewController alloc] initWithModel:model];
        
        //Meto el controlador dentro del navigation
        UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:charVC];
        
        
        // Añado e navigation al array
        [controllers addObject:navVC];
    }
    
    return controllers;
    
}


@end
