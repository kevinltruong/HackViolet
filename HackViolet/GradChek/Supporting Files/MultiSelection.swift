//
//  MultiSelection.swift
//  GradChek
//
//  Created by Kevin L. Truong on 1/30/21.
//

import SwiftUI

struct MultiSelection: View {
    var name: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.name)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark.square.fill")
                }
            }
        }
    }
}
