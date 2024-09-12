import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playPressed(_ sender: UIButton) {
        
        guard let path = Bundle.main.path(forResource: sender.currentTitle, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        
        
    }
    
    
    
    
}

