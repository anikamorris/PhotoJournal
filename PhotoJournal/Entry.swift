//
//  Entry.swift
//  PhotoJournal
//
//  Created by Anika Morris on 7/11/20.
//  Copyright © 2020 HazeStudio. All rights reserved.
//

import Foundation

struct Entry: Codable {
    let imageData: String
    let textEntry: String
    let timeStamp: String
}
