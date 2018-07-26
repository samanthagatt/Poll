//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

    // Called right before the view shows on the user's screen
    override func viewWillAppear(_ animated: Bool) {
        self.viewWillAppear(animated)
        
        // Updates the tableView -- so it will show any new notes added to the notes array from another tab / view
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    // Returns a number that tells the table view how many rows of cells to make
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Returns the number of votes in votes array UNLESS the voteController is nil -- then return 0 instead
        return voteController?.votes.count ?? 0
    }

    
    // Returns a cell that tells the table view how each cell should look
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath)
        
        // Creates vote constant that corresponds with the the index path row UNLESS it's nil -- then it just returns an empty cell
        guard let vote = voteController?.votes[indexPath.row] else { return cell }
        
        // Sets the cell's text on the left and the right to be the vote's name and response respectively
        cell.textLabel?.text = vote.name
        cell.detailTextLabel?.text = vote.response

        return cell
    }



    
    var voteController: VoteController?

}
