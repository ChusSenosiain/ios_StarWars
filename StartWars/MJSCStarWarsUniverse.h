//
//  MJSCStarWarsUniverse.h
//  StartWars
//
//  Created by María Jesús Senosiain Caamiña on 07/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

@import Foundation;
#import "MJSCStarsWarsCharacter.h"

@interface MJSCStarWarsUniverse : NSObject

@property (nonatomic, readonly) NSUInteger rebelCount;
@property (nonatomic, readonly) NSUInteger imperialCount;

- (MJSCStarsWarsCharacter *) rebelAtIndex:(NSUInteger) index;
- (MJSCStarsWarsCharacter *) imperialAtIndex:(NSUInteger) index;


@end
