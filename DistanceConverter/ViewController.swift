//
//  ViewController.swift
//  DistanceConverter
//
//  Created by José Martín Ruiz Pérez on 2/12/18.
//  Copyright © 2018 José Martín Ruiz Pérez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var distance = Distance(miles: 100)
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
        kmTextField.addTarget(self, action: #selector(convertToMiles), for: .editingChanged)
    }
    
    @IBAction func convertToKm(_ sender: Any) {
        if let miles = Double(milesTextField.text!) {
            distance.miles = miles
            kmTextField.text = "\(Int(distance.km))"
        }
    }
    
    @IBAction func convertToMiles(_ sender: Any) {
        if let km = Double(kmTextField.text!) {
            distance.km = km
            milesTextField.text = "\(Int(distance.miles))"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

