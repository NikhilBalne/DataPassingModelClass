//
//  ViewController.h
//  Appcoda
//
//  Created by ihub on 08/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"
#import "DetailViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) NSArray *namesList;

@property (strong, nonatomic) IBOutlet UITableView *tablevieww;

@end

