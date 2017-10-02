//: [Previous](@previous)

import UIKit
import PlaygroundSupport


//: [Next](@next)

let containerView = UIView(frame: CGRect(x:0,y:0,width:375.0,height:500.0))
PlaygroundPage.current.liveView = containerView

//add rectangle 1
let rectangle1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
rectangle1.center = containerView.center
rectangle1.backgroundColor = UIColor.blue
rectangle1.layer.cornerRadius = 10.0
containerView.addSubview(rectangle1)

//add rectangle 2
let rectangle2 = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
rectangle2.center = containerView.center
rectangle2.backgroundColor = UIColor.white
rectangle2.layer.cornerRadius = 5.0
containerView.addSubview(rectangle2)
//
//print rectangle 1 info
rectangle1.bounds
rectangle1.frame
rectangle1.transform == CGAffineTransform.identity ? true : false
//
//print rectangle 2 info
rectangle2.bounds
rectangle2.frame
rectangle2.transform == CGAffineTransform.identity ? true : false
//
////rotate rectangle 2
rectangle2.transform = CGAffineTransform.init(rotationAngle: 45)
//
////print rectangle 1 info
//rectangle1.bounds
//rectangle1.frame
//rectangle1.transform == CGAffineTransform.identity ? true : false
//
////print rectangle 2 info
//rectangle2.bounds
//rectangle2.frame
//rectangle2.transform == CGAffineTransform.identity ? true : false




