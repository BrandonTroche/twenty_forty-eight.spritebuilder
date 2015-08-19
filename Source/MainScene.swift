import Foundation

class MainScene: CCNode {

    weak var grid: Grid!
    weak var scoreLabel: CCLabelTTF!
    weak var highscoreLabel: CCLabelTTF!
    
    
    func updateHighscore() {
        var newHighscore = NSUserDefaults.standardUserDefaults().integerForKey("highscore")
        highscoreLabel.string = "\(newHighscore)"
    }
    
    func didLoadFromCCB(){
        NSUserDefaults.standardUserDefaults().addObserver(self, forKeyPath: "highscore", options: .allZeros, context: nil)
        updateHighscore()
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        if keyPath == "highscore" {
            updateHighscore()
        }
    }
}
