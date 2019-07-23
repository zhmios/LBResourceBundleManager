//
//  LibBundle.h
//  CocoaPodLibResourceDemo
//
//  Created by zhm on 2019/2/15.
//

#import <Foundation/Foundation.h>


@interface LibBundle : NSBundle

/**
 获取资源的bundle
 @param className framework中的类名
 @param bundleName 资源bundle的名字
 */

+ (instancetype)resourceBundleWithClassName:(NSString *)className
                               bundleName:(NSString *)bundleName;
/**
 获取资源的bundle,默认bundle为当前类所在的bundle
 @param bundleName 资源bundle的名字
 */
+ (instancetype)resourceBundleWithBundleName:(NSString *)bundleName;

/**
 根据path来加载bundle
 获取资源的bundle
 @param frameworkName 为资源所在的framework的名字
 @param bundleName 资源bundle的名字
 */
+ (instancetype)resourceBundleWithFramework:(NSString *)frameworkName
                               bundleName:(NSString *)bundleName;

/**
 这个方法会直接给出 framework的bundle
 @param className framework中的任意类名
 */
+ (instancetype)getFrameworkBundleWithClassName:(NSString *)className;

/**
 这个方法会直接给出 framework的bundle
 @param frameworkName framework的名称
 */
+ (instancetype)getFrameworkBundleWithFramework:(NSString *)frameworkName;

/**
 加载main bundle下 资源bundle
 @param bundleName 资源bundle名字
 */
+ (instancetype)getMainBundleWithResourceBundel:(NSString *)bundleName;

@end


