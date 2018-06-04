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
    UILabel *label = [[UILabel alloc]initWithFrame: CGRectMake(0, 0, self.view.frame.size.width - 30, self.view.frame.size.height)];
    label.text = @"Home";
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:20];
    self.navigationItem.titleView = label;
    
    [self setupNavBarItem];
    self.navigationController.navigationBar.translucent = false;
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:YouTubeVideoCell.self forCellWithReuseIdentifier:(@"HelloCellID")];
}

- (void) setupNavBarItem {
    UIImage *searchImage = [[UIImage imageNamed:@"search"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [searchImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithImage:searchImage style:UIBarButtonItemStylePlain target:self action:NULL];
    
    UIImage *moreImage = [[UIImage imageNamed:@"more"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *moreItem = [[UIBarButtonItem alloc] initWithImage:moreImage style:UIBarButtonItemStylePlain target:self action:NULL];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:moreItem, searchItem, nil];
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
    int height = (self.view.frame.size.width - 20) * 9 /16;
    return CGSizeMake(self.view.frame.size.width, height + 90);
}


@end
