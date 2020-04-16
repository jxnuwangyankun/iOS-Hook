#line 1 "/Users/wangyankun/Documents/tmp/HookHID/HookSpringBoard/HookSpringBoard/HookSpringBoard.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>
#import <objc/message.h>
#import <dlfcn.h>
#import "IOHIDEvent.h"
#import "IOHIDEventSystem.h"
#import "IOHIDEventSystemClient.h"
#import "IOHIDUserDevice.h"
#import "IOHIDEventSystem.h"
#import "IOHIDEvent7.h"
#import "IOHIDEventTypes7.h"
#import "IOHIDEventSystemConnection.h"
#include <substrate.h>
#include <substrate.h>


static void writeFile(NSString* filepath,NSString* content,bool isNewOne)
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
     NSString *path = filepath ? filepath : @"/tmp/tNew.txt" ;
    if (isNewOne || ![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        [fileManager createFileAtPath:path contents:[@"" dataUsingEncoding: NSUTF8StringEncoding] attributes:nil];
    }
    NSFileHandle *fielHandle = [NSFileHandle fileHandleForUpdatingAtPath:path];
    [fielHandle seekToEndOfFile];  
    NSData* stringData  = [ [content stringByAppendingString:@"\n"] dataUsingEncoding:NSUTF8StringEncoding];
    [fielHandle writeData:stringData]; 
}












































































































































































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIDevice; 
static NSString * (*_logos_orig$_ungrouped$UIDevice$systemVersion)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$systemVersion(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$localizedModel)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$localizedModel(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); 

#line 205 "/Users/wangyankun/Documents/tmp/HookHID/HookSpringBoard/HookSpringBoard/HookSpringBoard.xm"



static NSString * _logos_method$_ungrouped$UIDevice$systemVersion(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSDate *datenow = [NSDate date];
    NSString *data = [NSString stringWithFormat:@"%@",datenow];
    
    writeFile(@"/tmp/t3.txt",data,true);
    NSString *fakeVer = @"11.1.1";
    return fakeVer;
}

static NSString * _logos_method$_ungrouped$UIDevice$localizedModel(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return @"mmmmm";
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(systemVersion), (IMP)&_logos_method$_ungrouped$UIDevice$systemVersion, (IMP*)&_logos_orig$_ungrouped$UIDevice$systemVersion);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(localizedModel), (IMP)&_logos_method$_ungrouped$UIDevice$localizedModel, (IMP*)&_logos_orig$_ungrouped$UIDevice$localizedModel);} }
#line 224 "/Users/wangyankun/Documents/tmp/HookHID/HookSpringBoard/HookSpringBoard/HookSpringBoard.xm"
