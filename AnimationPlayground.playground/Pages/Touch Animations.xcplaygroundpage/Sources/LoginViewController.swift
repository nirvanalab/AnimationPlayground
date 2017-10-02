import Foundation
import UIKit

public class LoginViewController: UIViewController {
    
    var username:UITextField? =  nil
    var password:UITextField? = nil
    var submitBtn:UIButton? = nil
    var status = UILabel();
//    
//    required public init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    override public func viewWillAppear(_ animated: Bool) {
         let heading = UILabel(frame: CGRect(x: self.view.center.x/2, y: 10, width: 225, height: 50))
        heading.text = "My Beautiful App"
        heading.textAlignment = .center
        heading.textColor = UIColor.white
        self.view.addSubview(heading)
        
        self.username = UITextField.init(frame: CGRect(x: self.view.center.x/2, y: 75, width: 225, height: 50))
        self.username?.placeholder = "username"
        self.username?.backgroundColor = UIColor.white
        self.username?.layer.cornerRadius = 5
        self.username?.textAlignment = .center
        self.view.addSubview(self.username!)
        
        self.password = UITextField.init(frame: CGRect(x: self.view.center.x/2, y: 150, width: 225, height: 50))
        self.password?.placeholder = "password"
        self.password?.backgroundColor = UIColor.white
        self.password?.layer.cornerRadius = 5
        self.password?.textAlignment = .center
        self.view .addSubview(self.password!)
        
        status = UILabel(frame: CGRect(x: self.view.center.x/2, y: 225, width: 225, height: 50))
        status.text = "Signing in..."
        status.center.x -= self.view.bounds.width
        status.textAlignment = .center
        status.textColor = UIColor.white
        self.view.addSubview(status)
        
        self.submitBtn = UIButton.init(frame: CGRect(x: self.view.center.x/2, y: 225, width: 225, height: 50))
        self.submitBtn?.setTitle("Submit", for: .normal)
        self.submitBtn?.titleLabel?.textColor = UIColor.black
        self.submitBtn?.layer.cornerRadius = 5.0
        self.submitBtn?.backgroundColor = UIColor.green
        self.view.addSubview(self.submitBtn!)
        
        self.submitBtn?.addTarget(self, action: #selector(handleTap), for: .touchUpInside)

    }
    
    func handleTap() {
    
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping:
            0.2, initialSpringVelocity: 0.0, options: [], animations: {
                self.submitBtn?.bounds.size.width += 80.0
                self.submitBtn?.center.y += 60
        }) { _ in
            
            UIView.animate(withDuration: 0.5, animations: {
                self.status.center.x += self.view.bounds.width
            })
        }
    }
    
    public override func loadView() {
        view = UIView()
        self.view.backgroundColor = .black
        self.view.frame = CGRect(x: 0, y: 0, width: 475, height: 500)
    }
    
}
