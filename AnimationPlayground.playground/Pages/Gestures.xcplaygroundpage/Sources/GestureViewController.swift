import Foundation
import UIKit

public class GestureViewController : UIViewController {
    
    var item = UIView();
    let colors:[UIColor] = [.blue,.red,.yellow,.gray,.purple,.white,.orange,.green,.magenta,.brown];
    var previousIndex:Int = 0
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        item = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        item.center = self.view.center
        item.backgroundColor = UIColor.red
        item.layer.cornerRadius = 10.0
        self.view.addSubview(item)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onHandleTap(recognizer:)));
        item.addGestureRecognizer(tapGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(onHandlePan(recognizer:)));
        item.addGestureRecognizer(panGesture);
    }
    
    func onHandleTap(recognizer tapGesture:UITapGestureRecognizer) {
        
        var randomIndex = Int(arc4random_uniform(UInt32(colors.count)))
        while (randomIndex == previousIndex ) {
            randomIndex = Int(arc4random_uniform(UInt32(colors.count)))
        }
        let randomColor = colors[randomIndex]
        item.backgroundColor = randomColor
        previousIndex = randomIndex
    }
    
    func onHandlePan(recognizer panRecognizer:UIPanGestureRecognizer) {
        let translation = panRecognizer.translation(in: self.view)
        if let view = panRecognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        panRecognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    
    
}
