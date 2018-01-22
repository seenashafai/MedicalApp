//
//  PatientDetailsViewController.swift
//  MedicalApp
//
//  Created by Seena Shafai on 18/01/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit

class PatientDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var clicked: Int = 1

    
    @IBOutlet weak var editBarButtonOutlet: UIBarButtonItem!
    @IBAction func editBarButton(_ sender: Any)
    {
        clicked += 1
        print(clicked)
        firstNameTextField.isEnabled = true
        surnameTextField.isEnabled = true
        ageTextField.isEnabled = true
        medicalPicker.isUserInteractionEnabled = true
        severityTextField.isEnabled = true
        
        if clicked % 2 == 0
        {
            editBarButtonOutlet.title = "Done"
            firstNameTextField.isEnabled = true
            surnameTextField.isEnabled = true
            ageTextField.isEnabled = true
            medicalPicker.isUserInteractionEnabled = true
            severityTextField.isEnabled = true
        }
        else
        {
            editBarButtonOutlet.title = "Edit"
            firstNameTextField.isEnabled = false
            surnameTextField.isEnabled = false
            ageTextField.isEnabled = false
            medicalPicker.isUserInteractionEnabled = false
            severityTextField.isEnabled = false
            
            populateTuple()
            print(patientList)
            navigationController?.popToRootViewController(animated: true)
        }
        
        
    }
    

    
    //MARK: - Properties
    
    let patient = patientList[selectedIndex]
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var medicalPicker: UIPickerView!
    @IBOutlet weak var severityTextField: UITextField!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return medicalIssueArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return medicalIssueArray[row]
    }

    
    //MARK: - Properties
    var injury: Int = 0
    
    @IBAction func autoFill(_ sender: Any)
    {
        firstNameTextField.text = "Jeff"
        surnameTextField.text = "TheRock"
        ageTextField.text = String(69)
        severityTextField.text = String(5)
        medicalPicker.selectRow(2, inComponent: 0, animated: true)
    }
    

    
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        print("jeff")
    }
    
    private func populateTuple()
    {
        let firstName = String(describing: firstNameTextField.text!)
        let surname = String(describing: surnameTextField.text!)
        let age = Int(ageTextField.text!)
        let severity = Int(severityTextField.text!)
        let medArray = [[String]]()
        let patientDetails = (firstname: firstName, surname: surname, injury: injury, severity: severity, age: age, medArray: medArray )
        patientList.append(patientDetails as! (String, String, Int, Int, Int, [[String]]))
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let firstName = patient.0
        let surname = patient.1
        let issue = patient.2
        let age = patient.3
        let severity = patient.4
        
        firstNameTextField.text = firstName
        surnameTextField.text = surname
        ageTextField.text = String(age)
        severityTextField.text = String(severity)
        medicalPicker.selectRow(issue, inComponent: 0, animated: true)
        
        firstNameTextField.isEnabled = false
        surnameTextField.isEnabled = false
        ageTextField.isEnabled = false
        medicalPicker.isUserInteractionEnabled = false
        severityTextField.isEnabled = false
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
