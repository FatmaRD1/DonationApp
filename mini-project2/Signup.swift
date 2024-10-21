//
//  Signup.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 01/03/2023.
//

import UIKit

class Signup: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var pass2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //1-get ref to the screen we are going to
        let vc = segue.destination as! Services
        //2-set all attribute in the second screen
        vc.Nname = txtName.text!
    }
    
    
    @IBAction func btnSp(_ sender: Any) {
        let Nname = txtName.text!
        
        let pass = pass2.text!
        let phoneNo = phone.text!
        let Email = email.text!
        
       
        if (Nname.isEmpty || pass.isEmpty || phoneNo.isEmpty || Email.isEmpty ){
           // print("you must enter user name and password")
            showAlert("Error", message:"you must enter your details")
        }
        
        
    }
    func showAlert(_ title:String , message:String ) {
        
        // 1 - Create The Controller
        let alertController = UIAlertController(title:title,
                                                message: message,
                                                preferredStyle: .alert)
        
        // 2 - Create Actions to be added to the  Controller ( create a button)
        let okButton = UIAlertAction(title: "OK", style: .default) { alertAction in
            alertController.dismiss(animated: true)
        }
        // 3 - Add the Action to the alertController
            alertController.addAction(okButton)
        
        // 4 - Show the Alert Controller
            present(alertController, animated: true)
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
