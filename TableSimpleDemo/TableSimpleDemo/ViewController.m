//
//  ViewController.m
//  TableSimpleDemo
//
//  Created by livesxu on 2018/9/7.
//  Copyright © 2018年 Livesxu. All rights reserved.
//

#import "ViewController.h"

#import "TableViewSimple.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TableViewSimple *table = [[TableViewSimple alloc]initWithFrame:CGRectMake(0, 0, 200, 500) style:UITableViewStylePlain];
    table.backgroundColor = [UIColor redColor];
    [table addSection:^(TableSimpleSection *section, NSUInteger sectionIndex) {
        
        NSArray *data = @[@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"4",@"5",@"16",@"17",@"18",@"19",@"20"];
        for (NSString *string in data) {
            
            [section addCell:^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
                
                UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"t"];
                if (!cell) {
                    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"t"];
                }
                
                cell.textLabel.text = string;
                
                cell.cellHeight_simple = 44;
                return cell;
            }];
        }
    }];
    
    [self.view addSubview:table];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
