//
//  MainView.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 14/05/25.
//

import SwiftUI

struct MainView: View {
    
    let animationDuration: TimeInterval = 0.75
    @StateObject var appModel = AppModel()
    
    @State var firstViewDegree: Double = RotationState.showFirstView.rotaionValues.0
    @State var firstViewOffSet: CGFloat = RotationState.showFirstView.rotaionValues.1
    @State var firstViewAnchor: UnitPoint = RotationState.showFirstView.rotaionValues.2
    @State var firstViewYAxis: CGFloat = RotationState.showFirstView.rotaionValues.3
    
    @State var secondViewDegree: Double = RotationState.hideSecondView.rotaionValues.0
    @State var secondViewOffSet: CGFloat = RotationState.hideSecondView.rotaionValues.1
    @State var secondViewAnchor: UnitPoint = RotationState.hideSecondView.rotaionValues.2
    @State var secondViewYAxis: CGFloat = RotationState.hideSecondView.rotaionValues.3
    
    var body: some View {
        ZStack{
            Color(hex: "080808")
                .ignoresSafeArea(.all)
            
            ZStack{
                SidebarView(leading: 48){
                    withAnimation(.easeInOut(duration: animationDuration)){
                        self.changeRotationState(stateOne: .showFirstView, stateTwo: .hideSecondView)
                    }
                }
            }
            .rotation3DEffect(
                .degrees(secondViewDegree),
                axis: (x: 0, y: secondViewYAxis, z: 0),
                anchor: secondViewAnchor)
            .offset(x: secondViewOffSet)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)){
                Color.black
                    .ignoresSafeArea(.all)
                VStack(alignment: .leading){
                    HStack{
                        NavigationButton(color: Color.white){
                            withAnimation(.easeInOut(duration: animationDuration)){
                                self.changeRotationState(stateOne: .hideFirstView, stateTwo: .showSecondView)
                            }
                        }
                    }
                    VStack(alignment: .leading, spacing: 12){
                        Text(appModel.greeting)
                            .font(TypefaceOne.medium.font(size: 27))
                            .opacity(0.75)
                            .foregroundStyle(.white)
                            .shadow(color: Color.white.opacity(0.5), radius: 1)
                        
                        Text(appModel.userName)
                            .font(TypefaceOne.bold.font(size: 38))
                            .foregroundStyle(.white)
                            .shadow(color: Color.white.opacity(0.5), radius: 1)
                            
                        VStack(alignment: .leading, spacing: 24){
                            Text("Today's Task")
                                .font(TypefaceOne.bold.font(size: 24))
                                .foregroundStyle(.white)
                                .textCase(.uppercase)
                                .padding(.top, 40)
                                .padding(.bottom, 12)
                            
                            ForEach(appModel.tasks) { task in
                                TaskRow(task: task)
                                    .colorScheme(.dark)
                                    .padding(.vertical, 8)
                            }
                        }
                    }.padding(.top, 12)
                }.padding(24)
                .padding(.top, 24)
                
            }
            .rotation3DEffect(
                .degrees(firstViewDegree),
                axis: (x: 0, y: firstViewYAxis, z: 0),
                anchor: firstViewAnchor)
            .offset(x: firstViewOffSet)
            
            
        }.ignoresSafeArea(.all)
    }
    
    //MARK: function for rotation
    func changeRotationState(stateOne: RotationState, stateTwo: RotationState){
        (firstViewDegree, firstViewOffSet, firstViewAnchor, firstViewYAxis) = stateOne.rotaionValues
        (secondViewDegree, secondViewOffSet, secondViewAnchor, secondViewYAxis) = stateTwo.rotaionValues
    }
}

#Preview {
    MainView()
}
