#import "FlutternativepluginPlugin.h"
#if __has_include(<flutternativeplugin/flutternativeplugin-Swift.h>)
#import <flutternativeplugin/flutternativeplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutternativeplugin-Swift.h"
#endif

@implementation FlutternativepluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutternativepluginPlugin registerWithRegistrar:registrar];
}
@end
