//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"

@interface FISPrimeTimeTableViewController ()

@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityIdentifier = @"table";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reusableIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"%lu",(long)[self primeNumber:indexPath.row+1]];
    return cell;
}



//-(NSMutableArray *)generatePrimes:(NSInteger)prime{
//    NSMutableArray *primes  = [[NSMutableArray alloc]init];
//    NSUInteger upperLimit = prime^2;
//
//    [primes addObject:[NSDecimalNumber numberWithInt:2]];
//    for(int i=3; i < upperLimit; i++)
//    {
//        bool prime=true;
//        for(int j=0;j<primes.count && (((NSDecimalNumber *)primes[j]).integerValue*((NSDecimalNumber *)primes[j]).integerValue) <= i;j++)
//        {
//            if(i % (((NSDecimalNumber *)primes[j]).integerValue) == 0)
//            {
//                prime=false;
//                break;
//            }
//        }
//        if(prime)
//        {
//            [primes addObject:[NSDecimalNumber numberWithInt:i]];
//        }
//    }
//    NSLog(@"%@", primes);
//    return primes;
//}


-(NSInteger)primeNumber:(NSInteger)prime{
    
    //NSInteger currentNumber = 5;
//    if (prime == 1) {
//return 2;
//    } else if (prime == 2) {
//        return 3;
//    }
    
    NSMutableArray *primes  = [[NSMutableArray alloc]init];
    NSUInteger upperLimit = 18000;
    
    [primes addObject:[NSDecimalNumber numberWithInt:2]];
    for(int i=2; i < upperLimit; i++)
    {
        bool prime=true;
        for(int j=0;j<primes.count && (((NSDecimalNumber *)primes[j]).integerValue*((NSDecimalNumber *)primes[j]).integerValue) <= i;j++)
        {
            if(i % (((NSDecimalNumber *)primes[j]).integerValue) == 0)
            {
                prime=false;
                break;
            }
        }
        if(prime)
        {
            [primes addObject:[NSDecimalNumber numberWithInt:i]];
        }
    }
    NSInteger result = [primes[prime]integerValue]+5000;
    return result;
}



/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
@end
