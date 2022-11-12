import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
private var textField = UITextField()
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    makeSecureYourScreen()
    GeneratedPluginRegistrant.register(with: self)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
   private func makeSecureYourScreen() {
        if (!self.window.subviews.contains(textField)) {
            self.window.addSubview(textField)
            textField.centerYAnchor.constraint(equalTo: self.window.centerYAnchor).isActive = true
            textField.centerXAnchor.constraint(equalTo: self.window.centerXAnchor).isActive = true
            self.window.layer.superlayer?.addSublayer(textField.layer)
            textField.layer.sublayers?.first?.addSublayer(self.window.layer)
        }
    }


}
