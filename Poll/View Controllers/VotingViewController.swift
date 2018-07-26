//
//  VotingViewController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    // What the button will do every time it is pushed
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        // Unwraps the optional strings the users can input from the text field
        guard let name = nameTextField.text,
            let response = responseTextField.text else {
                return
        }
        
        let currentTime = "\(NSDate().timeIntervalSince1970)"
        
        // Creates an instance of Vote and appends it to the votes array of the voteController every time the button is pushed
        voteController?.create(name: name, response: response, time: currentTime)
        
        // Prints number of votes in votes array to the console whenever the submit button is pushed to see if it's actually adding the input to the votes array
        guard let voteCount = voteController?.votes.count else { return }
        print("\(voteCount) \(currentTime)")
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var voteController: VoteController?

}
