//
//  JXProfileViewController.m
//  RoadRescue
//
//  Created by mac on 16/5/19.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "JXProfileViewController.h"
#import "JXProfileHeaderViewCell.h"
#import "JXIncomeViewCell.h"
#import "JXProfileViewCell.h"

@interface JXProfileViewController ()

@end

@implementation JXProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"个人设置";
    self.tableView.backgroundColor = JXGlobalBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([JXProfileViewCell class]) bundle:nil] forCellReuseIdentifier:[JXProfileViewCell reuseIdentifier]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 5;
    }
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) { // header
            JXProfileHeaderViewCell *headerCell = [JXProfileHeaderViewCell headerViewCell];
            return headerCell;
        }
        else if (indexPath.row == 1) { // 收入
            JXIncomeViewCell *incomeCell = [JXIncomeViewCell incomeViewCell];
            return incomeCell;
        }
        else {
            JXProfileViewCell *profileCell = [tableView dequeueReusableCellWithIdentifier:[JXProfileViewCell reuseIdentifier] forIndexPath:indexPath];
            switch (indexPath.row) {
                case 2:
                    profileCell.type = JXProfileViewCellTypeRescueTeamInfo;
                    break;
                    
                case 3:
                    profileCell.type = JXProfileViewCellTypeRedbag;
                    break;
                    
                case 4:
                    profileCell.type = JXProfileViewCellTypeWorkStatus;
                    break;
                    
                default:
                    break;
            }
            return profileCell;
        }
    }
    else {
        JXProfileViewCell *profileCell = [tableView dequeueReusableCellWithIdentifier:[JXProfileViewCell reuseIdentifier] forIndexPath:indexPath];
        switch (indexPath.row) {
            case 0:
                profileCell.type = JXProfileViewCellTypeSetting;
                break;
                
            case 1:
                profileCell.type = JXProfileViewCellTypeHelp;
                break;
                
            default:
                break;
        }
        return profileCell;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return [JXProfileHeaderViewCell rowHeight];
        }
        else if (indexPath.row == 1) {
            return [JXIncomeViewCell rowHeight];
        }
        else {
            return [JXProfileViewCell rowHeight];
        }
    }
    else {
        return [JXProfileViewCell rowHeight];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.01;
    }
    else {
        return 20;
    }
}

@end
