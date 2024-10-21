//
//  video.swift
//  mini-project2
//
//  Created by Fatma AlDarwish on 15/03/2023.
//

import UIKit
import AVKit
import AVFoundation

class video: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "UNICEF _ for every child", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        
        player.pause()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        tapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleDoubleTap(_ sender: UITapGestureRecognizer) {
        let playerLayer = view.layer.sublayers?.first(where: { $0 is AVPlayerLayer }) as? AVPlayerLayer
        if let player = playerLayer?.player {
            if player.timeControlStatus == .playing {
                player.pause()
            } else {
                player.play()
            }
            
            /*
             let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "UNICEF _ for every child", ofType: "mp4")!))
             
             let vc = AVPlayerViewController()
             vc.player = player
             present(vc, animated: true)
             
             
             */
            
        }
        
        
        
        
        
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        
    }
    
    
}
