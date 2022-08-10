//
//  AudioPlayer.swift
//  Restart
//
//  Created by 菊地竜帆 on 2022-08-09.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch {
            print("Could not play the sound file.")
        }
    }
}
