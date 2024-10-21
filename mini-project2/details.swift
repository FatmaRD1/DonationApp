//
//  details.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 03/03/2023.
//

import UIKit

class details: UIViewController {
    
    //image
    @IBOutlet weak var storeImage: UIImageView!
    
    //title
    @IBOutlet weak var lblName: UILabel!
    
    //desc
    @IBOutlet weak var lblDesc: UILabel!
    
    //collected price
    @IBOutlet weak var Collprice: UILabel!
    
    var store:table = table(name: "Syria and Turkey Earthquake Relief Campaign", photo: "earthquake", details: "Your giving provides shelter, food, and treatment to the affected and needy. Your giving eases their suffering.", price: "Collected price:474,796,878")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lblName.text = store.name
        lblDesc.text = store.details
        Collprice.text = store.price
        storeImage.image = UIImage(named: store.photo)
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAction(_ sender: Any) {
        //create the controller
        let alertCT = UIAlertController(title: "Donation!", message: "Enter the amount of donation:", preferredStyle: UIAlertController.Style.alert)
        
        
        //add text fields if needed to alert controller
        alertCT.addTextField(configurationHandler: { ( guestName: UITextField!) -> Void in
            
            guestName.placeholder = "Eg: 10,30,50AED"
        })
        
        //create alert action - CANCEL button
        let CancelAc = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default) { (alert: UIAlertAction!) -> Void in
            
            alertCT.dismiss(animated: true, completion: nil)
        }
        
        
        //add alert action to alert Controller
        
        alertCT.addAction(CancelAc)
        
        
        //create alert action - DONATE button
        let okAc = UIAlertAction(title: "Donate", style: UIAlertAction.Style.default) { (alert: UIAlertAction!) -> Void in
            
            let donationAlert = UIAlertController(title: "Donation completed successfully", message: "Thank you for your donation!", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Done", style: .default, handler: nil)
            
            donationAlert.addAction(okAction)
            
            self.present(donationAlert, animated: true, completion: nil)
            
            alertCT.dismiss(animated: true, completion: nil)
        }
        
        
        //add alert action to alert Controller
        
        alertCT.addAction(okAc)
        
        // display alert action
        present(alertCT, animated: true, completion: nil)
        
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
