//
//  CourseSelection.swift
//  GradChek
//
//  Created by Kevin L. Truong on 1/30/21.
//

import SwiftUI

struct CourseSelection: View {
    @State var selected: [Course] = []
    
    var body: some View {
        List {
            
            ForEach(courseStructList, id: \.self) { course in
                MultiSelection(name: course.name, isSelected: self.selected.contains(course)) {
                    if self.selected.contains(course) {
                        self.selected.removeAll(where: { $0 == course })
                    }
                    else {
                        self.selected.append(course)
                    }
                }
            }
        }
    }
}

struct CourseSelection_Previews: PreviewProvider {
    static var previews: some View {
        CourseSelection()
    }
}
