//felix [2:29 PM]
import UIKit

extension UIWindow {
    func show(rootViewController: UIViewController, animated: Bool, animationType: String) {
        if animated {
            let animation = CATransition()
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
            animation.type = kCATransitionPush
            animation.subtype = animationType
            animation.duration = 0.4
            self.layer.add(animation, forKey: "transitionViewAnimation")
        } else {
            self.layer.removeAllAnimations()
        }
        //---
        
        self.rootViewController = rootViewController
        self.makeKeyAndVisible()
    }
}
