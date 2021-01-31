//
//  ContactData.swift
//  MyContacts
//
//  Created by Kevin L. Truong on 12/8/20.
//  Copyright © 2020 Thanh Truong. All rights reserved.
//

import Foundation
import SwiftUI
 
// Global array of Country structs
var courseStructList = [Course]()
 
public func readCourseDataFiles() {
   
    let courseDataFilename = "CoursesData.json"
   
    let urlOfJsonFileInDocumentDirectory = documentDirectory.appendingPathComponent(courseDataFilename)
 
    do {
        _ = try Data(contentsOf: urlOfJsonFileInDocumentDirectory)
       
        courseStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: courseDataFilename, fileLocation: "Document Directory")
        print("Course Data is loaded from document directory")
       
    } catch {
        courseStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: courseDataFilename, fileLocation: "Main Bundle")
        print("Course Data is loaded from main bundle")
       
    }   // End of do-catch
   
}
