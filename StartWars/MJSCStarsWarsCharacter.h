//
//  MJSCStarsWarsCharacter.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 06/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

@interface MJSCStarsWarsCharacter : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *alias;
@property (nonatomic, strong) NSURL *wikiPage;
// NSData se usa para datos binarios
@property (nonatomic, strong) NSData *soundData;
@property (nonatomic, strong) UIImage *photo;

+ (instancetype) starsWarsCharacterWithName:(NSString*) name
                                      alias:(NSString*) alias
                                        url:(NSURL*) url
                                      sound:(NSData*) soundData
                                      image:(UIImage*) photo;


+ (instancetype) starsWarsCharacterWithAlias:(NSString*) alias
                                         url:(NSURL*) url
                                       sound:(NSData*) soundData
                                       image:(UIImage*) photo;




- (id) initWithName:(NSString*) name
               alias:(NSString*) alias
                 url:(NSURL*) url
               sound:(NSData*) soundData
               image:(UIImage*) photo;


- (id) initWithAlias:(NSString*) alias
                 url:(NSURL*) url
               sound:(NSData*) soundData
               image:(UIImage*) photo;



@end