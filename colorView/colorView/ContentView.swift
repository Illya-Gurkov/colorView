//
//  ContentView.swift
//  colorView
//
//  Created by Illya Gurkov on 11.10.22.
//

import SwiftUI


struct ContentView: View {
    @State var sliderRedValue = Double.random(in: 0...100)
    @State var sliderGreenValue = Double.random(in: 0...100)
    @State var sliderBlueValue = Double.random(in: 0...100)
    
    
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            
            VStack {
                Views(colorRed: sliderRedValue, colorGreen: sliderGreenValue, colorBlue: sliderBlueValue)
                Views(colorRed: sliderRedValue, colorGreen: sliderGreenValue, colorBlue: sliderBlueValue)
                SliderSetyp(sliderValue: $sliderRedValue, textValue: String(sliderRedValue), colorSlider: .red)
                SliderSetyp(sliderValue: $sliderGreenValue, textValue: String(sliderGreenValue), colorSlider: .green)
                SliderSetyp(sliderValue: $sliderBlueValue, textValue: String(sliderBlueValue), colorSlider: .blue)
                
                Button("Save") {
                    
                }
                
                
            }
            .padding()
            //Spacer()
        }
        
        
    }
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
