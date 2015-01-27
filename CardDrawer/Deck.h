//
//  Deck.h
//  practice
//
//  Created by Test Account on 1/8/15.
//  Copyright (c) 2015 Test Account. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
