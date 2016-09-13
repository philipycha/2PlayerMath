//
//  ViewController.m
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;

//test test

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *currentQuestion;
@property (weak, nonatomic) IBOutlet UILabel *currentInput;

//@property (nonatomic, strong) NSString *question;
//@property (nonatomic, strong) NSString *answer;

//@property (nonatomic, strong) Player *player1;
//@property (nonatomic, strong) Player *player2;

@property (nonatomic) NSInteger playerLives;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [[GameModel alloc] init];
    
    self.gameModel.answer = @"";
//    
//    self.gameModel.player1 = [[Player alloc] initWithName:@"Player 1"];
//    self.gameModel.player2 = [[Player alloc] initWithName:@"Player 2"];
//    
    
    self.currentQuestion.text = [self.gameModel generateQuestion];
    
    self.player1Score.text = [NSString stringWithFormat:@"Player 1 Score: %ld", (long)self.gameModel.player1.playerLives];
    self.player2Score.text = [NSString stringWithFormat:@"Player 2 Score: %ld", (long)self.gameModel.player2.playerLives];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)number0:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"0"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
}

- (IBAction)number1:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"1"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
   
}

- (IBAction)number2:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"2"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
   
}

- (IBAction)number3:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"3"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
   
}

- (IBAction)number4:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"4"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
   
}

- (IBAction)number5:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"5"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
   
}

- (IBAction)number6:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"6"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
    
}

- (IBAction)number7:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"7"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
  
}

- (IBAction)number8:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"8"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
    
}

- (IBAction)number9:(UIButton *)sender {
    
    self.gameModel.answer = [self.gameModel.answer stringByAppendingString:@"9"];
    NSLog(@"%@", self.gameModel.answer);
    
    self.currentInput.text = self.gameModel.answer;
    
    
}


- (IBAction)enter:(UIButton *)sender {
    
    if (![self.gameModel isCorrectAnswer]) {
        
        [self.gameModel.currentPlayer loseLife];
        
    }
    
    self.player1Score.text = [NSString stringWithFormat:@"Player 1 Score: %ld", (long)self.gameModel.player1.playerLives];
    self.player2Score.text = [NSString stringWithFormat:@"Player 2 Score: %ld", (long)self.gameModel.player2.playerLives];
    
    if (self.gameModel.currentPlayer == self.gameModel.player1) {
        self.gameModel.currentPlayer = self.gameModel.player2;
    } else {
        self.gameModel.currentPlayer = self.gameModel.player1;
    }
    
    self.gameModel.answer = @"";
    
    self.currentInput.text = @"";
    
    self.currentQuestion.text = [self.gameModel generateQuestion];
    
    
}



@end
