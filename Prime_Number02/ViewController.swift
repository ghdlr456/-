import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var LblA: UILabel!
    @IBOutlet weak var textA: UITextField!

    
    var isPrime = true
    
    @IBAction func Check(_ sender: Any) {
        let Number = Int(textA.text!)
        var isPrime = true
        if Number! == 1 {
            isPrime = false
        }
        
    if Number != 1 && Number != 2 {
        for i in 2 ..< Number! {
            if Number! % i == 0 {
                isPrime = false
      
                }
            }
        }
        
        if isPrime == true {
            LblA.text = "prime number"
        } else {
            LblA.text = "Not Prime number"
        }
        
        }
    
    @IBAction func Reset(_ sender: Any) {
        textA.text = ""
        LblA.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textA.delegate = self
        
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textA.resignFirstResponder()
        return true
    }

}


