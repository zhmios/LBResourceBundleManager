//
//  LibImage.m
//  CocoaPodLibResourceDemo
//
//  Created by zhm on 2019/2/15.
//

#import "LibImage.h"
#import "LibBundle.h"

@implementation LibImage

+ (UIImage *)imageNamed:(NSString *)imageName className:(NSString *)className bundleName:(NSString *)bundleName{
    
    LibBundle *bundle = [LibBundle resourceBundleWithClassName:className bundleName:bundleName];
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    
    return image;
}

+ (UIImage *)imageNamed:(NSString *)imageName framework:(NSString *)frameworkName bundleName:(NSString *)bundleName{
    LibBundle *bundle = [LibBundle resourceBundleWithFramework:frameworkName bundleName:bundleName];
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

+ (UIImage *)imageNamed:(NSString *)imageName className:(NSString *)className{
    LibBundle *bundle = [LibBundle getFrameworkBundleWithClassName:className];
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
    
}

+ (UIImage *)imageNamed:(NSString *)imageName frameworkName:(NSString *)frameworkName{
    LibBundle *bundle = [LibBundle getFrameworkBundleWithFramework:frameworkName];
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
    
    
}

+ (UIImage *)imageNamed:(NSString *)imageName bundleName:(NSString *)bundleName{
    
    if (!imageName || !bundleName) {
        NSAssert(!imageName || !bundleName, @"image name 或者 bundle name 为空");
        return nil;
    }
    LibBundle *bundle = [LibBundle getMainBundleWithResourceBundel:bundleName];
     UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    
    return image;
    
}


@end
