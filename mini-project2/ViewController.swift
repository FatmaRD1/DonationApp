//
//  ViewController.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 27/02/2023.
//

import UIKit
import NotificationCenter

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //notification / declare a variable called center:
        let center = UNUserNotificationCenter.current()
        //we're looking for alert, sound and badge and were putting them in an array
        center.requestAuthorization(options: [.alert,.badge,.sound]) { granted, error in
            
            //here we can eaither get true, false or an error in the granted  ; which is a boolean ;
            //incase we got an error we want to print it;
            if let error = error {
                print(error.localizedDescription)
            } else {
                center.delegate = self
                
            }
        }
    }
    
    //to send notofication by the login button
    @IBAction func nofLog(_ sender: Any) {
        send()
    }
    
    //to send notofication by the signup button
    @IBAction func nofSign(_ sender: Any) {
        send()
    }
    
    func send(){
        
        //1- create the notification content and specify the payload of the notification
        let content = UNMutableNotificationContent()
        
        content.title = "Hope House"
        //content.subtitle = "Dont forget to donation"
        content.body = "Don't forget to donate."
        content.badge = 1
        
        
        // 2 - Set the trigger when to send the notificaion
        // local nofificaiton can be triffered based on
        // we have three types of notification triggers
        // a - elapsed time interval
        //TimeInterval is the amount of time in which it'll sent the notification ex: we'll 7 sec, how ever here i didnt repeat it i setted it as false
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 7, repeats: false)
        
        
        //3- create notification request
        let id = "notify1"
        //to handle or mange the notification by this ID
        let request = UNNotificationRequest(identifier: id, content: content, trigger: trigger)
        
        //we need to pass these in the request which is the identifer, content were gonna and the trigger[when this notification will be fired]
        
        // b - specific date and time--> set notification based on date and time;
        // c - Location
        
        
        //4- ADD THE REQUEST TO THE NOTIFICATION CENTER
        let center = UNUserNotificationCenter.current()
        center.add(request) {error in
            if let error = error{
                //to print the error
                print(error.localizedDescription)
            }
    }
}
    
    //so what will happen is that if u click on the button ur app will still send u notification even though your app is still running
     func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
         
         completionHandler([.banner, .sound])
     }

    
    
    
        //alert - notification
    override func viewDidAppear(_ animated: Bool) {
            //when everything appear in the screen
            showAlert("Hope House", message: "Your donation can be the light that shines in someone's darkest moments. Give today and help spread hope and love to those in need.")
        }
    
    func showAlert(_ title:String , message:String ) {
        
        // 1 - Create The Controller
        let alertController = UIAlertController(title:title,
                                                message: message,
                                                preferredStyle: .alert)
        
        // 2 - Create Actions to be added to the  Controller ( create a button)
        let okButton = UIAlertAction(title: "Thank you", style: .default) { alertAction in alertController.dismiss(animated: true)
   
            
        }
        // 3 - Add the Action to the alertController
        alertController.addAction(okButton)
        
        // 4 - Show the Alert Controller
        present(alertController, animated: true)
    }
    
    
}
