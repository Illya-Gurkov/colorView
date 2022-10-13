//
//  Views.swift
//  colorView
//
//  Created by Illya Gurkov on 13.10.22.
//

import SwiftUI

struct Views: View {
     let colorRed: Double
     let colorGreen: Double
     let colorBlue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 150)
            .cornerRadius(30)
            .foregroundColor(Color(red: colorRed/100, green: colorGreen/100, blue: colorBlue/100,opacity: 2))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white,lineWidth: 5))
    }
}







struct Views_Previews: PreviewProvider {
    static var previews: some View {
        Views(colorRed: 10, colorGreen: 10, colorBlue: 10)
    }
}
