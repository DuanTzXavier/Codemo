//
//  ViewController.m
//  Codemo
//
//  Created by dtz段天章 on 2018/5/31.
//  Copyright © 2018年 dtz段天章. All rights reserved.
//

#import "ViewController.h"
#import "YouTubeVideoCell.h"

@interface ViewController()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Hello,world";
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:YouTubeVideoCell.self forCellWithReuseIdentifier:(@"HelloCellID")];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HelloCellID" forIndexPath:indexPath];
//    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width, 200);
}


@end
