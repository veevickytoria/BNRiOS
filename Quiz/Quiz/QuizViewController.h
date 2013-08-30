//
//  QuizViewController.h
//  Quiz
//
//  Created by Victoria Zheng on 8/21/13.
//  Copyright (c) 2013 Victoria Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
