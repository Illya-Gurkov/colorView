//
//  label.swift
//  colorView
//
//  Created by Illya Gurkov on 13.10.22.
//

import SwiftUI

struct label: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 50, height: 80)
        
    }
}

struct LableValue_Previews: PreviewProvider {
    static var previews: some View {
        label(value: 0)
    }
}
