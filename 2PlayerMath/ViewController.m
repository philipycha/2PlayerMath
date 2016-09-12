//
//  ViewController.m
//  2PlayerMath
//
//  Created by Philip Ha on 2016-09-12.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *currentQuestion;

@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSString *answer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Player *player1 = [[Player alloc] init];
    player1.turn = YES;
    
    Player *player2 = [[Player alloc] init];
    player2.turn = NO;
    
    self.answer = @"";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)number0:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"0"];
    NSLog(@"%@", self.answer);
    
}

- (IBAction)number1:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"1"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number2:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"2"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number3:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"3"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number4:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"4"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number5:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"5"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number6:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"6"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number7:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"7"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number8:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"8"];
    NSLog(@"%@", self.answer);
}

- (IBAction)number9:(UIButton *)sender {
    
    self.answer = [self.answer stringByAppendingString:@"9"];
    NSLog(@"%@", self.answer);
}




@end
