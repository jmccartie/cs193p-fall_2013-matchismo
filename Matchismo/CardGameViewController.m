//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Jon McCartie on 8/14/14.
//  Copyright (c) 2014 Eruva.com. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck || [_deck isEmpty]) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCard:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:[self.deck drawRandomCard].contents forState:UIControlStateNormal];
    }
    self.flipCount++;

}

@end
