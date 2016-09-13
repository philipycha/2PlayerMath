//
//  Player.h
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger playerLives;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL turn;

- (instancetype)initWithName:(NSString*)name;


-(NSInteger)loseLife;

@end
