//
//  Player.m
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        _playerLives = 3;
        _name = name;
        
    }
    return self;
}

-(NSInteger)loseLife{
    
    self.playerLives -= 1;
    
    return self.playerLives;
    
}


@end
