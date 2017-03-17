//
//  MovieSearchTableViewController.swift
//  ObjectiveCMovieSearch
//
//  Created by Clay Mills on 3/17/17.
//  Copyright © 2017 PineAPPle LLC. All rights reserved.
//

import UIKit

class MovieSearchTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

}
