//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

/*:
  # Table of Contents
 
*/

//: [Next](@next)
let containerView = UIView(frame: CGRect(x:0,y:0,width:375.0,height:500.0))
XCPlaygroundPage.currentPage.liveView = containerView



//:Another stuff
let duration = 3.0


//:
let circle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0
circle.backgroundColor = UIColor.orange
containerView.addSubview(circle)
//:

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = circle.center
rectangle.backgroundColor = UIColor.blue
rectangle.layer.cornerRadius = 10.0
containerView.addSubview(rectangle)

let rectangle2 = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
rectangle2.center = circle.center
rectangle2.backgroundColor = UIColor.white
rectangle2.layer.cornerRadius = 5.0
containerView.addSubview(rectangle2)

//: Some other simple markup
let square = UIView(frame: CGRect(x: 20, y: 20, width: 50, height: 50));
square.backgroundColor = UIColor.red
containerView.addSubview(square)
//UIView.animate(withDuration: duration) {
//    square.frame = CGRect(x: 300, y: 20, width: 70, height: 70)
//}

//UIView.animate(withDuration: duration) {
//    
//    let targetColor = UIColor.purple
//    circle.backgroundColor = targetColor
//    
//    let scaleTransform = CGAffineTransform.init(scaleX: 3, y: 3)
//    circle.transform = scaleTransform
//    
//    let rotationTransform = CGAffineTransform.init(rotationAngle: 3.14)
//    rectangle.transform = rotationTransform
//    
//    let leftRotationTransform = CGAffineTransform.init(rotationAngle: -3.14)
//    rectangle2.transform = leftRotationTransform
//    
//    
//    
//}

UIView.animate(withDuration: duration, delay: 0, options: [.repeat,.autoreverse], animations: {
   
    let targetColor = UIColor.purple
    circle.backgroundColor = targetColor
    
    let scaleTransform = CGAffineTransform.init(scaleX: 3, y: 3)
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransform.init(rotationAngle: 3.14)
    rectangle.transform = rotationTransform
    
    let leftRotationTransform = CGAffineTransform.init(rotationAngle: -3.14)
    rectangle2.transform = leftRotationTransform
    
}, completion: nil)


//TODO apply two transforms at the same time?















