//
//  VoteController.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

class VoteController {
    var votes : [Vote] = []
    
    func create(name: String, response: String) {
        votes.append(Vote(name: name, response: response))
    }
}
