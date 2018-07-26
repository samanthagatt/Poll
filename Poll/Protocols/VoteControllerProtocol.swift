//
//  VoteControllerProtocol.swift
//  Poll
//
//  Created by Samantha Gatt on 7/26/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

// Everything that conforms to this protocol needs to have a voteController variable
protocol VoteControllerProtocol: class {
    var voteController: VoteController? { get set }
}
