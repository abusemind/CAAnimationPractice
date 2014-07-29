//
//  ViewController.m
//  CAAnimationLearn
//
//  Created by Fei, Michael (Enterprise Infrastructure) on 7/29/14.
//  Copyright (c) 2014 Morgan Stanley. All rights reserved.
//

#import "ViewController.h"

static NSString * const animationCellReuseIdentifier = @"animationCell";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *animations;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.animations = @[@"Basic", @"Key Frame", @"Along a Path", @"Animation Group"];
	
    
    self.animationsTable.delegate = self;
    self.animationsTable.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDS
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.animations count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Animation Types";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:animationCellReuseIdentifier];
    
    if(cell){
        cell.textLabel.text = self.animations[indexPath.row];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.15 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        cell.selected = NO;
    });
   
    
    NSString *segue = self.animations[indexPath.row];
    [self performSegueWithIdentifier:segue sender:self];
}

@end
