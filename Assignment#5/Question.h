//
//  Question.h
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *qusetion;
@property (nonatomic) NSInteger answer; // NSInteger is long type!
@property (nonatomic, strong)NSDate *startTime;
@property (nonatomic, strong)NSDate *endTime;
@property (nonatomic)NSInteger rightValue;
@property (nonatomic)NSInteger leftValue;

- (BOOL) compereAnswer: (NSInteger) answer1;
- (NSTimeInterval) timeToAnswer;
- (void) generateQuestion;


@end
