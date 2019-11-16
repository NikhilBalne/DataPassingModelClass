//
//  DetailViewController.m
//  Appcoda
//
//  Created by ihub on 09/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize resipe,mutableArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.recipeName.text = resipe.name;
    self.recipeTime.text = resipe.prepTime;
    self.recipeImage.image = [UIImage imageNamed:resipe.imageFile];
    
    mutableArray = [NSMutableArray new];
    
    for (NSString* ingredient in resipe.ingredients) {
    
        [mutableArray addObject:ingredient];
        
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [mutableArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [mutableArray objectAtIndex:indexPath.row];
    return cell;
}

@end
