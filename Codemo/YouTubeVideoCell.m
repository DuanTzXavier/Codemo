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
    x.backgroundColor = [UIColor greenColor];
    x.translatesAutoresizingMaskIntoConstraints = false;
    return x;
};

UIImageView *(^mUserImageView) (void) =  ^() {
    UIImageView *x = [[UIImageView alloc] init];
    x.backgroundColor = [UIColor blueColor];
    x.translatesAutoresizingMaskIntoConstraints = false;
    return x;
};


UIView *(^mSeparatorView) (void) =  ^() {
    UIView *x = [[UIView alloc] init];
    x.backgroundColor = [UIColor blackColor];
    x.translatesAutoresizingMaskIntoConstraints = false;
    return x;
};

UILabel *(^mTiTleLabel) (void) = ^() {
    UILabel *x = [[UILabel alloc] init];
    x.backgroundColor = [UIColor orangeColor];
    x.translatesAutoresizingMaskIntoConstraints = false;
    return x;
};

UITextView *(^mSubTitleView) (void) = ^() {
    UITextView *x = [[UITextView alloc] init];
    x.backgroundColor = [UIColor cyanColor];
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
    UIImageView *c = mUserImageView();
    UIView *b = mSeparatorView();
    UILabel *d = mTiTleLabel();
    UITextView *e = mSubTitleView();

    [self.contentView addSubview: a];
    [self.contentView addSubview: b];
    [self.contentView addSubview: c];
    [self.contentView addSubview: d];
    [self.contentView addSubview: e];
    NSDictionary *views = NSDictionaryOfVariableBindings(a, b, c);
    
    [self addConstraintsWithVisualFormat:@"H:|-10-[a]-10-|" views:views];
    [self addConstraintsWithVisualFormat:@"H:|-10-[c(44)]-10-|" views:views];
    [self addConstraintsWithVisualFormat:@"V:|-10-[a]-8-[c(44)]-16-[b(1)]|" views:views];
    [self addConstraintsWithVisualFormat:@"H:|[b]|" views:views];
    
    //add top
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:d attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:a attribute:NSLayoutAttributeBottom multiplier:1 constant:8]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:d attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:c attribute:NSLayoutAttributeRight multiplier:1 constant:8]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:d attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:a attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:d attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:d attribute:NSLayoutAttributeHeight multiplier:0 constant:20]];
    
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:e attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:d attribute:NSLayoutAttributeBottom multiplier:1 constant:8]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:e attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:c attribute:NSLayoutAttributeRight multiplier:1 constant:8]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:e attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:a attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:e attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:d attribute:NSLayoutAttributeHeight multiplier:0 constant:20]];

}

- (void) addConstraintsWithVisualFormat:(NSString *) format views:(NSDictionary<NSString *, id> *)views{
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:format options:0 metrics:NULL views:views]];
}
@end
