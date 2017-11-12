//
//  ViewController.swift
//  Aging-people
//
//  Created by Stacey Abbott on 11/11/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let people = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension ViewController: UITableViewDataSource {
    
    //determines how many rows we want
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    //determines what to put in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = self.people[indexPath.row]
        
        //variable to determine a random number for age
        let age = arc4random_uniform(95-5) + 5
        //putting the random number in the text label in the row
        cell.detailTextLabel?.text = "\(age) years old"
        return cell
    }
}

