//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by RJ Hill on 1/29/12.
//  Copyright (c) 2012 omfgp.com. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h"

@interface PsychologistViewController()
@property (nonatomic) int diagnosis;
@end

@implementation PsychologistViewController

@synthesize diagnosis = _diagnosis;

- (void)setAndShowDiagnosis:(int)diagnosis
{
    self.diagnosis = diagnosis;
    [self performSegueWithIdentifier:@"ShowDiagnosis" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowDiagnosis"]) {
        [segue.destinationViewController setHappiness:self.diagnosis];
    }else if ([segue.identifier isEqualToString:@"Celebrity"]) {
        [segue.destinationViewController setHappiness:100];
    }else if ([segue.identifier isEqualToString:@"Serious"]) {
        [segue.destinationViewController setHappiness:20];
    }else if ([segue.identifier isEqualToString:@"TV Kook"]) {
        [segue.destinationViewController setHappiness:50];
    }
}

- (IBAction)flyingAns
{
    [self setAndShowDiagnosis:65];
}

- (IBAction)appleAns
{
    [self setAndShowDiagnosis:100];
}

- (IBAction)dragonsAns
{
    [self setAndShowDiagnosis:20];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

@end
