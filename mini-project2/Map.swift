//
//  Map.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 03/03/2023.
//

import UIKit
import CoreLocation
import MapKit

class Map: UIViewController, CLLocationManagerDelegate {
    
    
    //label
    @IBOutlet weak var lblLocation: UILabel!
    
    //pop up Button
    
    @IBOutlet weak var PopUpBtn: UIButton!
    
    //map
    
    @IBOutlet weak var mapView: MKMapView!
    
    //-------------------------
    //slider from
    
    @IBOutlet weak var slider: UISlider!
    //time from label
    
    @IBOutlet weak var timeLabel: UILabel!
    
    // slider to
    
    @IBOutlet weak var slider2: UISlider!
    
    //time to label
    
    @IBOutlet weak var timeLabel2: UILabel!
    
    
    //location button
    @IBAction func startGPS(_ sender: Any) {
        locationManager.startUpdatingLocation()
    }
    
    var locationManager = CLLocationManager()
    var myPosition = CLLocationCoordinate2D()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //slider 1
        // Set the minimum and maximum values of the slider
                slider.minimumValue = 0
                slider.maximumValue = 8
                
            // Set the initial value of the slider to the midpoint
                slider.value = 4
                
            // Call the sliderValueChanged() method to update the label with the initial value
                sliderValueChanged(slider)
        
        
      //slider 2
        // Set the minimum and maximum values of the slider
                slider2.minimumValue = 0
                slider2.maximumValue = 8
                
                // Set the initial value of the slider to the midpoint
                slider2.value = 4
                
                // Call the sliderValueChanged() method to update the label with the initial value
                sliderValueChanged2(slider2)
      
        //-------------------------
        //for the pop up button
        
        
        let optionsClosure = { (action: UIAction) in
            print(action.title)
        }
        
        PopUpBtn.menu = UIMenu(children: [
            UIAction(title: "Clothes", state: .on, handler: optionsClosure),
            UIAction(title: "Shoes", handler: optionsClosure),
            UIAction(title: "Blankets", handler: optionsClosure),
            UIAction(title: "Food", handler: optionsClosure),
            UIAction(title: "Children needs", handler: optionsClosure),
            UIAction(title: "School needs", handler: optionsClosure),
            UIAction(title: "Quran", handler: optionsClosure)
        ])
        
        
            //location 
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last {
            print("Got location\(newLocation.coordinate.latitude),\(newLocation.coordinate.longitude)")
            
            myPosition = newLocation.coordinate
           
            //locationManager.stopUpdatingLocation()
            
            lblLocation.text = "\(newLocation.coordinate.latitude),\(newLocation.coordinate.longitude)"
            
            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            let region = MKCoordinateRegion(center:newLocation.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }
    }
    
    
    
    //slider 2
    @IBAction func sliderValueChanged2(_ sender: UISlider) {
        // Get the selected time from the slider value
               let selectedTime2 = getTimeFromSliderValue(sender.value)
               
               // Update the label with the selected time
               timeLabel2.text = selectedTime2
    }
    
    
    //slider 1
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // Get the selected time from the slider value
               let selectedTime = getTimeFromSliderValue(sender.value)
               
               // Update the label with the selected time
               timeLabel.text = selectedTime
        }
    }

//func for the 2 sliders

    func getTimeFromSliderValue(_ value: Float) -> String {
        // Calculate the selected time from the slider value
        let hours = Int(value)
        let minutes = (Int(value * 60) % 60)
        let amPm = (hours < 2 || hours == 7) ? "AM" : "PM"
        let hourString = (hours < 2) ? String(hours + 10) : String(hours - 2)
        let minuteString = (minutes < 10) ? "0\(minutes)" : String(minutes)
        
        // Return the selected time as a string
        return "\(hourString):\(minuteString) \(amPm)"
    }





   





    
    
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
        



