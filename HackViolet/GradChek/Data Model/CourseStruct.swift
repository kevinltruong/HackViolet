//
//  CourseStruct.swift
//  GradChek
//
//  Created by Kevin L. Truong on 1/30/21.
//

import SwiftUI
 
struct Course: Hashable, Codable, Identifiable {
   
    var id: Int
    var name: String
    var courseNumber: String
    var creditHours: Int
    var preRequisites: String
    var coRequisites: String
}

