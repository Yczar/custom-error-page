#import "CustomErrorPagePlugin.h"
#if __has_include(<custom_error_page/custom_error_page-Swift.h>)
#import <custom_error_page/custom_error_page-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_error_page-Swift.h"
#endif

@implementation CustomErrorPagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomErrorPagePlugin registerWithRegistrar:registrar];
}
@end
