

#import <UIKit/UIKit.h>

@interface UIView (WCJFrame)

/// < Shortcut for frame.origin.x.
@property (nonatomic, readwrite, assign) CGFloat wcj_left;
/// < Shortcut for frame.origin.y
@property (nonatomic, readwrite, assign) CGFloat wcj_top;
/// < Shortcut for frame.origin.x + frame.size.width
@property (nonatomic, readwrite, assign) CGFloat wcj_right;
/// < Shortcut for frame.origin.y + frame.size.height
@property (nonatomic, readwrite, assign) CGFloat wcj_bottom;

/// < Shortcut for frame.origin.x.
@property (nonatomic, readwrite, assign) CGFloat wcj_x;
/// < Shortcut for frame.origin.y
@property (nonatomic, readwrite, assign) CGFloat wcj_y;
/// < Shortcut for frame.size.width
@property (nonatomic, readwrite, assign) CGFloat wcj_width;
/// < Shortcut for frame.size.height
@property (nonatomic, readwrite, assign) CGFloat wcj_height;

/// < Shortcut for center.x
@property (nonatomic, readwrite, assign) CGFloat wcj_centerX;
///< Shortcut for center.y
@property (nonatomic, readwrite, assign) CGFloat wcj_centerY;

/// < Shortcut for frame.size.
@property (nonatomic, readwrite, assign) CGSize wcj_size;
/// < Shortcut for frame.origin.
@property (nonatomic, readwrite, assign) CGPoint wcj_origin;




@end
