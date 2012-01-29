//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by RJ Hill on 1/29/12.
//  Copyright (c) 2012 omfgp.com. All rights reserved.
//

#import "PsychologistViewController.h"

@interface PsychologistViewController()
@property (nonatomic) int diagnosis;
@end

@implementation PsychologistViewController

@synthesize diagnosis = _diagnosis;

- (void)setAndShowDiagnosis:(int)diagnosis
{
    self.diagnosis = diagnosis;
    // segue
}

- (IBAction)flyingAns
{
    [self setAndShowDiagnosis:85];
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
