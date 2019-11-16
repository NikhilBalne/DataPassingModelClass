//
//  DetailViewController.h
//  Appcoda
//
//  Created by ihub on 09/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface DetailViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIImageView *recipeImage;
@property (strong, nonatomic) IBOutlet UILabel *recipeName;
@property (strong, nonatomic) IBOutlet UILabel *recipeTime;

@property (strong, nonatomic) Recipe *resipe;

@property (strong, nonatomic) NSMutableArray *mutableArray;

@end
