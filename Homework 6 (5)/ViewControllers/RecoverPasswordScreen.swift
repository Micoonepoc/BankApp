import UIKit
import Lottie

class RecoverPasswordScreen: UIViewController {
    
    
    
    @IBOutlet weak var lockAnimation: LottieAnimationView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lockAnimation.animationSpeed = 1
        
        lockAnimation.loopMode = .loop
        
        lockAnimation.play()
        
        self.hideKeyboardWhenTappedAround() 
     
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
