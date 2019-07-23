//
//  LibImage.h
//  CocoaPodLibResourceDemo
//
//  Created by zhm on 2019/2/15.
//

#import <UIKit/UIKit.h>


@interface LibImage : UIImage

/**
通过图片名称，图片bundle所在framework的类名和图片所在bundle 来加载图片
 @param imageName 图片名称
 @param className 图片所在framework中任意一个类的名称
 @param bundleName 图片所在 bundle
 */

+ (UIImage *)imageNamed:(NSString *)imageName className:(NSString *)className bundleName:(NSString *)bundleName;

/**
 通过图片名称，图片所在framework的类名 此时图片直接位于framework bundle下
 @param imageName 图片名称
 @param className 图片所在framework中任意一个类的名称

 */

+ (UIImage *)imageNamed:(NSString *)imageName className:(NSString *)className;


/**
 通过图片名称，图片所在framework的类名 此时图片直接位于framework bundle下
 @param imageName 图片名称
 @param frameworkName 图片所在framework中任意一个类的名称
 
 */

+ (UIImage *)imageNamed:(NSString *)imageName frameworkName:(NSString *)frameworkName;

/**
 通过图片名称，图片bundle所在framework 和 图片所在的bundle 来加载图片
 
 @param imageName 图片名称
 @param frameworkName 框架名称
 @param bundleName bundle 名字
 
 */
+ (UIImage *)imageNamed:(NSString *)imageName framework:(NSString *)frameworkName bundleName:(NSString *)bundleName;

/**
 加载main bundle下的图片
 @param imageName 图片名称
 @param bundleName bundle名称
 */
+ (UIImage *)imageNamed:(NSString *)imageName bundleName:(NSString *)bundleName;

@end

