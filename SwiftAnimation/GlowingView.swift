//
//  GlowingView.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 25/04/25.
//

import SwiftUI

struct GlowingView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            Circle()
                .frame(width: 200)
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    GlowingView()
}
