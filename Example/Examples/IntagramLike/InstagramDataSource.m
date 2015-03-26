//
//  InstagramDataSource.m
//  XLForm ( https://github.com/xmartlabs/XLSlidingContainer )
//
//  Copyright (c) 2015 Xmartlabs ( http://xmartlabs.com )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "InstagramDataSource.h"
#import "ScrollViewController.h"
#import "CollectionViewLayout.h"
#import "CollectionViewController.h"

@implementation InstagramDataSource

- (UIViewController <XLSliderController>*) getUpperControllerFor:(XLSliderViewController *)sliderViewController{
    return [[ScrollViewController alloc] init];
}
- (UIViewController <XLSliderController>*) getLowerControllerFor:(XLSliderViewController *)sliderViewController{
    CollectionViewLayout *collectionViewLayout = [[CollectionViewLayout alloc] init];
    CollectionViewController* controller = [[CollectionViewController alloc] initWithCollectionViewLayout:collectionViewLayout];
    return controller;
}

-(XLSliderContainerMovementType *)getMovementTypeFor:(XLSliderViewController *)sliderViewController{
    return XLSliderContainerMovementTypePush;
}

-(UIView *)getDragView{
    NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"Exampledragview2" owner:nil options:nil];
    return [nibContents lastObject];
}

@end
