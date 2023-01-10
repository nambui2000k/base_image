import Flutter
import UIKit

public class SwiftBaseImagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "base_image", binaryMessenger: registrar.messenger())
    let instance = SwiftBaseImagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     switch call.method {
        case "getBattery":
        UIDevice.current.isBatteryMonitoringEnabled = true
        result("iOS " + String(UIDevice.current.batteryLevel*100))

        default:
            result(nil)
        }
  }
}
