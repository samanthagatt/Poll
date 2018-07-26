//
//  CombinedViewController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    // MARK: - Navigation

    // Since these embedded views of the Voting and Results VC/TVC are DIFFERENT instances of their respective controllers -- these instances need to have the same voteController as the originals
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "EmbedVoting" || segue.identifier == "EmbedResults" {
            
            // Casts the destination VC (the embedded view) as a VoteControllerProtocol so we can use its voteController variable
            if let destinationVC = segue.destination as? VoteControllerProtocol {
                
                // Assigns voteController with the same voteController of the destinationVCs
                voteController = destinationVC.voteController
            }
        }
        
    }
    
    var voteController: VoteController?
}
