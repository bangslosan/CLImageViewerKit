//
//  CLAssetCell.m
//
//  Created by sho yakushiji on 2014/01/10.
//  Copyright (c) 2014年 CALACULU. All rights reserved.
//

#import "CLAssetCell.h"

#import "CLImagePickerBundle.h"

@implementation CLAssetCell
{
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (UIImageView*)imageView
{
    return _imageView;
}

- (void)setImage:(UIImage*)image
{
    _imageView.image = image;
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    _selectBtn.selected = selected;
}

- (IBAction)pushedSelectBtn:(id)sender
{
    [self.delegate cellDidPushSelectButton:self];
    
    UIButton *btn = sender;
    CAAnimation *animation = [CLImagePickerBundle selectButtonAnimation:btn.selected];
    
    [CATransaction begin];
    [btn.layer addAnimation:animation forKey:nil];
    [CATransaction commit];
}

@end
