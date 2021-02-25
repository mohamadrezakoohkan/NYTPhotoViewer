//
//  NYTPhotoViewerCore.h
//  NYTPhotoViewer
//
//  Created by David Beck on 3/2/16.
//  Copyright © 2016 NYTimes. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for NYTPhotoViewer.
FOUNDATION_EXPORT double NYTPhotoViewerCoreVersionNumber;

//! Project version string for NYTPhotoViewer.
FOUNDATION_EXPORT const unsigned char NYTPhotoViewerCoreVersionString[];

#import "NYTPhotoCaptionView.h"
#import "NYTPhotoDismissalInteractionController.h"
#import "NYTPhotoViewerArrayDataSource.h"
#import "NYTPhotoViewerSinglePhotoDataSource.h"
#import "NYTPhotosOverlayView.h"
#import "NYTPhotosViewController.h"
#import "NYTPhotoTransitionAnimator.h"
#import "NYTPhotoTransitionController.h"
#import "NYTPhotoViewController.h"
#import "NYTScalingImageView.h"

// Protocols
#import "NYTPhoto.h"
#import "NYTPhotoCaptionViewLayoutWidthHinting.h"
#import "NYTPhotoViewerContainer.h"
#import "NYTPhotoViewerDataSource.h"

// Support
#import "NSBundle+NYTPhotoViewer.h"
