//
//  PatientDetailsViewController.swift
//  MedicalApp
//
//  Created by Seena Shafai on 18/01/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit

class PatientDetailsViewController: UIViewController {

    var patient: [(String, String, String, Int, Int )] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(patient)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
