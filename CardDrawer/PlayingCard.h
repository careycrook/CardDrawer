//
//  PlayingCard.h
//  practice
//
//  Created by Test Account on 1/9/15.
//  Copyright (c) 2015 Test Account. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

- (void)setSuit:(NSString *)suit;

@end
