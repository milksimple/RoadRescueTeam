//
//  JXProfileViewCell.h
//  RoadRescueTeam
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 mac. All rights reserved.
//

typedef enum {
    JXProfileViewCellTypeRescueTeamInfo, // 救援队
    JXProfileViewCellTypeRedbag, // 红包
    JXProfileViewCellTypeWorkStatus, // 工作状态
    JXProfileViewCellTypeSetting, // 设置
    JXProfileViewCellTypeHelp // 帮助
} JXProfileViewCellType;

#import <UIKit/UIKit.h>

@interface JXProfileViewCell : UITableViewCell

@property (nonatomic, assign) JXProfileViewCellType type;

+ (NSString *)reuseIdentifier;

@property (nonatomic, copy) NSString *title;

+ (CGFloat)rowHeight;

@end
