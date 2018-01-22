//
//  AddPatientViewController.swift
//  MedicalApp
//
//  Created by Seena Shafai on 16/01/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit

class AddPatientViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //MARK: - Properties
    var injury: Int = 0
    

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var medicalPickerView: UIPickerView!
    @IBOutlet weak var severityTextField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBAction func autoFill(_ sender: Any)
    {
        firstNameTextField.text = "Jeff"
        surnameTextField.text = "TheRock"
        ageTextField.text = String(69)
        severityTextField.text = String(5)
        medicalPickerView.selectRow(2, inComponent: 0, animated: true)
    }
    
    @IBAction func doneAction(_ sender: Any)
    {

        populateTuple()
        print(patientList)
        navigationController?.popToRootViewController(animated: true)
    }
    
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        injury = row
        print(injury)
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
