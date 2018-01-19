//
//  TableViewController.swift
//  MedicalApp
//
//  Created by Seena Shafai on 18/01/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var selectedPatient: [(String, String, String, Int, Int)] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return patientList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        selectedPatient = [patientList[indexPath.row]]
        cell.textLabel!.text = selectedPatient[0]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "showDetail", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let destVC = segue.destination as! PatientDetailsViewController
        destVC.patient =
    }
    
}
