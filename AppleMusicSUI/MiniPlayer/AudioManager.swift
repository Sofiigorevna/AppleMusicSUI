//
//  AudioManager.swift
//  AppleMusicSUI
//
//  Created by 1234 on 10.12.2023.
//

import SwiftUI
import AVFoundation

class AudioPlayer: ObservableObject {
    static let shared = AudioPlayer()
    
    var audioPlayer: AVAudioPlayer?
    var isPlaying: Bool = false
    var timer: Timer?
    
    @Published var currentTime: TimeInterval = 0.0
    @Published var duration: TimeInterval = 0.0
    
    func playPause() {
        if isPlaying {
            audioPlayer?.pause()
            timer?.invalidate()
        } else {
            audioPlayer?.play()
            startTimer()
        }
        isPlaying.toggle()
    }
    
    func setAudioPlayer(fileName: String){
        guard let audioURL = Bundle.main.url(forResource: fileName, withExtension: "mp3") else {return}
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: audioURL)
            duration = audioPlayer?.duration ?? 0.0
            
        } catch {
            print("Errror loading audiofile: \(error.localizedDescription)")

        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.currentTime = self?.audioPlayer?.currentTime ?? 0.0
        }
    }
    
    func seek(to time: TimeInterval){
        audioPlayer?.currentTime = time
    }
}

