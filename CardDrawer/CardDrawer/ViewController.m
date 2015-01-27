//
//  ViewController.m
//  MatchGame
//
//  Created by Test Account on 1/9/15.
//  Copyright (c) 2015 Test Account. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *lastCardLabel;
@property (strong) Card *lastCard;

@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (void)updateLastCardLabel
{
    self.lastCardLabel.text = [NSString stringWithFormat:@"Last Card: %@", self.lastCard.contents];
}

BOOL flag = YES;

- (IBAction)touchCardButton:(UIButton *)sender
{
    if (flag) {
        Card *card = [self.deck drawRandomCard];
        self.lastCard = card;
        [self updateLastCardLabel];
        [sender setBackgroundImage:[UIImage imageNamed:@"card front"]
                          forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
        flag = NO;
        self.flipCount++;
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"card back"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"Flip Card" forState:UIControlStateNormal];
        flag = YES;
        
    }
}
@end
