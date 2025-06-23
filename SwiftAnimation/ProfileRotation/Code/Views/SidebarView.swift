//
//  SidebarView.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 16/05/25.
//

import SwiftUI

struct SidebarView: View {
    var leading: CGFloat = 0
    var buttonAction: () -> Void = { }
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            Color(hex: "121212")
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading){
                HStack{
                    Image("lady")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(Color.white, lineWidth: 3)
                        }
                    
                    Button {
                        buttonAction()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .font(.system(size: 26, weight: .medium))
                            .padding(14)
                            .overlay {
                                Circle().stroke(Color.white,lineWidth: 1)
                                    .opacity(0.85)
                            }
                    }
                    .padding(.leading, 56)
                    .padding(.bottom, 24)

                }
                
                VStack(alignment: .leading){
                    Text("Harsh Rajput")
                        .font(TypefaceOne.bold.font(size: 38))
                        .frame(maxWidth: UIScreen.main.bounds.width/2, alignment: .leading)
                        .shadow(radius: 5)
                    
                    Text("iOS Developer")
                        .font(TypefaceTwo.medium.font(size: 24))
                        .opacity(0.7)
                        .padding(.top, 10)
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading, spacing: 40) {
                        SidebarAction(buttonImage: "flag.fill", buttonTitle: "Priority")
                        SidebarAction(buttonImage: "square.grid.2x2", buttonTitle: "Archived")
                        SidebarAction(buttonImage: "calendar", buttonTitle: "Archived")
                        SidebarAction(buttonImage: "gearshape", buttonTitle: "Setting")
                    }
                    .padding(.top, 48)
                    
                }
                .foregroundStyle(.white)
                .padding(.top, 46)
            }
            .padding(36)
            .padding(.top, 32)
            .padding(.leading, leading)
        }
    }
}

#Preview {
    SidebarView()
}

struct SidebarAction: View {
    
    var buttonImage: String = ""
    var buttonTitle: String = ""
    var buttonAction: () -> Void = { }
    
    var body: some View {
        HStack{
            Button {
                buttonAction()
            } label: {
                Image(systemName: buttonImage)
                    .font(.system(size: 24, weight: .semibold))
                    .opacity(0.6)
                    .frame(width: 30, height: 30)
            }
            
            Text(buttonTitle)
                .font(TypefaceOne.semiBold.font(size: 21))
                .padding(.leading, 16)
                .opacity(0.9)
                .shadow(radius: 5)
        }
    }
}
