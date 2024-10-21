//
//  Services.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 01/03/2023.
//

import UIKit

class Services: UIViewController {
    
    //hello label
    @IBOutlet weak var lblHello: UILabel!
    
    //adintify the var name to include it into this page
    
    //from the signup page
    var Nname=""
    
    //from the login page
    var name = ""
    //by using view did load we will print the name next to Hello word
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHello.text = "Hello \(Nname+name)"

        // Do any additional setup after loading the view.
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
