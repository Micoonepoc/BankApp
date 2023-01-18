import UIKit

class MainScreen: UIViewController {
    
    
    @IBOutlet weak var centralView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        centralView.layer.cornerRadius = 20
        
    }
    
    
}
