//
//  CountriesTableTableViewController.swift
//  Countries
//
//  Created by Saulo Garcia on 9/11/20.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    @IBOutlet weak var countryTitleLabel: UILabel!
    @IBOutlet weak var countryTextLabel: UILabel!
    @IBOutlet weak var countryImageView: UIImageView!
}

class CountriesTableTableViewController: UITableViewController {
    let countries = [
        Country(isoCode: "at", name: "Austria"),
        Country(isoCode: "be", name: "Belgium"),
        Country(isoCode: "de", name: "Germany"),
        Country(isoCode: "el", name: "Greece"),
        Country(isoCode: "fr", name: "France"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    // Configure cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as! CountryTableViewCell

        // Customize the controller code in tableView(cellForRowAt:) to make use of the new cell class and its properties:
        let country = countries[indexPath.row]
        cell.countryTitleLabel?.text = country.name
        cell.countryTextLabel?.text = country.isoCode
        cell.countryImageView?.image = UIImage(named: country.isoCode)

        return cell
    }
    
    // Implement the method to return a title according to the section number:
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}

struct Country {
    var isoCode: String
    var name: String
}
