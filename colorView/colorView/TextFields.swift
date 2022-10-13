//
//  TextFields.swift
//  colorView
//
//  Created by Illya Gurkov on 13.10.22.
//

import SwiftUI

struct TextFields: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    
    var body: some View {
        TextField("", text: $textValue)
            .frame(width: 50, height: 30)
            .multilineTextAlignment(.center)
            .background(Color.white)
            .padding(.leading, 10)
        
        
    }
    private func checkValue() {
        if let value = Int(textValue),
           (0...100).contains(value) {
            self .value = Double(value)
        }
    }
    
        
}




struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields(textValue: .constant("0"), value: .constant(0))
    }
}
