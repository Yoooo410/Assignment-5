//
//  Question.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
//        _answer = _rightValue + _leftValue;
//        _qusetion = [NSString stringWithFormat:@"%ld + %ld ?", _rightValue, _leftValue];
        _startTime = [NSDate date];
        //NSLog(@"%@",_qusetion);
    }
    return self;
}

- (BOOL) compereAnswer: (NSInteger) answer1
{
    
    if (_answer == answer1) {
        NSLog(@"Right!");
        _endTime = [NSDate date];
        
        return true;
    }
    else{
        NSLog(@"Wrong!");
        _endTime = [NSDate date];
        
        return false;
    }
}

-(NSTimeInterval) timeToAnswer
{
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void) generateQuestion
{

}

@end
