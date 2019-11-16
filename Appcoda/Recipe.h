//
//  Recipe.h
//  Appcoda
//
//  Created by ihub on 09/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *prepTime;
@property (strong, nonatomic) NSString *imageFile;
@property (strong, nonatomic) NSArray *ingredients;

@end
