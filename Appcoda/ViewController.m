//
//  ViewController.m
//  Appcoda
//
//  Created by ihub on 08/01/19.
//  Copyright © 2019 ecoihub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize namesList,tablevieww;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.imageFile = @"1";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.imageFile = @"2";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 min";
    recipe3.imageFile = @"3";
    recipe3.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Hamburger";
    recipe4.prepTime = @"30 min";
    recipe4.imageFile = @"4";
    recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 min";
    recipe5.imageFile = @"5";
    recipe5.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.imageFile = @"6";
    recipe6.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 min";
    recipe7.imageFile = @"7";
    recipe7.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"White Chocolate Mocha";
    recipe8.prepTime = @"5 min";
    recipe8.imageFile = @"8";
    recipe8.ingredients = [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil];
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.imageFile = @"9";
    recipe9.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 min";
    recipe10.imageFile = @"10";
    recipe10.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];

    
    namesList = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10,  nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        return [namesList count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Show";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    Recipe *det = [namesList objectAtIndex:indexPath.row];
    cell.textLabel.text = det.name;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detail.resipe = [namesList objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detail animated:YES];
}
















@end
