//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//: [Next](@next)

let containerView = UIView(frame: CGRect(x:0,y:0,width:475.0,height:500.0))
containerView.backgroundColor = UIColor.black
PlaygroundPage.current.liveView = containerView

// 1. Setup the UI elements
let heading = UILabel(frame: CGRect(x: containerView.center.x/2, y: 10, width: 225, height: 50))
heading.text = "My Beautiful App"
heading.textAlignment = .center
heading.textColor = UIColor.white
containerView.addSubview(heading)

let username = UITextField.init(frame: CGRect(x: containerView.center.x/2, y: 75, width: 225, height: 50))
username.placeholder = "username"
username.backgroundColor = UIColor.white
username.layer.cornerRadius = 5
username.textAlignment = .center
containerView.addSubview(username)

let password = UITextField.init(frame: CGRect(x: containerView.center.x/2, y: 150, width: 225, height: 50))
password.placeholder = "password"
password.backgroundColor = UIColor.white
password.layer.cornerRadius = 5
password.textAlignment = .center
containerView.addSubview(password)

let submitBtn = UIButton.init(frame: CGRect(x: 0, y: 0, width: 125, height: 50))
submitBtn.center = containerView.center
submitBtn.setTitle("Submit", for: .normal)
submitBtn.titleLabel?.textColor = UIColor.black
submitBtn.layer.cornerRadius = 5.0
submitBtn.backgroundColor = UIColor.green
containerView.addSubview(submitBtn)

let animationDuration = 1.0

// Offset elements out of the view so that we can animate it later
heading.center.x -= containerView.bounds.width
username.center.x -= containerView.bounds.width
password.center.x -= containerView.bounds.width

/*:
 ## Simple animation with duration and completion closure
 */

//UIView.animate(withDuration: animationDuration) {
//    heading.center.x += containerView.bounds.width
//    username.center.x += containerView.bounds.width
//    password.center.x += containerView.bounds.width
//}

/*:
 ## Animate elements independent of each other
 - delay - Amount of seconds UIKit will wait before it starts animation
 */

//UIView.animate(withDuration: animationDuration, delay: 0.3, options: [], animations: {
//    heading.center.x += containerView.bounds.width
//}, completion: nil)
//UIView.animate(withDuration: animationDuration, delay: 0.5, options: [], animations: {
//    username.center.x += containerView.bounds.width
//}, completion: nil)
//UIView.animate(withDuration: animationDuration, delay: 0.8, options: [], animations: {
//    password.center.x += containerView.bounds.width
//}, completion: nil)

/*:
 ## Animate with repeat , auto reverse option
 - repeat - Animation loops forever
 - autoreverse - Used in conjuction with repeat. repeats the animation forward and then backward
 - curveEaseIn - Acceleration at start of animation
 - curveEaseOut - Deceleration at end of animation
 - curveEaseInOut - Acceleration at start and Deceleration at end of animation
 */
//UIView.animate(withDuration: animationDuration, delay: 0.3, options: [.repeat], animations: {
//    heading.center.x += containerView.bounds.width
//}, completion: nil)
//UIView.animate(withDuration: animationDuration, delay: 0.5, options: [.repeat,.autoreverse], animations: {
//    username.center.x += containerView.bounds.width
//}, completion: nil)
//UIView.animate(withDuration: animationDuration, delay: 0.5, options: [.repeat,.autoreverse,.curveEaseOut], animations: {
//    password.center.x += containerView.bounds.width
//}, completion: nil)

/*:
 ## Spring Effect
 
 - usingSpringWithDamping : This parameter accepts values between 0.0 and 1.0. Values closer to 0.0 create a bouncier animation, while values closer to 1.0 create a stiff-looking effect.
 - initialSpringVelocity : Controls the initial velocity of the animation.
 */

// Uncomment the animate elements independent

//offset the button
//submitBtn.center.y += 100
//submitBtn.alpha = 0
//
//UIView.animate(withDuration: animationDuration, delay: 1.5,usingSpringWithDamping: 0.4, initialSpringVelocity:1, options: [], animations: {
//    submitBtn.center.y -= 100
//    submitBtn.alpha = 1
//}, completion: nil)

