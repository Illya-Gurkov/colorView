//
//  SliderSetyp.swift
//  colorView
//
//  Created by Illya Gurkov on 11.10.22.
//

import SwiftUI

struct SliderSetyp: View {
    @Binding var sliderValue: Double
    @State var textValue: String
    let colorSlider:Color
    
    
    var body: some View {
        HStack{
            label(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...100, step: 1)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
                .tint(colorSlider)
                
            TextFields(textValue: $textValue, value: $sliderValue)
                .onAppear {
                    textValue = ("\(lround(sliderValue))")
                }
            }
        }
}








struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        SliderSetyp(sliderValue: .constant(0), textValue: "", colorSlider: .red)
    }
}
