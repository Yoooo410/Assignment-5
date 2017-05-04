//
//  InputHandler.m
//  Assignment#5
//
//  Created by yoshitokomiya on 2017-04-25.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "InputHandler.h"


@implementation InputHandler

- (NSString *) inputUser
{
    char inputUserAnswer[255]; //[byte]
    
    fgets(inputUserAnswer, 255, stdin);
    _finalAnswer = [NSString stringWithCString:inputUserAnswer
                                      encoding:NSUTF8StringEncoding];
    _finalAnswer = [_finalAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return _finalAnswer;
}

- (BOOL) continueCheck{
    
    char inputUser[255];
    
    NSLog(@"Do you want to continue the game?\n");
    NSLog(@"Please put YES or NO!");
    fgets(inputUser, 255, stdin);
    NSString *z = [NSString stringWithCString:inputUser
                                     encoding:NSUTF8StringEncoding];
    z = [z stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([z compare:@"yes"] == NSOrderedSame) {
        return true;
    }
    else{
        return false;
    }
}

@end
