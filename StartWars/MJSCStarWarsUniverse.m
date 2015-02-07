//
//  MJSCStarWarsUniverse.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCStarWarsUniverse.h"

@interface MJSCStarWarsUniverse ()

@property (nonatomic, strong) NSArray *imperials;
@property (nonatomic, strong) NSArray *rebels;

@end

@implementation MJSCStarWarsUniverse


#pragma mark - Properties
-(NSUInteger) rebelCount {
    return self.rebels.count;
}


-(NSUInteger) imperialsCount {
    return self.imperials.count;
}


#pragma mark - init
-(id) init {
    
    if (self = [super init]) {
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
        
        _rebels = @[chewie, yoda, c3po, r2d2];
        _imperials = @[vader, tarkin, palpatine];
        
        
    }
    
    return self;
}

- (MJSCStarsWarsCharacter *) rebelAtIndex:(NSUInteger) index {
    return [self.rebels objectAtIndex:index];
}

- (MJSCStarsWarsCharacter *) imperialAtIndex:(NSUInteger) index{
    
    return [self.imperials objectAtIndex:index];
    
}

@end
