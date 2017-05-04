//
//  QuestionManager.h
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

- (void) addQuestions: (Question *)newQuestion;
- (void)timeOutput;

@end
