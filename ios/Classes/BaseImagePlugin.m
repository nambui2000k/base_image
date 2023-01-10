#import "BaseImagePlugin.h"
#if __has_include(<base_image/base_image-Swift.h>)
#import <base_image/base_image-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "base_image-Swift.h"
#endif

@implementation BaseImagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBaseImagePlugin registerWithRegistrar:registrar];
}
@end
