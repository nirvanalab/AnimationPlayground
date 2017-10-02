//: [Previous](@previous)

import Foundation

import UIKit
import XCPlayground
import PlaygroundSupport

//: [Next](@next)

let containerView = UIView(frame: CGRect(x:0,y:0,width:400.0,height:400.0))
containerView.backgroundColor = UIColor.black
PlaygroundPage.current.liveView = containerView

let plane = UIImageView(frame: CGRect(x: 100, y: containerView.center.y, width: 50, height: 25))
plane.image = UIImage.init(named: "plane")
containerView.addSubview(plane)

let runway = UIView(frame: CGRect(x: 0, y: containerView.center.y+plane.frame.height, width: containerView.frame.width, height: 10))
runway.backgroundColor = UIColor.brown
containerView.addSubview(runway)

let originalCenter = plane.center

UIView.animateKeyframes(withDuration: 2.5, delay: 0, options: [.repeat], animations: {
    
    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
        plane.center.x += 120.0
        plane.center.y -= 10.0
    })
    
    UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.4, animations: {
        plane.transform = CGAffineTransform(rotationAngle: -.pi/8)
    })
    UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
        plane.center.x += 200.0
        plane.center.y -= 50.0
        plane.alpha = 0.0
    }
    UIView.addKeyframe(withRelativeStartTime: 0.51, relativeDuration: 0.01) {
        plane.transform = .identity
        plane.center = CGPoint(x: 0.0, y: originalCenter.y)
    }
    UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.45) {
        plane.alpha = 1.0
        plane.center = originalCenter
    }


}, completion: nil)


//: [Next](@next)
