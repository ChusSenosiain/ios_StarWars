//
//  MJSCStarsWarsCharacter.m
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCStarsWarsCharacter.h"


@implementation MJSCStarsWarsCharacter


+ (instancetype) starsWarsCharacterWithName:(NSString*) name
                                      alias:(NSString*) alias
                                        url:(NSURL*) url
                                      sound:(NSData*) soundData
                                      image:(UIImage*) photo {
    
    return [[self alloc]initWithName:name
                               alias:alias
                                 url:url
                               sound:soundData
                               image:photo];
}


+ (instancetype) starsWarsCharacterWithAlias:(NSString*) alias
                                         url:(NSURL*) url
                                       sound:(NSData*) soundData
                                       image:(UIImage*) photo {
    
    return [[self alloc] initWithAlias:alias
                                   url:url
                                 sound:soundData
                                 image:photo];
}



- (id) initWithName:(NSString*) name
              alias:(NSString*) alias
                url:(NSURL*) url
              sound:(NSData*) soundData
              image:(UIImage*) photo {
    
    if (self = [super init]) {
        _alias = alias;
        _name = name;
        _wikiPage = url;
        _soundData = soundData;
        _photo = photo;
        
    }
    
    return self;
}


- (id) initWithAlias:(NSString*) alias
                 url:(NSURL*) url
               sound:(NSData*) soundData
               image:(UIImage*) photo {
    
    
    if (self = [super init]) {
        _alias = alias;
        _wikiPage = url;
        _soundData = soundData;
        _photo = photo;
        
    }
    
    return self;
    
}



@end
