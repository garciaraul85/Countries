//
//  CountriesTableTableViewController.swift
//  Countries
//
//  Created by Saulo Garcia on 9/11/20.
//

import UIKit

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

        let country = countries[indexPath.row]
        cell.textLabel?.text = country.name
        // show a detail text and an image (all cells have an optional imageView that is created when the property is accessed):
        cell.detailTextLabel?.text = country.isoCode
        cell.imageView?.image = UIImage(named: country.isoCode)

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
