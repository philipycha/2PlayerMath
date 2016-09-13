//
//  GameModel.h
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "GameModel.h"

@interface GameModel : NSObject

@property (nonatomic, strong) Player *currentPlayer;
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;

@property (nonatomic, strong) NSString* answer;
@property (nonatomic, strong) NSString* correctAnswer;

@property (nonatomic) NSString *displayQuestion;

- (NSString*)generateQuestion;
- (BOOL) isCorrectAnswer;

@end
