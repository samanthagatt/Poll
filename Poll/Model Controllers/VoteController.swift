//
//  VoteController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

// The vote controller can control when a vote is made and appends it to the votes array
class VoteController {
    
    private(set) var votes : [Vote] = []
    
    func create(name: String, response: String) {
        
        // Could do votes.append(Vote(name: name, response: response)) instead
        // but below is more human readable
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
}
