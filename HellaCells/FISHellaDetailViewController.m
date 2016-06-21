//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Matt Amerige on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"

@interface FISHellaDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end

@implementation FISHellaDetailViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.numberLabel.text = self.numberString;
}



@end
