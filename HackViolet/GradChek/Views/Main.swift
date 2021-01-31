//
//  Main.swift
//  GradChek
//
//  Created by Kevin L. Truong on 1/30/21.
//

import SwiftUI

struct Main: View {
    
    let majors = ["Mathematic", "Computer Engineering", "CMDA", "Computer Science", "Chemistry", "Biology", "Physics"]
    @State private var selectedMajor = 3
    var body: some View {
        ZStack {
            NavigationView {
                VStack(spacing: 70) {
                    Image("gradCheck")
                        .resizable()
                        .frame(width: 300, height: 80)
                    VStack {
                        Text("What is your major?")
                            .font(.title)
                        Picker ("", selection: $selectedMajor) {
                            ForEach (0 ..< majors.count, id: \.self) {
                                Text (self.majors[$0])
                            } // for each
                        }.pickerStyle (WheelPickerStyle())
                    }
                    
                    Button( action: {
                        
                    }) {
                        Image(systemName: "chevron.right")
                    } // Button
                    .frame(width: 100)
                    .padding(10)
                    .background(Color.green.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(5)

                    HStack {
                        Image(systemName: "lightbulb.fill")
                            .foregroundColor(.yellow)
                        Text("Tip: If your current major is undecided, pick any major above to view your progress!")
                    }
                    
                } // VStack
            }
            
        }
        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
