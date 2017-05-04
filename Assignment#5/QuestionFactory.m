//
//  QuestionFactory.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateRandomQuestion];
        _questionSubclassNames = @[@"Addition",
                                   @"Subtraction",
                                   @"Multiplication",
                                   @"Division"];
    }
    return self;
}

- (Question *)generateRandomQuestion
{
    NSInteger randNum = arc4random_uniform(4);
    NSString *question = [_questionSubclassNames objectAtIndex:randNum];
    return [[NSClassFromString(question) alloc] init];
    
}



@end
