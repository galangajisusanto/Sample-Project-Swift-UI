//
//  Employee.swift
//  Sample Project Sharing Session UIKit
//
//  Created by MEKARI on 23/02/23.
//

import Foundation
import SwiftUI

struct Employee {
    let avatar: String
    var name: String
    let job: String
    
    var avatarImage: Image {
        Image(avatar)
    }
}
