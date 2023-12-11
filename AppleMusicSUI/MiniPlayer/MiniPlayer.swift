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
    
    // for music
    @Namespace private var playerAnimation
    @State private var showControls = true
    @State private var isPlaying = false
    
    @State private var isDraggingSlider = false
    
    @ObservedObject var audioManager = AudioPlayer.shared
    
    func formattedTime(_ time: TimeInterval) -> String {
        let minute = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minute, seconds)
    }
    
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
                    Button {
                        audioManager.playPause()
                        isPlaying.toggle()
                    } label: {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .font(.title2)
                            .font(.system(size: 35))
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .font(.system(size: 35))
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
                }
                .padding()
                .padding(.top, 20)
                
                // slider
                VStack{
                    HStack{
                        
                        Text(formattedTime(audioManager.currentTime))
                        Spacer()
                        Text(formattedTime(audioManager.duration))
                    }
                    .padding()
                    
                    Slider(value: $audioManager.currentTime, in: 0...audioManager.duration) { editing in
                        isDraggingSlider = editing
                        if !editing {
                            audioManager.seek(to: audioManager.currentTime)
                            if isPlaying {
                                audioManager.playPause()
                            }
                        }
                    }
                    .disabled(audioManager.duration.isZero)
                    .padding()

                }
                
                // stop/play button
                HStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "gobackward.15")
                            .font(.system(size: 35))
                            .foregroundColor(.primary)
                            .padding()
                            .onTapGesture {
                                let newTime = audioManager.currentTime - 15
                                if newTime < 0 {
                                    audioManager.seek(to: 0)
                                } else {
                                    audioManager.seek(to: newTime)
                                }
                            }
                    }
                    
                    Button {
                        audioManager.playPause()
                        isPlaying.toggle()
                    } label: {
                        Image(systemName: isPlaying ? "pause.circle.fill" :  "play.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.primary)
                            .padding()
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "goforward.15")
                            .font(.system(size: 35))
                            .foregroundColor(.primary)
                            .padding()
                            .onTapGesture {
                                let newTime = audioManager.currentTime + 15
                                if newTime > audioManager.duration {
                                    audioManager.seek(to: audioManager.duration)
                                } else {
                                    audioManager.seek(to: newTime)
                                }
                         }
                    }
                    
                }
                
                Spacer(minLength: 0)
            }
            .frame(width: expend ? nil : 0, height:  expend ? nil : 0)
            .opacity(expend ? 1 : 0)
        }
        .frame(maxHeight: expend ? .infinity : 80)
        
        .onTapGesture {
            showControls.toggle()
            Timer.scheduledTimer(withTimeInterval: 0.15, repeats: false){
                timer in
                withAnimation(.spring()) {
                    expend.toggle()
                    
                }
            }
        }
        .onAppear{
            audioManager.setAudioPlayer(fileName: "01 rington-by.com")
        }
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


