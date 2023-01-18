import UIKit
import Lottie

class emailSended: UIViewController {
    
    
    @IBOutlet weak var emailSendedAnimation: LottieAnimationView!
    

    @IBOutlet weak var doneHideAnimation: LottieAnimationView!
    
       
    @IBAction func sendAgainButtonPressed(_ sender: Any) {
        
        doneHideAnimation.play()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        emailSendedAnimation.animationSpeed = 1
        emailSendedAnimation.loopMode = .loop
        emailSendedAnimation.play()
        
        doneHideAnimation.animationSpeed = 1
        doneHideAnimation.loopMode = .playOnce
        
    
        
    }
    
}


