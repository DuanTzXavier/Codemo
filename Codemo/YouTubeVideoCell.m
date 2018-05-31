//
//  YouTubeVideoCell.m
//  Codemo
//
//  Created by dtz段天章 on 2018/5/31.
//  Copyright © 2018年 dtz段天章. All rights reserved.
//

#import "YouTubeVideoCell.h"

@interface YouTubeVideoCell()
@end

@implementation YouTubeVideoCell

UIImageView *(^mVideoThumbnailView) (void) =  ^() {
    UIImageView *x = [[UIImageView alloc] init];
    x.translatesAutoresizingMaskIntoConstraints = false;
    return x;
};

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupCell];
    }
    return self;
    
}

- (void) setupCell {
    UIImageView *a = mVideoThumbnailView();
    [self.contentView addSubview: a];
//    a.frame = CGRectMake(0, 0, 200, 100);
    NSDictionary *views = NSDictionaryOfVariableBindings(a);
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[a]-10-|" options:0 metrics:NULL views:views]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[a]-10-|" options:0 metrics:NULL views:views]];
    a.backgroundColor = [UIColor greenColor];
    
}

@end
