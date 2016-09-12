//
//  GameModel.m
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel


- (void) generateQuestion {

    int x = arc4random_uniform(20)+1;
    int y = arc4random_uniform(20)+1;
    
    if (self.player1) {
        self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player1.name, x, y];
        
    } else if (self.player2) {
        self.displayQuestion = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player2.name, x, y];
    }
    
}

- (BOOL) isCorrectAnswer{
    

    if ([self.question isEqualToString: self.answer]) {
        NSLog(@"Correct!");
        return YES;
    }
    
    NSLog(@"Incorrect!");
    return NO;
}


@end

