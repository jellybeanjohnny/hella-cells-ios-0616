//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Matt Amerige on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"

@interface FISHellaMasterTableViewController ()

@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.view.accessibilityIdentifier = @"Table";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1; // stub
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 100; // stub
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
	}
	
	// Adding 1 to the indexpath.row because it is zero-based
	cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row + 1];
	
	return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([sender isKindOfClass:[UITableViewCell class]] &&
			[segue.identifier isEqualToString:@"showNumberDetail"]) {
		UITableViewCell *cell = (UITableViewCell *)sender;
		FISHellaDetailViewController *detailVC = (FISHellaDetailViewController *)segue.destinationViewController;
		detailVC.numberString = cell.textLabel.text;
		
	}
}


@end
