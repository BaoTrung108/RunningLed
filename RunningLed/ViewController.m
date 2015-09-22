//
//  ViewController.m
//  RunningLed
//
//  Created by trung bao on 22/09/2015.
//  Copyright © Năm 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    CGFloat canLe;
    CGFloat duongKinh;
    CGFloat spaceWidth;
    CGFloat spaceHeight;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    duongKinh=48.0;
    canLe=30.0;
    //[self numberOfHinhandspaceWidth];
    //[self numberOfHinhandspaceHeight];
    [self drawHinh];
   
}
-(void) placeHinhX: (CGFloat) x
              andY: (CGFloat) y
            andtag: (int)tag;
{
    UIImageView* hinh = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Tennis"]];
    hinh.center=CGPointMake(x, y);
    hinh.tag=tag;
    [self.view addSubview:hinh];
}
-(CGFloat) spacebetweenHinhWidth :(int) n {
    return ((self.view.bounds.size.width - 2 * canLe) / (n-1));
}
-(CGFloat) numberOfHinhandspaceWidth {
    bool stop=false;
    int a=3;
    while (stop==false) {
        spaceWidth = [self spacebetweenHinhWidth:a];
        if (spaceWidth < duongKinh) {
            stop=true;
        }
        a++;
    }NSLog(@"\nSo bong nhieu nhat thoa man chieu Width la %d\nVoi khoang trong la %3.2f",a,spaceWidth);
    return a;
}
-(CGFloat) spacebetweenHinhHeight: (int) n
{
    return ((self.view.bounds.size.height-2*canLe)/(n-1));
}
-(CGFloat) numberOfHinhandspaceHeight {
    bool stop=false;
    int a=3;
    while (stop==false) {
        spaceHeight=[self spacebetweenHinhHeight:a];
        if (spaceHeight<duongKinh) {
            stop=true;
        } a++;
    }NSLog(@"\nSo bong nhieu nhat thoa man chieu Hight la %d\nVoi khoang trong la %3.2f",a,spaceHeight);
    return a;
}
- (void) drawHinh {
    int i,j;
    CGFloat hinhWidth= [self numberOfHinhandspaceWidth];
    CGFloat hinhHeight= [self numberOfHinhandspaceHeight];
    for (i=0;i<=hinhWidth;i++) {
        for (j=0; j<=hinhHeight; j++) {
            [self placeHinhX:canLe+i*spaceWidth andY:canLe+j*spaceHeight andtag:i+100];
        }
    }
}
@end
