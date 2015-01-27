//
//  Card.h
//  practice
//
//  Created by Test Account on 1/8/15.
//  Copyright (c) 2015 Test Account. All rights reserved.
//

@import Foundation;


@interface Card: NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end