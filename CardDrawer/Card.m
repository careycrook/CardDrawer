//
//  Card.m
//  practice
//
//  Created by Test Account on 1/8/15.
//  Copyright (c) 2015 Test Account. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

/*@synthesize contents = _contents;


//These commented lines are made by the compiler when using @synthesize:
- (NSString *)contents
{
    return _contents;
}

- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

@synthesize chosen = _chosen;
@synthesize matched = _matched;
*/

- (int)match:(NSArray *)otherCards;
{
    int score = 0;
    
    for (Card * card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
        score = score + 1;
        }
    }
    
    return score;
}

@end