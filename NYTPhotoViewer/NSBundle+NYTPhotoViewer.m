//
//  NSBundle+NYTPhotoViewer.m
//  NYTPhotoViewer
//
//  Created by Chris Dzombak on 10/16/15.
//
//

#import "NSBundle+NYTPhotoViewer.h"
#import "NYTPhotosViewController.h"

@implementation NSBundle (NYTPhotoViewer)

+ (instancetype)nyt_photoViewerResourceBundle {
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
#ifdef SWIFTPM_MODULE_BUNDLE
        NSBundle* midBundle = SWIFTPM_MODULE_BUNDLE;
#else
        NSBundle* midBundle = [NSBundle bundleForClass:[NYTPhotosViewController class]];
#endif
        NSString *resourceBundlePath = [midBundle pathForResource:@"NYTPhotoViewer" ofType:@"bundle"];
        resourceBundle = [self bundleWithPath:resourceBundlePath];
    });
    return resourceBundle;
}

@end
