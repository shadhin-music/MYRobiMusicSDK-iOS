//
//  SignInVC.swift
//  Shadhin-BL-Example
//
//  Created by Joy on 29/11/22.
//

import UIKit
import Shadhin_Robi
class SignInVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textField.text = "8801855290761"//"8801744371919"
    }

    @IBAction func onLoginPressed(_ sender: UIButton) {
        
        guard let number = textField.text, !number.isEmpty, number.count  == 13 else {
            print("empty or invalid number")
            return
        }
        sender.isEnabled = false
        
        ShadhinRobi.shared.login(number: number,delegate : self)
    }
    
}
extension SignInVC : ShadhinCoreNotifier{
    func shareContentWithRC(rc code: String) {
        print(code)
    }
    
    func rcError(error: String?) {
        print(error)
    }
    
    func amarTuneError(error: String?) {
        print(error)
    }
    
    func tokenStatus(token isValid: Bool, error: String?) {
        if isValid{
            let home = TabBarVC()
            self.navigationController?.pushViewController(home, animated: true)
        }else{
            print(error)
        }
    }
    
    func patchError(error: String) {
        print(error)
    }
    
    
}
