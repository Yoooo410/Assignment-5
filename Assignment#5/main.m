//
//  main.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        
        ScoreKeeper *sk = [ScoreKeeper new];
        QuestionManager *qm = [QuestionManager new];
        QuestionFactory *qf = [QuestionFactory new];
        InputHandler *ih = [InputHandler new];
        
        while (gameOn)
        {
            
            Question *q = [qf generateRandomQuestion];
            NSLog(@"%@", [q qusetion]);
            NSString *str = [ih inputUser];
            [qm addQuestions:q];
            
            if ([str compare:@"quit"] == NSOrderedSame)
            {
                if ([ih continueCheck] == false)
                {
                    break;
                }
            }
            else
            {
                NSInteger test = [str intValue];
                if ([q compereAnswer:test] == true)
                {
                    [sk counterRight];
                }
                else
                {
                    [sk counterWrong];
                }
            }
            [sk showScore];
            
            [qm timeOutput];
        }
    }
    return 0;
}
