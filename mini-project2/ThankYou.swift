//
//  ThankYou.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 09/03/2023.
//

import UIKit

class ThankYou: UIViewController {

    @IBOutlet weak var gifView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        gifView.isHidden = false
        gifView.loadGif(name: "thankyou")
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
