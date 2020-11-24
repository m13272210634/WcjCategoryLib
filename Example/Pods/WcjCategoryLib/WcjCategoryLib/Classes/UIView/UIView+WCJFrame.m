
#import "UIView+WCJFrame.h"

@implementation UIView (WCJFrame)

- (void)setWcj_x:(CGFloat)wcj_x
{
    CGRect frame = self.frame;
    frame.origin.x = wcj_x;
    self.frame = frame;
}


- (CGFloat)wcj_x
{
    return self.frame.origin.x;
}




- (void)setWcj_y:(CGFloat)wcj_y
{
    CGRect frame = self.frame;
    frame.origin.y = wcj_y;
    self.frame = frame;
}
- (CGFloat)wcj_y
{
    return self.frame.origin.y;
}




- (void)setWcj_centerX:(CGFloat)wcj_centerX
{
    CGPoint center = self.center;
    center.x = wcj_centerX;
    self.center = center;
}
- (CGFloat)wcj_centerX
{
    return self.center.x;
}



- (void)setWcj_centerY:(CGFloat)wcj_centerY
{
    CGPoint center = self.center;
    center.y = wcj_centerY;
    self.center = center;
}
- (CGFloat)wcj_centerY
{
    return self.center.y;
}




- (void)setWcj_width:(CGFloat)wcj_width
{
    CGRect frame = self.frame;
    frame.size.width = wcj_width;
    self.frame = frame;
}
- (CGFloat)wcj_width
{
    return self.frame.size.width;
}





- (void)setWcj_height:(CGFloat)wcj_height
{
    CGRect frame = self.frame;
    frame.size.height = wcj_height;
    self.frame = frame;
}
- (CGFloat)wcj_height
{
    return self.frame.size.height;
}





- (void)setWcj_size:(CGSize)wcj_size
{
    CGRect frame = self.frame;
    frame.size = wcj_size;
    self.frame = frame;
}
- (CGSize)wcj_size
{
    return self.frame.size;
}





- (void)setWcj_origin:(CGPoint)wcj_origin
{
    CGRect frame = self.frame;
    frame.origin = wcj_origin;
    self.frame = frame;
}
- (CGPoint)wcj_origin
{
    return self.frame.origin;
}


- (void)setWcj_top:(CGFloat)wcj_top
{
    CGRect frame = self.frame;
    frame.origin.y = wcj_top;
    self.frame = frame;
}
- (CGFloat)wcj_top
{
    return self.frame.origin.y;
}


- (void)setWcj_left:(CGFloat)wcj_left
{
    CGRect frame = self.frame;
    frame.origin.x = wcj_left;
    self.frame = frame;
}
- (CGFloat)wcj_left
{
    return self.frame.origin.x;
}


- (void)setWcj_bottom:(CGFloat)wcj_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = wcj_bottom - frame.size.height;
    self.frame = frame;
}
- (CGFloat)wcj_bottom{
    return self.frame.origin.y + self.frame.size.height;
}


- (void)setWcj_right:(CGFloat)wcj_right
{
    CGRect frame = self.frame;
    frame.origin.x = wcj_right - frame.size.width;
    self.frame = frame;
}
- (CGFloat)wcj_right{
    return self.frame.origin.x + self.frame.size.width;
}

@end
