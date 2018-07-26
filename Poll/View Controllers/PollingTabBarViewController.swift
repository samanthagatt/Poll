//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Calls our function to make sure all the childVCs have the same voteController (after?) it loads
        passVoteControllerToChildViewControllers()
    }
    
    
    // Needs to be given to any childViewControllers of this TabBarViewController that conform to the vote controller protocol
    func passVoteControllerToChildViewControllers() {
        
        // Theoretically there could be no childrenViewControllers of this PollingTBVC so we need to unwrap it
        guard let vcs = self.viewControllers else { return }
        
        // Gives iterates through each of the childVCs in the childVC array of this PollingTBVC
        for vc in vcs {
            
            // If the childVC does conform to the protocol (vc as? VoteControllerProtocol does NOT return nil)
            if let conformingVC = vc as? VoteControllerProtocol {
                
                // Sets the conformingVC's voteController to be the voteController for this PollingTBVC's voteController variable
                conformingVC.voteController = voteController
            }
        }
    }
    
    
    // voteController is an instance of VoteController and can make a new vote
    let voteController = VoteController()

}
