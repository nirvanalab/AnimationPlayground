//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x:0,y:0,width:475.0,height:500.0))
containerView.backgroundColor = UIColor.yellow
PlaygroundPage.current.liveView = containerView

let centerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
centerView.backgroundColor = UIColor.white
centerView.center = containerView.center
containerView.addSubview(centerView)

var centerLayer:CALayer {
    return centerView.layer
}

//centerLayer.backgroundColor = UIColor.blue.cgColor
//centerLayer.borderWidth = 50.0
//centerLayer.borderColor = UIColor.red.cgColor
//centerLayer.shadowOpacity = 0.7
//centerLayer.shadowRadius = 10.0
//
////TODO difference between UIImage and cgImage
//centerLayer.contents = UIImage(named: "star")?.cgImage
//centerLayer.contentsGravity = kCAGravityCenter
//
//centerLayer.magnificationFilter = kCAFilterLinear
//centerLayer.isGeometryFlipped = false

//TODO why add sublayers?
var layer = CALayer()
layer.frame = centerView.bounds

layer.contents = UIImage(named: "star")?.cgImage
layer.contentsGravity = kCAGravityCenter
layer.backgroundColor = UIColor(red: 11/255.0, green: 86/255.0, blue: 14/255.0, alpha: 1.0).cgColor
layer.opacity = 1.0
layer.isHidden = false
layer.masksToBounds = false
layer.cornerRadius = 100.0
layer.borderWidth = 12.0
layer.borderColor = UIColor.white.cgColor
layer.shadowOpacity = 0.75
layer.shadowOffset = CGSize(width: 0, height: 3)
layer.shadowRadius = 3.0
centerLayer.addSublayer(layer)
//: [Next](@next)


