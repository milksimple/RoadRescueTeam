//
//  JXProfileViewCell.m
//  RoadRescueTeam
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "JXProfileViewCell.h"

@interface JXProfileViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *accessory;
@property (weak, nonatomic) IBOutlet UISwitch *switchView;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *separator;

@end

@implementation JXProfileViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setType:(JXProfileViewCellType)type {
    _type = type;
    
    switch (type) {
        case JXProfileViewCellTypeRescueTeamInfo:
            self.accessory.hidden = YES;
            self.switchView.hidden = YES;
            self.iconView.image = [UIImage imageNamed:@"profile_info"];
            self.titleLabel.text = @"救援队资料";
            self.separator.hidden = NO;
            break;
            
        case JXProfileViewCellTypeRedbag:
            self.accessory.hidden = NO;
            self.switchView.hidden = YES;
            self.iconView.image = [UIImage imageNamed:@"profile_redbag"];
            self.titleLabel.text = @"我的红包";
            self.separator.hidden = NO;
            break;
            
        case JXProfileViewCellTypeWorkStatus:
            self.accessory.hidden = YES;
            self.switchView.hidden = NO;
            self.iconView.image = [UIImage imageNamed:@"profile_work_status"];
            self.titleLabel.text = @"工作状态";
            self.separator.hidden = YES;
            break;
            
        case JXProfileViewCellTypeSetting:
            self.accessory.hidden = YES;
            self.switchView.hidden = YES;
            self.iconView.image = [UIImage imageNamed:@"profile_setting"];
            self.titleLabel.text = @"设置";
            self.separator.hidden = NO;
            break;
            
        case JXProfileViewCellTypeHelp:
            self.accessory.hidden = YES;
            self.switchView.hidden = YES;
            self.iconView.image = [UIImage imageNamed:@"profile_help"];
            self.titleLabel.text = @"帮助";
            self.separator.hidden = YES;
            break;
            
        default:
            break;
    }
}

+ (NSString *)reuseIdentifier {
    return @"profileViewCell";
}

+ (CGFloat)rowHeight {
    return 44;
}

@end
