//
//  MiniPlayer.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct MiniPlayer: View {
    var animation: Namespace.ID
    @Binding var expend: Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        VStack{
            Capsule()
                .fill(Color.gray)
                .frame(width: expend ? 60 : 0, height: expend ? 4 : 0)
                .opacity(expend ? 1 : 0)
                .padding(.top, expend ? safeArea?.top : 0)
                .padding(.vertical, expend ? 30 : 0)
            
            HStack(spacing: 15) {
                
                if expend{Spacer(minLength: 0)}
                
                Image("guf")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expend ? height: 55, height: expend ? height: 55)
                    .cornerRadius(8)
                
                if !expend {
                    Text("Guf - Ice Baby")
                        .font(.title2)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expend {
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
               
            }
            .padding(.horizontal)
            
            VStack(spacing: 15){
                
                Spacer(minLength: 0)
               
                HStack {
                    if expend {
                        Text("Guf - Ice Baby")
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                    }
                    Spacer(minLength: 0)

                    Button {
                        
                    } label: {
                        Image(systemName: "ellips.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }

                }
                .padding()
                .padding(.top, 20)
                
                // live
                
                HStack{
                    Capsule().fill(LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7), Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing))
                            .frame(height: 4)
                            
                    Text("LIVE")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Capsule().fill(LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.1), Color.primary.opacity(0.7)]), startPoint: .leading, endPoint: .trailing))
                            .frame(height: 4)
                }
                .padding()
                
                //stop button
                
                Button {
                    
                } label: {
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                }.padding()

                
                
                Spacer(minLength: 0)
            }
            .frame(width: expend ? nil : 0, height:  expend ? nil : 0)
            .opacity(expend ? 1 : 0)
        }
        .frame(maxHeight: expend ? .infinity : 80)
        .background(
            VStack {
                BlurView().opacity(1)
                Divider()
            }
                .onTapGesture(perform: {
                    withAnimation(.spring()) {
                        expend.toggle()
                    }
                })
        )
        .ignoresSafeArea()
        .offset(y: expend ? 0 : -48)
    }
}

//struct MiniPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//      //  MiniPlayer(animation: , expend: <#Binding<Bool>#>)
//    }
//}
