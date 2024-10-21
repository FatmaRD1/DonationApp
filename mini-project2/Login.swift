//
//  Login.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 28/02/2023.
//

import UIKit

class Login: UIViewController {

    //username
    @IBOutlet weak var username: UITextField!
    
    //pass
    @IBOutlet weak var passwordText: UITextField!
    
    //login button
    @IBOutlet weak var loginCheck: UIButton!
    
    //switch
    @IBOutlet weak var userSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginCheck(_ sender: Any) {
        let user = username.text!.lowercased()
        let pass = passwordText.text!
        
        if user.isEmpty || pass.isEmpty{
           // print("you must enter user name and password")
            showAlert("Error", message:"you must enter user name and password")
        }else if user != "fatma ramadan" || pass != "fff" {
            //print("user name and password are not correct")
            showAlert("Error", message:"user name and password are not correct")
        }else{
            //go to the main screen
            
        }
        saveUser()
        performSegue(withIdentifier: "service", sender: self)
    }
    
    // altert
    override func viewDidAppear(_ animated: Bool) {
            //when everything appear in the screen
        
        //save user details
        getUser()
        
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
        
    //remeber me swich
    func saveUser(){
        if(userSwitch.isOn){
            let preferences = UserDefaults.standard
            let user = username.text!
            let pass = passwordText.text!
            
            preferences.set(user, forKey: "userName") //save the data into the database
            preferences.set(pass, forKey: "password") //save the data into the database
            
            //showAlert("saved", message: "user information are saved")
            
        }
    }
    
    func getUser(){
        
            let preferences = UserDefaults.standard
        //if not null it'll continue
        guard let user = preferences.object(forKey: "userName") as? String
        else {
            //if null it'll exist the function
            return
        }
       guard let pass = preferences.object(forKey: "password") as? String
        //guard to check if something was null or not null [true or false]
        else {
            //if null it'll exist the function
            return
        }
        username.text = user
        passwordText.text = pass
  
            
        //to take it to the other page
        performSegue(withIdentifier: "service", sender: self)
        }
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //TO GET THE NAME
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let vc = segue.destination as! Services
        // Pass the selected object to the new view controller.
        vc.name = username.text!
    }


}
