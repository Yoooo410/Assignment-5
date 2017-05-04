//
//  QuestionFactory.h
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "Question.h"
#import "Addition.h"
#import "Subtraction.h"
#import "Multiplication.h"
#import "Division.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;
- (Question *)generateRandomQuestion;

@end
