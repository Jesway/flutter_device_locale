import Flutter
import UIKit

public class SwiftFlutterDeviceLocalePlugin: NSObject, FlutterPlugin
{
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_device_locale", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterDeviceLocalePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: FlutterResult)
  {
    if(call.method == "deviceLocales")
    {
        let deviceLocales = NSLocale.preferredLanguages;
        
        result(deviceLocales);
    }
    else
    {
        result(FlutterMethodNotImplemented)
    }
  }
}
