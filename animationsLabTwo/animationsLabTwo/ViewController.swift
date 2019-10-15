//
//  ViewController.swift
//  animationsLabTwo
//
//  Created by Phoenix McKnight on 10/15/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var linearButton:UIButton = {
  let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(handleLinearButton), for: .touchUpInside)
        return button
    }()
        lazy var easeInButton:UIButton = {
    let button = UIButton()
            button.setTitle("Ease In", for: .normal)
                   button.setTitleColor(.blue, for: .normal)
          button.addTarget(self, action: #selector(handleEaseInButton), for: .touchUpInside)
            return button
        }()
            lazy var easeOutButton:UIButton = {
    let button = UIButton()
                button.setTitle("Ease Out", for: .normal)
                       button.setTitleColor(.blue, for: .normal)
             button.addTarget(self, action: #selector(handleEaseOutButton), for: .touchUpInside)
                return button
        }()
                lazy var easeInEaseOut:UIButton = {
    let button = UIButton()
                    button.setTitle("EaseInEaseOut", for: .normal)
                           button.setTitleColor(.blue, for: .normal)
                     button.addTarget(self, action: #selector(handleEaseInEaseOutButton), for: .touchUpInside)
            return button
        }()
    
             lazy var resetButton:UIButton = {
    let button = UIButton()
                    button.setTitle("Reset", for: .normal)
                           button.setTitleColor(.blue, for: .normal)
                 button.addTarget(self, action: #selector(handleResetButton), for: .touchUpInside)
                return button
        }()
    
             lazy var animationButton:UIButton = {
    let button = UIButton()
                    button.setTitle("Animate", for: .normal)
                           button.setTitleColor(.blue, for: .normal)
                 button.addTarget(self, action: #selector(handleAnimateButton), for: .touchUpInside)
            return button
        }()
    
    lazy var topButtonStackView:UIStackView = {
       return createTopButtonStackView()
    }()
    
    lazy var beachBallOne:UIImageView = {
        let beach = UIImageView(imageName: "beachBall", constant: 50, button: self.linearButton)
        return beach
    }()
    lazy var beachBallTwo:UIImageView = {
        let beach = UIImageView(imageName: "beachBall", constant: 50, button: self.easeInButton)
        return beach
    }()
    lazy var beachBallThree:UIImageView = {
        let beach = UIImageView(imageName: "beachBall", constant: 50, button: self.easeInEaseOut)
        return beach
    }()
    lazy var beachBallFour:UIImageView = {
        let beach = UIImageView(imageName: "beachBall", constant: 50, button: self.easeInEaseOut)
        return beach
    }()
    
    
    lazy var bottomButtonStackView:UIStackView = {
        let stacky = UIStackView(arrangedSubviews: [self.resetButton,self.animationButton])
        stacky.axis = .horizontal
                       stacky.distribution = .fillProportionally
        stacky.spacing = UIScreen.main.bounds.maxX - 200
        stacky.alignment = .center
        stacky.translatesAutoresizingMaskIntoConstraints = false
                 return stacky
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToSubView()
        constrainTopButtonStackView()
        constrainBottomButtonStackView()
        imageConstraints()
        
        // Do any additional setup after loading the view.
    }
    func createTopButtonStackView() -> UIStackView {
        
               let stacky = UIStackView(arrangedSubviews: [linearButton,easeInButton,easeOutButton,easeInEaseOut])
                     
                     stacky.axis = .horizontal
                     stacky.distribution = .fillProportionally
        stacky.alignment = .fill
                     stacky.spacing = 5
                     stacky.translatesAutoresizingMaskIntoConstraints = false
               return stacky
           }
    
    func addToSubView() {
        self.view.addSubview(topButtonStackView)
        self.view.addSubview(bottomButtonStackView)

        self.view.addSubview(beachBallOne)
        self.view.addSubview(beachBallTwo)
        self.view.addSubview(beachBallThree)
        self.view.addSubview(beachBallFour)


    }
    
    func constrainTopButtonStackView() {
        topButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([topButtonStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),topButtonStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),topButtonStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)])
    
    }
    
    func constrainBottomButtonStackView() {
        bottomButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([bottomButtonStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
        bottomButtonStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
        bottomButtonStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)])
    }
    func imageConstraints() {
        
        beachBallOne.centerXAnchor.constraint(equalTo: linearButton.centerXAnchor).isActive = true
        beachBallOne.centerYAnchor.constraint(equalTo: linearButton.centerYAnchor, constant: 30).isActive = true
        
        beachBallTwo.centerXAnchor.constraint(equalTo: easeInButton.centerXAnchor).isActive = true
        beachBallTwo.centerYAnchor.constraint(equalTo: easeInButton.centerYAnchor, constant: 30).isActive = true
        
        beachBallThree.centerXAnchor.constraint(equalTo: easeOutButton.centerXAnchor).isActive = true
        beachBallThree.centerYAnchor.constraint(equalTo: easeOutButton.centerYAnchor, constant: 30).isActive = true
        
        beachBallFour.centerXAnchor.constraint(equalTo: easeInEaseOut.centerXAnchor).isActive = true
        beachBallFour.centerYAnchor.constraint(equalTo: easeInEaseOut.centerYAnchor, constant: 30).isActive = true
    }
   
    @objc func handleLinearButton(){
        if beachBallOne.isHidden == false {
            beachBallOne.isHidden = true
        } else {
            beachBallOne.isHidden = false
        }
    }
    @objc func handleEaseInButton(){
        if beachBallTwo.isHidden == false {
                  beachBallTwo.isHidden = true
              } else {
                  beachBallTwo.isHidden = false
              }    }
    @objc func handleEaseOutButton(){
         if beachBallThree.isHidden == false {
                  beachBallThree.isHidden = true
              } else {
                  beachBallThree.isHidden = false
              }
    }
    @objc func handleEaseInEaseOutButton(){
         if beachBallFour.isHidden == false {
                  beachBallFour.isHidden = true
              } else {
                  beachBallFour.isHidden = false
              }
    }
    @objc func handleResetButton(){
        let beachBallArray = [self.beachBallOne,self.beachBallTwo,self.beachBallThree,self.beachBallFour]
        for image in beachBallArray {
            image.center.y = 116
        }
    }
    
    @objc func handleAnimateButton(){
       
        let buttonArray = [beachBallOne,beachBallTwo,beachBallThree,beachBallFour]
        print(buttonArray[0].frame)
        for button in buttonArray {
        switch button {
        case beachBallOne:
            UIView.animate(withDuration: 5, delay: 0, options: .curveLinear, animations: {
                self.beachBallOne.center = CGPoint(x: self.beachBallOne.center.x , y: self.beachBallOne.center.y + (UIScreen.main.bounds.maxY - 200) )
           },completion: nil)
        case beachBallTwo:
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseIn, animations: {
                 self.beachBallTwo.center = CGPoint(x: self.beachBallTwo.center.x , y: self.beachBallTwo.center.y + (UIScreen.main.bounds.maxY - 200) )
            },completion: nil)
                            
        case beachBallThree:
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseOut, animations: {
                self.beachBallThree.center = CGPoint(x: self.beachBallThree.center.x , y: self.beachBallThree.center.y + (UIScreen.main.bounds.maxY - 200) )
             },completion: nil)
                            
        case beachBallFour:
            UIView.animate(withDuration: 5, delay: 0, options: .curveEaseInOut, animations: {
                self.beachBallFour.center = CGPoint(x: self.beachBallFour.center.x , y: self.beachBallFour.center.y + (UIScreen.main.bounds.maxY - 200) )
             },completion: nil)
                           
        default:
            return
        }
    }
}
}
    
extension UIImageView{
    public convenience init(imageName:String,constant:CGFloat,button:UIButton){
       self.init()
       self.image = UIImage(named: imageName)
       self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
       
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
               self.widthAnchor.constraint(equalToConstant: constant).isActive = true
       
   }
}
                
                    

