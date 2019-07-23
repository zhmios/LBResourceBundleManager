//
//  LibBundle.m
//  CocoaPodLibResourceDemo
//
//  Created by zhm on 2019/2/15.
//

#import "LibBundle.h"

@implementation LibBundle

+ (instancetype)resourceBundleWithClassName:(NSString *)className
                               bundleName:(NSString *)bundleName{
    if (!className) {
        NSAssert(!className, @"获取资源路径bundle时，类名为空");
        return nil;
    }
    NSBundle *frameworkBundle = [NSBundle bundleForClass:NSClassFromString(className)];
    if (!frameworkBundle) {
        NSAssert(!className, @"获取资源路径bundle时，获取framework的bundle为空");
        return nil;
    }
    NSURL *frameworkBundleUrl = [frameworkBundle URLForResource:bundleName withExtension:@"bundle"];
    if (!frameworkBundleUrl) {
        NSAssert(!className, @"获取资源路径bundle时，获取frameworkbundleURL为空");
        return nil;
    }
    return [self bundleWithURL:frameworkBundleUrl];
    
}

+ (instancetype)resourceBundleWithBundleName:(NSString *)bundleName{

    return [self resourceBundleWithClassName:NSStringFromClass(self) bundleName:bundleName];
    
}

+ (instancetype)resourceBundleWithFramework:(NSString *)frameworkName
                               bundleName:(NSString *)bundleName{
    
    NSURL *frameworksURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    if (!frameworkName) {
        
         NSAssert(!frameworkName, @"获取资源路径bundle时，frameworkName为空");
    }
    NSURL* libFrameworkURL = [frameworksURL URLByAppendingPathComponent:frameworkName];
    libFrameworkURL = [libFrameworkURL URLByAppendingPathExtension:@"framework"];
    NSBundle *libFrameworkBundle = [NSBundle bundleWithURL:libFrameworkURL];
    if (!libFrameworkBundle) {
          NSAssert(!libFrameworkBundle, @"获取资源路径bundle时，获取framework的bundle为空");
    }
    NSURL* libResourceBundleUrl = [libFrameworkBundle URLForResource:bundleName withExtension:@"bundle"];
    
    return [self bundleWithURL:libResourceBundleUrl];
    
}

+ (instancetype)getFrameworkBundleWithClassName:(NSString *)className{
    
    if (!className) {
        NSAssert(!className, @"获取资源路径bundle时，类名为空");
        return nil;
    }
    LibBundle *frameworkBundle = (LibBundle *)[self bundleForClass:NSClassFromString(className)];
    
    return frameworkBundle;
    
}


+ (instancetype)getFrameworkBundleWithFramework:(NSString *)frameworkName{
    
    NSURL *frameworksURL = [[NSBundle mainBundle] URLForResource:@"Frameworks" withExtension:nil];
    if (!frameworkName) {
        
        NSAssert(!frameworkName, @"获取资源路径bundle时，frameworkName为空");
    }
    NSURL* libFrameworkURL = [frameworksURL URLByAppendingPathComponent:frameworkName];
    libFrameworkURL = [libFrameworkURL URLByAppendingPathExtension:@"framework"];
    LibBundle *libFrameworkBundle = [self bundleWithURL:libFrameworkURL];
    return libFrameworkBundle;
}

+ (instancetype)getMainBundleWithResourceBundel:(NSString *)bundleName{
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSURL *resourceUrl = [mainBundle URLForResource:bundleName withExtension:@"bundle"];
    return [self bundleWithURL:resourceUrl];
}

@end
