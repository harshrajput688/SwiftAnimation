//
//  GlowingButtonAnimation.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 05/05/25.
//

import SwiftUI

struct GlowingButtonAnimation: View {
    @State private var isAnimation = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(AngularGradient(colors: [.teal, .pink, .teal], center: .center, angle: .degrees(isAnimation ? 360 : 0)))
                .frame(width: 260, height: 60)
                .blur(radius: 20)
                .onAppear{
                    withAnimation(Animation.linear(duration: 7).repeatForever(autoreverses: false)){
                        isAnimation = true
                    }
                    
                }
            Button(action: {
                
            }) {
                Text("Premium")
                    .bold()
                    .font(.title)
                    .fontDesign(.monospaced)
                    .foregroundStyle(.black)
                    .frame(width: 260, height: 60)
                    .background(.teal, in: .rect(cornerRadius: 20, style: .continuous))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.gray.opacity(0.5), lineWidth: 1)
                    }
            }
        }
        
    }
}

#Preview {
    GlowingButtonAnimation()
}
