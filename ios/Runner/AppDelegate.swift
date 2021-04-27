import UIKit
import Flutter
import flutter_downloader
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyC0zF3KuUCuZFVgg_o2z2PQsV5C6ZeDiuw")
    GeneratedPluginRegistrant.register(with: self)
    FlutterDownloaderPlugin.setPluginRegistrantCallback({ registry in
//        if (!registry.hasPlugin("FlutterDownloaderPlugin")) {
           FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "FlutterDownloaderPlugin")!)
//        }
//        GeneratedPluginRegistrant.register(with: registry)
    })
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
