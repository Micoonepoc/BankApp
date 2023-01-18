import UIKit
import Lottie


class RegisterScreen: UIViewController {
    
    @IBOutlet weak var helloAnimation: LottieAnimationView!
    
    @IBOutlet weak var birthDate: UITextField!
    
    var datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.4, *)  {
                  datePicker.preferredDatePickerStyle = .wheels
        }
        
        createDatePicker()
        
        self.hideKeyboardWhenTappedAround()
        
        helloAnimation.animationSpeed = 1
        helloAnimation.loopMode = .loop
        helloAnimation.play()
    }
    
    func createDatePicker() {
        
        birthDate.textAlignment = .left
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        
        birthDate.inputAccessoryView = toolbar
        
        birthDate.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        birthDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    
}
