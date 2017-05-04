//
//  QuestionManager.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "QuestionManager.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (void) addQuestions: (Question *)newQuestion
{
    [_questions addObject: newQuestion];
}

- (void)timeOutput
{
    Question *q;
    q = _questions[0];
    Question *lq;
    lq = _questions[_questions.count-1];
    
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    
    totalTime = [lq.endTime timeIntervalSinceDate:q.startTime];
    
    averageTime = totalTime / _questions.count;
    NSLog(@"total time: %.2fs, average time: %.2fs", totalTime, averageTime);
}


@end
