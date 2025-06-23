//
//  NavigationButton.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 19/05/25.
//

import SwiftUI

struct NavigationButton: View {
    
    var lineWidth: CGFloat = 40
    var smallLineWidth: CGFloat = 18
    
    var color: Color = .white
    var buttonAction: () -> Void = {}
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            VStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: lineWidth, height: 3)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: smallLineWidth, height: 3)
            }
            .foregroundStyle(color)
        }
        .buttonStyle(.plain)
        .frame(width: 44, height: 44, alignment: .leading)

    }
}

#Preview {
    NavigationButton(color: .white)
}
