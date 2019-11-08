#import "FlutterDeviceLocalePlugin.h"
#import <flutter_device_locale/flutter_device_locale-Swift.h>

@implementation FlutterDeviceLocalePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterDeviceLocalePlugin registerWithRegistrar:registrar];
}
@end
