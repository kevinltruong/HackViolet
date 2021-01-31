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
   
    var hasFiles = false
    let courseDataFilename = "CoursesData.json"
   
    let urlOfJsonFileInDocumentDirectory = documentDirectory.appendingPathComponent(courseDataFilename)
 
    do {
        _ = try Data(contentsOf: urlOfJsonFileInDocumentDirectory)
       
        hasFiles = true
       
        courseStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: courseDataFilename, fileLocation: "Document Directory")
        print("Course Data is loaded from document directory")
       
    } catch {
        hasFiles = false
        courseStructList = decodeJsonFileIntoArrayOfStructs(fullFilename: courseDataFilename, fileLocation: "Main Bundle")
        print("Course Data is loaded from main bundle")
       
//        for course in countryStructList {
//            let selectedCountryAttributesForSearch = "\(country.id)|\(country.name)|\(country.alpha2code)|\(country.capital)|\(country.languages)|\(country.currency)"
//
//            orderedSearchableCountriesList.append(selectedCountryAttributesForSearch)
//        }
       
    }   // End of do-catch
   
    
//    if hasFiles {
//        let urlOfFileInDocDir = documentDirectory.appendingPathComponent("OrderedSearchableCountriesList")
//
//        // Instantiate an NSArray object and initialize it with the contents of the file
//        //use NSArray to get the content of the file, it's optional ( since "?")
//        let arrayFromFile: NSArray? = NSArray(contentsOf: urlOfFileInDocDir)
//
//        if let arrayObtained = arrayFromFile {
//            // Store the unique id of the created array into the global variable
//            //type cast NSArray to type of String array, "!" is to force it because the value is optional
//            orderedSearchableCountriesList = arrayObtained as! [String]
//        } else {
//            print("OrderedSearchableCountriesList file is not found in document directory on the user's device!")
//        }
//    }
}
 
///*
// ********************************************************
// MARK: - Write Countries Data Files to Document Directory
// ********************************************************
// */
//public func writeCountriesDataFiles() {
//    /*
//    --------------------------------------------------------------------------
//    Write countryStructList into CountriesData.json file in Document Directory
//    --------------------------------------------------------------------------
//    */
//
//    // Obtain URL of the JSON file into which data will be written
//    let urlOfJsonFileInDocumentDirectory: URL? = documentDirectory.appendingPathComponent("CountriesData.json")
//
//    // Encode countryStructList into JSON and write it into the JSON file
//    let encoder = JSONEncoder()
//    if let encoded = try? encoder.encode(countryStructList) {
//        do {
//            try encoded.write(to: urlOfJsonFileInDocumentDirectory!)
//        } catch {
//            fatalError("Unable to write encoded countries data to document directory!")
//        }
//    } else {
//        fatalError("Unable to encode countries data!")
//    }
//
//    /*
//    ------------------------------------------------------
//    Write orderedSearchableCountriesList into a file named
//    OrderedSearchableCountriesList in Document Directory
//    ------------------------------------------------------
//    */
//
//    // Obtain URL of the file in document directory on the user's device
//    let urlOfFileInDocDirectory = documentDirectory.appendingPathComponent("OrderedSearchableCountriesList")
//
//    /*
//    Swift Array does not yet provide the 'write' function, but NSArray does.
//    Therefore, typecast the Swift array as NSArray so that we can write it.
//    */
//
//    /*
//     Note:
//     as: is a type casting to cast, convert orderdSearchableCountriesList to NSArray in order to use write
//     function
//     atomically: true -> dont write it directly with the name provided
//     */
//    (orderedSearchableCountriesList as NSArray).write(to: urlOfFileInDocDirectory, atomically: true)
//
//    /*
//     The flag "atomically" specifies whether the file should be written atomically or not.
//
//     If flag atomically is TRUE, the file is first written to an auxiliary file, and
//     then the auxiliary file is renamed as OrderedSearchableCountriesList.
//
//     If flag atomically is FALSE, the file is written directly to OrderedSearchableCountriesList.
//     This is a bad idea since the file can be corrupted if the system crashes during writing.
//
//     The TRUE option guarantees that the file will not be corrupted even if the system crashes during writing.
//     */
//}
