//
//  GameModel.m
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        Player *player1 = [[Player alloc] initWithName:@"Player 1"];
        player1.turn = YES;
        
        Player *player2 = [[Player alloc] initWithName:@"Player 2"];
        player2.turn = NO;
        
        _player1 = player1;
        _player2 = player2;
        
        _currentPlayer = _player1;
        
    }
    return self;
}


- (NSString*) generateQuestion {

    int x = arc4random_uniform(20)+1;
    int y = arc4random_uniform(20)+1;
    
    if (self.currentPlayer == self.player1) {
        self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player1.name, x, y];
       
        
    } else if (self.currentPlayer == self.player2) {
        self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player2.name, x, y];
    }
    
    self.correctAnswer = [NSString stringWithFormat:@"%d", (x + y)];
    
    return self.displayQuestion;
}

- (BOOL) isCorrectAnswer{
    

    if ([self.correctAnswer isEqualToString: self.answer]) {
        NSLog(@"Correct!");
        return YES;
    }
    
    NSLog(@"Incorrect!");
    return NO;
}


@end

