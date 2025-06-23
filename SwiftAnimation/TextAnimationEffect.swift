//
//  TextAnimationEffect.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 25/04/25.
//

import SwiftUI

struct TextAnimationEffect: View {
    @State private var moveGradient = true
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        Rectangle()
            .overlay{
                LinearGradient(colors: [.clear, .white , .clear], startPoint: .leading, endPoint: .trailing)
                    .frame(width: 150)
                    .offset(x: moveGradient ? -screenWidth/2 : screenWidth/2)
            }
            .animation(.linear(duration: 3).repeatForever(autoreverses: false), value: moveGradient)
            .mask{
                Text("Slide to Power Off")
                    .foregroundStyle(.black)
                    .font(.largeTitle)
            }
            .onAppear{
                self.moveGradient.toggle()
            }
            .background(.gray)
    }
}

#Preview {
    TextAnimationEffect()
}
