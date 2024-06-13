//
//  FourPlayerGameBoardVC.swift
//  GameProject
//
//  Created by Vison001 on 11/01/24.
//

import UIKit
import SwiftUI

class FourPlayerGameBoardVC: UIViewController {
    
    @IBOutlet weak var redpinStartIndexVw: UIView!
    @IBOutlet weak var BluepinstartIndexVw: UIView!
    @IBOutlet weak var greenPinStartIndexVw: UIView!
    @IBOutlet weak var YellowPinstartIndexV: UIView!
    
    
    @IBOutlet weak var rgDiagView: UIView!
    @IBOutlet weak var ygDiagView: UIView!
    @IBOutlet weak var byDiagView: UIView!
    @IBOutlet weak var rbDiagView: UIView!
    
    @IBOutlet weak var VerticalStackView: UIStackView!
    
    @IBOutlet weak var User1DiceBtn: UIButton!
    @IBOutlet weak var User2DiceBtn: UIButton!
    @IBOutlet weak var User3DiceBtn: UIButton!
    @IBOutlet weak var User4DiceBtn: UIButton!
    
    @IBOutlet weak var Dice1ImageVw: UIImageView!
    @IBOutlet weak var Dice2IamgeVw: UIImageView!
    @IBOutlet weak var Dice3ImageVw: UIImageView!
    @IBOutlet weak var Dice4ImageVw: UIImageView!
    
    var BlueDiceSelection    : Bool = true
    var RedDiceSelection     : Bool = false
    var GreenDiceSelection   : Bool = false
    var YellowDiceSelection  : Bool = false
    
    @IBOutlet weak var bluepin1Btn: UIButton!
    @IBOutlet weak var bluepin2Btn: UIButton!
    @IBOutlet weak var bluepin3Btn: UIButton!
    @IBOutlet weak var bluepin4Btn: UIButton!
    
    @IBOutlet weak var redpin1Btn: UIButton!
    @IBOutlet weak var redpin2Btn: UIButton!
    @IBOutlet weak var redpin3Btn: UIButton!
    @IBOutlet weak var redpin4Btn: UIButton!
    
    
    @IBOutlet weak var greenpin1Btn: UIButton!
    @IBOutlet weak var greenpin2Btn: UIButton!
    @IBOutlet weak var greenpin3Btn: UIButton!
    @IBOutlet weak var greenpin4Btn: UIButton!
    
    @IBOutlet weak var yellowpin1Btn: UIButton!
    @IBOutlet weak var yellowpin2Btn: UIButton!
    @IBOutlet weak var yellowpin3Btn: UIButton!
    @IBOutlet weak var yellowpin4Btn: UIButton!
    
    
    @IBOutlet weak var User1name: UILabel!
    @IBOutlet weak var User2name: UILabel!
    @IBOutlet weak var User3name: UILabel!
    @IBOutlet weak var User4name: UILabel!
    
    @IBOutlet weak var user1DiceBgVw: UIView!
    @IBOutlet weak var user2DiceBgVw: UIView!
    @IBOutlet weak var user3DiceBgVw: UIView!
    @IBOutlet weak var user4DiceBgVw: UIView!
    
    
    // Dice Rotation
    var diceimages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var a : Int = 0
    var b : Int = 0
    var c : Int = 0
    var d : Int = 0
    
    var SelectionofBlue1 : Bool = false
    var SelectionofBlue2 : Bool = false
    var SelectionofBlue3 : Bool = false
    var SelectionofBlue4 : Bool = false
    
    var SelectionofRed1 : Bool = false
    var SelectionofRed2 : Bool = false
    var SelectionofRed3 : Bool = false
    var SelectionofRed4 : Bool = false
    
    var SelectionofGreen1 : Bool = false
    var SelectionofGreen2 : Bool = false
    var SelectionofGreen3 : Bool = false
    var SelectionofGreen4 : Bool = false
    
    var SelectionofYellow1 : Bool = false
    var SelectionofYellow2 : Bool = false
    var SelectionofYellow3 : Bool = false
    var SelectionofYellow4 : Bool = false
    
    var Blue1Out : Bool = false
    var Blue2Out : Bool = false
    var Blue3Out : Bool = false
    var Blue4Out : Bool = false
    
    var Red1Out : Bool = false
    var Red2Out : Bool = false
    var Red3Out : Bool = false
    var Red4Out : Bool = false
    
    var Green1Out : Bool = false
    var Green2Out : Bool = false
    var Green3Out : Bool = false
    var Green4Out : Bool = false
    
    var Yellow1Out : Bool = false
    var Yellow2Out : Bool = false
    var Yellow3Out : Bool = false
    var Yellow4Out  : Bool = false
    
    
    var BluePin1Moved : Bool = false
    var BluePin2Moved : Bool = false
    var BluePin3Moved : Bool = false
    var BluePin4Moved : Bool = false
    
    var RedPin1Moved : Bool = false
    var RedPin2Moved : Bool = false
    var RedPin3Moved : Bool = false
    var RedPin4Moved : Bool = false
    
    var GreenPin1Moved : Bool = false
    var GreenPin2Moved : Bool = false
    var GreenPin3Moved : Bool = false
    var GreenPin4Moved : Bool = false
    
    var YellowPin1Moved : Bool = false
    var YellowPin2Moved : Bool = false
    var YellowPin3Moved : Bool = false
    var YellowPin4Moved : Bool = false
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        addBordersToViews()
        drawforwardDiagonalSplit()
        drawforwardDiagonalSplits()
        drawbackwardDiagonalSplit()
        drawbackwardDiagonalSplits()
        navigationItem.hidesBackButton = true
        
        User1DiceBtn.layer.borderWidth = 3.0
        User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
        
        User2DiceBtn.layer.borderWidth = 3.0
        User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
        
        User3DiceBtn.layer.borderWidth = 3.0
        User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
        
        User4DiceBtn.layer.borderWidth = 3.0
        User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
        
        bluepin1Btn.layer.borderWidth = 2.0
        bluepin2Btn.layer.borderWidth = 2.0
        bluepin3Btn.layer.borderWidth = 2.0
        bluepin4Btn.layer.borderWidth = 2.0
        
        bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
        bluepin2Btn.layer.borderColor = UIColor.clear.cgColor
        bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
        bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        redpin1Btn.layer.borderWidth = 2.0
        redpin2Btn.layer.borderWidth = 2.0
        redpin3Btn.layer.borderWidth = 2.0
        redpin4Btn.layer.borderWidth = 2.0
        
        redpin1Btn.layer.borderColor = UIColor.clear.cgColor
        redpin2Btn.layer.borderColor = UIColor.clear.cgColor
        redpin3Btn.layer.borderColor = UIColor.clear.cgColor
        redpin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        greenpin1Btn.layer.borderWidth = 2.0
        greenpin2Btn.layer.borderWidth = 2.0
        greenpin3Btn.layer.borderWidth = 2.0
        greenpin4Btn.layer.borderWidth = 2.0
        
        greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        yellowpin1Btn.layer.borderWidth = 2.0
        yellowpin2Btn.layer.borderWidth = 2.0
        yellowpin3Btn.layer.borderWidth = 2.0
        yellowpin4Btn.layer.borderWidth = 2.0
        
        yellowpin1Btn.layer.borderColor = UIColor.clear.cgColor
        yellowpin2Btn.layer.borderColor = UIColor.clear.cgColor
        yellowpin3Btn.layer.borderColor = UIColor.clear.cgColor
        yellowpin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        User1name.text = UserDefaults.standard.string(forKey: "User1name")
        User2name.text = UserDefaults.standard.string(forKey: "User2name")
        User3name.text = UserDefaults.standard.string(forKey: "User3name")
        User4name.text = UserDefaults.standard.string(forKey: "User4name")
        
        user1DiceBgVw.layer.cornerRadius = 5
        user2DiceBgVw.layer.cornerRadius = 5
        user3DiceBgVw.layer.cornerRadius = 5
        user4DiceBgVw.layer.cornerRadius = 5
        
    }
    
    func setGradientBackground()
    {
        let colorTop =  UIColor(.themeDark).cgColor
        let colorBottom = UIColor(.themeLight).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
        
    }
    func addBordersToViews() {
        for case let horizontalStackView as UIStackView in VerticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                addCustomBorder(to: innerView)
            }
        }
    }
    
    func addCustomBorder(to view: UIView)
    {
        let borderWidth: CGFloat = 0.3
        let borderColor: UIColor = UIColor.lightGray
        
        // Top border
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: borderWidth)
        topBorder.backgroundColor = borderColor.cgColor
        view.layer.addSublayer(topBorder)
        
        // Left border
        let leftBorder = CALayer()
        leftBorder.frame = CGRect(x: 0, y: 0, width: borderWidth, height: view.frame.size.height)
        leftBorder.backgroundColor = borderColor.cgColor
        view.layer.addSublayer(leftBorder)
        
        // Right border
        let rightBorder = CALayer()
        rightBorder.frame = CGRect(x: view.frame.size.width - borderWidth, y: 0, width: borderWidth, height: view.frame.size.height)
        rightBorder.backgroundColor = borderColor.cgColor
        view.layer.addSublayer(rightBorder)
    }
    // For Diagonal Winner View
    
    func drawforwardDiagonalSplit() {
        let diagonalSplitLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rgDiagView.bounds.width, y: rgDiagView.bounds.height))
        path.addLine(to: CGPoint(x: 0, y: rgDiagView.bounds.height))
        path.close()
        
        diagonalSplitLayer.path = path.cgPath
        diagonalSplitLayer.fillColor = UIColor.systemRed.cgColor
        rgDiagView.layer.addSublayer(diagonalSplitLayer)
        
    }
    
    func drawbackwardDiagonalSplit(){
        let diagonalSplitLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: rbDiagView.bounds.height))
        path.addLine(to: CGPoint(x: rbDiagView.bounds.width, y: 0))
        path.addLine(to: CGPoint(x: rbDiagView.bounds.width, y: rbDiagView.bounds.height))
        path.close()
        
        diagonalSplitLayer.path = path.cgPath
        diagonalSplitLayer.fillColor = UIColor.systemBlue.cgColor
        rbDiagView.layer.addSublayer(diagonalSplitLayer)
    }
    
    func drawforwardDiagonalSplits(){
        
        let diagonalSplitLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: byDiagView.bounds.width, y: byDiagView.bounds.height))
        path.addLine(to: CGPoint(x: 0, y: byDiagView.bounds.height))
        path.close()
        
        diagonalSplitLayer.path = path.cgPath
        diagonalSplitLayer.fillColor = UIColor.systemBlue.cgColor
        byDiagView.layer.addSublayer(diagonalSplitLayer)
        
    }
    func drawbackwardDiagonalSplits(){
        let diagonalSplitLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: ygDiagView.bounds.height))
        path.addLine(to: CGPoint(x: ygDiagView.bounds.width, y: 0))
        path.addLine(to: CGPoint(x: ygDiagView.bounds.width, y: ygDiagView.bounds.height))
        path.close()
        
        diagonalSplitLayer.path = path.cgPath
        diagonalSplitLayer.fillColor = UIColor.systemYellow.cgColor
        ygDiagView.layer.addSublayer(diagonalSplitLayer)
        
    }
    func AnimateTheButton(sender : UIButton){
        print("The Button is Animated")
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.3, options: [.curveEaseInOut], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }) { (_) in
            UIView.animate(withDuration: 0.5) {
                sender.transform = CGAffineTransform.identity
            }
        }
    }
    
    @IBAction func User1DiceBtn(_ sender: Any) {
        
        print("          ")
        print("######## The Blue Dice is Rolled #########")
        if BlueDiceSelection == true{
            
            print("The Value for the Blue Dice is Calculated")
            
            if SelectionofBlue1 == false && SelectionofBlue2 == false && SelectionofBlue3 == false && SelectionofBlue4 == false{
                
                a = Int.random(in: 0...5)
                
                
                // ROTATING 3d  dice Animation

                //let eyePosition: CGFloat = 250.0
                //UIView.animate(withDuration: 5) {
                //    var rotate = CATransform3DMakeRotation(180 * CGFloat.pi / 180, 0.0, 1.0, 0.0)
                //    rotate.m34 = -1.0 / eyePosition
                //    self.myView.layer.transform = rotate
                //}
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.Dice1ImageVw.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                    UIView.transition(with: self.Dice1ImageVw,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        self.Dice1ImageVw.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            self.Dice1ImageVw.transform = .identity
                        }
                    })}
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    
                    self.handleBlue1PinMovement(sender: self.bluepin1Btn, movedVariable: &self.BluePin1Moved )
                    self.handleBlue2PinMovement(sender: self.bluepin1Btn, movedVariable: &self.BluePin2Moved)
                    self.handleBlue3PinMovement(sender: self.bluepin1Btn, movedVariable: &self.BluePin3Moved)
                    self.handleBlue4PinMovement(sender: self.bluepin1Btn, movedVariable: &self.BluePin4Moved)
                    
                    
                    print("The Dice Value For User 1 : \(self.a)")
                    print("              ")
                    self.Dice1ImageVw.image = UIImage(named: self.diceimages[self.a])
                }
            }
            
            
        }
    }
    
    @IBAction func bluepin1Btn(_ sender: Any) {
        
        
        if SelectionofBlue1 == true {
            
            if bluepin1Btn.tag == 100 && a == 5 {
                Blue1Out = true
                bluepin1Btn.tag = BluepinstartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(bluepin1Btn.tag)")
                moveBluePin1ToNextView(sender: bluepin1Btn)
                
            }
            else if bluepin1Btn.tag != 100
            {
                let newTag = a + bluepin1Btn.tag + 1
                if newTag <= 58 {
                    animateBluePin1ToNextView(currentTag: bluepin1Btn.tag, targetTag: newTag)
                }
                else if bluepin1Btn.tag == 58 {
                    Blue1Out = false
                }
            }
            
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            BlueDiceSelection = a == 5 ? true : false
            RedDiceSelection = a == 5 ? false : true
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin1Btn.layer.backgroundColor = UIColor.clear.cgColor
            bluepin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if RedDiceSelection == true {
                
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
            } else {
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
        
        
    }
    
    func animateBluePin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin1Btn.tag = targetTag
            if bluepin1Btn.tag == targetTag{
                RedPinCutLogic(sender: bluepin1Btn)
                GreenPinCutLogic(sender: bluepin1Btn)
                YellowPinCutLogic(sender: bluepin1Btn)
            }
            moveBluePin1ToNextView(sender: bluepin1Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            bluepin1Btn.tag = currentTag + 1
            moveBluePin1ToNextView(sender: bluepin1Btn)
            animateBluePin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func bluepin2Btn(_ sender: Any) {
        
        print("The Second Blue Pin Button is Tapped")
        
        
        if SelectionofBlue2 == true {
            
            if bluepin2Btn.tag == 101 && a == 5 {
                Blue2Out = true
                bluepin2Btn.tag = BluepinstartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(bluepin2Btn.tag)")
                moveBluePin2ToNextView(sender: bluepin2Btn)
                
            }
            else if bluepin1Btn.tag != 101
            {
                let newTag = a + bluepin2Btn.tag + 1
                if newTag <= 58 {
                    //                     bluepin2Btn.tag = newTag
                    //                 moveBluePin2ToNextView(sender: bluepin2Btn)
                    animateBluePin2ToNextView(currentTag: bluepin2Btn.tag, targetTag: newTag)
                }
                else if bluepin2Btn.tag == 58 {
                    Blue2Out = false
                }
            }
            
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            BlueDiceSelection = a == 5 ? true : false
            RedDiceSelection = a == 5 ? false : true
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if RedDiceSelection == true {
                
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
            } else {
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
        
    }
    
    func animateBluePin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin2Btn.tag = targetTag
            
            if bluepin2Btn.tag == targetTag{
                RedPinCutLogic(sender: bluepin2Btn)
                GreenPinCutLogic(sender: bluepin2Btn)
                YellowPinCutLogic(sender: bluepin2Btn)
            }
            
            moveBluePin2ToNextView(sender: bluepin2Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            bluepin2Btn.tag = currentTag + 1
            moveBluePin2ToNextView(sender: bluepin2Btn)
            animateBluePin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func bluepin3Btn(_ sender: Any) {
        
        print ("The Third Blue Pin Button Is Tapped")
        
        if SelectionofBlue3 == true {
            
            if bluepin3Btn.tag == 102 && a == 5 {
                Blue3Out = true
                bluepin3Btn.tag = BluepinstartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(bluepin3Btn.tag)")
                moveBluePin3ToNextView(sender: bluepin3Btn)
                
            }
            else if bluepin1Btn.tag != 102
            {
                let newTag = a + bluepin3Btn.tag + 1
                if newTag <= 58 {
                    //                    bluepin3Btn.tag = newTag
                    //                moveBluePin3ToNextView(sender: bluepin3Btn)
                    animateBluePin3ToNextView(currentTag: bluepin3Btn.tag, targetTag: newTag)
                }
                else if bluepin3Btn.tag == 58 {
                    Blue3Out = false
                }
            }
            
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            BlueDiceSelection = a == 5 ? true : false
            RedDiceSelection = a == 5 ? false : true
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if RedDiceSelection == true {
                
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
            } else {
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    
    func animateBluePin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin3Btn.tag = targetTag
            
            if bluepin3Btn.tag == targetTag{
                
                RedPinCutLogic(sender: bluepin3Btn)
                GreenPinCutLogic(sender: bluepin3Btn)
                YellowPinCutLogic(sender: bluepin3Btn)
            }
            moveBluePin3ToNextView(sender: bluepin3Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            bluepin3Btn.tag = currentTag + 1
            moveBluePin3ToNextView(sender: bluepin3Btn)
            animateBluePin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func bluepin4Btn(_ sender: Any) {
        
        print(" The Fourth Blue Pin Button is Tapped")
        if SelectionofBlue4 == true {
            
            if bluepin4Btn.tag == 103 && a == 5 {
                Blue4Out = true
                bluepin4Btn.tag = BluepinstartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(bluepin4Btn.tag)")
                moveBluePin4ToNextView(sender: bluepin4Btn)
                
            }
            else if bluepin4Btn.tag != 103
            {
                let newTag = a + bluepin4Btn.tag + 1
                if newTag <= 58 {
                    //                    bluepin4Btn.tag = newTag
                    //                moveBluePin4ToNextView(sender: bluepin4Btn)
                    animateBluePin4ToNextView(currentTag: bluepin4Btn.tag, targetTag: newTag)
                }
                else if bluepin4Btn.tag == 58 {
                    Blue4Out = false
                }
            }
            
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            BlueDiceSelection = a == 5 ? true : false
            RedDiceSelection = a == 5 ? false : true
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if RedDiceSelection == true {
                
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
            } else {
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    
    
    func animateBluePin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin4Btn.tag = targetTag
            if bluepin4Btn.tag == targetTag{
                RedPinCutLogic(sender: bluepin4Btn)
                GreenPinCutLogic(sender: bluepin4Btn)
                YellowPinCutLogic(sender: bluepin4Btn)
            }
            
            moveBluePin4ToNextView(sender: bluepin4Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            bluepin4Btn.tag = currentTag + 1
            moveBluePin4ToNextView(sender: bluepin4Btn)
            animateBluePin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func User2DiceBtn(_ sender: Any) {
        
        print("           ")
        print("######### The Red Dice is Rolled ########")
        if RedDiceSelection == true{
            
            print("The RedDice is Selectable")
            
            if SelectionofRed1 == false && SelectionofRed2 == false && SelectionofRed3 == false && SelectionofRed4 == false{
                
                b = Int.random(in: 0...5)
                
                print("The Dice Value is Calculated")
                UIView.animate(withDuration: 0.2, animations: {
                    self.Dice2IamgeVw.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                    UIView.transition(with: self.Dice2IamgeVw,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        self.Dice2IamgeVw.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            self.Dice2IamgeVw.transform = .identity
                        }
                    })}
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    
                    self.handleRed1PinMovement(sender: self.redpin1Btn, movedVariable: &self.RedPin1Moved)
                    self.handleRed2PinMovement(sender: self.redpin2Btn, movedVariable: &self.RedPin2Moved)
                    self.handleRed3PinMovement(sender: self.redpin3Btn, movedVariable: &self.RedPin3Moved)
                    self.handleRed4PinMovement(sender: self.redpin4Btn, movedVariable: &self.RedPin4Moved)
                    
                    print("The Dice Value For User 2 : \(self.b)")
                    print("       ")
                    self.Dice2IamgeVw.image = UIImage(named: self.diceimages[self.b])
                }
            }
        }
        
    }
    
    
    @IBAction func redpin1Btn(_ sender: Any) {
        
        print(" The First Red Button is Tapped ")
        
        if SelectionofRed1 == true {
            
            if redpin1Btn.tag == 104 && b == 5 {
                Red1Out = true
                redpin1Btn.tag = redpinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(redpin1Btn.tag)")
                moveRedPin1ToNextView(sender: redpin1Btn)
                
            }
            else if redpin1Btn.tag != 104
            {
                let newTag = b + redpin1Btn.tag + 1
                if newTag <= 64 {
                    if redpin1Btn.tag <= 14 && newTag >= 14{
                        redpin1Btn.tag = 59 + (newTag - 14)
                        moveRedPin1ToNextView(sender: redpin1Btn)
                        
                    }
                    else if redpin1Btn.tag == 64 {
                        Red1Out = false
                    }
                    else{
                        animateRedPin1ToNextView(currentTag: redpin1Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            
            SelectionofRed1 = false
            SelectionofRed2 = false
            SelectionofRed3 = false
            SelectionofRed4 = false
            
            RedDiceSelection = b == 5 ? true : false
            GreenDiceSelection = b == 5 ? false : true
            
            redpin1Btn.layer.borderColor = UIColor.clear.cgColor
            redpin2Btn.layer.borderColor = UIColor.clear.cgColor
            redpin3Btn.layer.borderColor = UIColor.clear.cgColor
            redpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if GreenDiceSelection == true {
                
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
            } else {
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    func animateRedPin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            redpin1Btn.tag = targetTag
            
            if redpin1Btn.tag == targetTag{
                BluePinCutLogic(sender: redpin1Btn)
                GreenPinCutLogic(sender: redpin1Btn)
                YellowPinCutLogic(sender: redpin1Btn)
            }
            moveRedPin1ToNextView(sender: redpin1Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            redpin1Btn.tag = currentTag + 1
            moveRedPin1ToNextView(sender: redpin1Btn)
            animateRedPin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func redpin2Btn(_ sender: Any) {
        
        print("The Second Red Button is Tapped")
        
        if SelectionofRed2 == true {
            if redpin2Btn.tag == 105 && b == 5 {
                Red2Out = true
                redpin2Btn.tag = redpinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(redpin2Btn.tag)")
                moveRedPin2ToNextView(sender: redpin2Btn)
            }
            
            else if redpin2Btn.tag != 105
            {
                let newTag = b + redpin2Btn.tag + 1
                if newTag <= 64 {
                    if redpin2Btn.tag <= 14 && newTag >= 14{
                        redpin2Btn.tag = 59 + (newTag - 14)
                        moveRedPin2ToNextView(sender: redpin2Btn)
                        
                    }
                    else if redpin2Btn.tag == 64 {
                        Red2Out = false
                    }
                    else{
                        animateRedPin2ToNextView(currentTag: redpin2Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            SelectionofRed1 = false
            SelectionofRed2 = false
            SelectionofRed3 = false
            SelectionofRed4 = false
            
            RedDiceSelection = b == 5 ? true : false
            GreenDiceSelection = b == 5 ? false : true
            
            redpin1Btn.layer.borderColor = UIColor.clear.cgColor
            redpin2Btn.layer.borderColor = UIColor.clear.cgColor
            redpin3Btn.layer.borderColor = UIColor.clear.cgColor
            redpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if GreenDiceSelection == true {
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
            }
            else {
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
    func animateRedPin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            redpin2Btn.tag = targetTag
            if redpin2Btn.tag == targetTag{
                BluePinCutLogic(sender: redpin2Btn)
                GreenPinCutLogic(sender: redpin2Btn)
                YellowPinCutLogic(sender: redpin2Btn)
            }
            moveRedPin2ToNextView(sender: redpin2Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            redpin2Btn.tag = currentTag + 1
            moveRedPin2ToNextView(sender: redpin2Btn)
            animateRedPin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func redpin3Btn(_ sender: Any) {
        
        print(" The Third Red Button is Tapped")
        if SelectionofRed3 == true {
            if redpin3Btn.tag == 106 && b == 5 {
                Red3Out = true
                redpin3Btn.tag = redpinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(redpin3Btn.tag)")
                moveRedPin3ToNextView(sender: redpin3Btn)
            }
            
            else if redpin3Btn.tag != 106
            {
                let newTag = b + redpin3Btn.tag + 1
                if newTag <= 64 {
                    if redpin3Btn.tag <= 14 && newTag >= 14{
                        redpin3Btn.tag = 59 + (newTag - 14)
                        moveRedPin3ToNextView(sender: redpin3Btn)
                        
                    }
                    else if redpin3Btn.tag == 64 {
                        Red3Out = false
                    }
                    else{
                        animateRedPin3ToNextView(currentTag: redpin3Btn.tag, targetTag: newTag)
                    }
                }
            }
            
            SelectionofRed1 = false
            SelectionofRed2 = false
            SelectionofRed3 = false
            SelectionofRed4 = false
            
            RedDiceSelection = b == 5 ? true : false
            GreenDiceSelection = b == 5 ? false : true
            
            redpin1Btn.layer.borderColor = UIColor.clear.cgColor
            redpin2Btn.layer.borderColor = UIColor.clear.cgColor
            redpin3Btn.layer.borderColor = UIColor.clear.cgColor
            redpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if GreenDiceSelection == true {
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
            }
            else {
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
        }
        
    }
    
    func animateRedPin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            redpin3Btn.tag = targetTag
            if redpin3Btn.tag == targetTag{
                BluePinCutLogic(sender: redpin3Btn)
                GreenPinCutLogic(sender: redpin3Btn)
                YellowPinCutLogic(sender: redpin3Btn)
            }
            moveRedPin3ToNextView(sender: redpin3Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            redpin3Btn.tag = currentTag + 1
            moveRedPin3ToNextView(sender: redpin1Btn)
            animateRedPin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func redpin4Btn(_ sender: Any) {
        
        print("The Fourth Red Button is Tapped")
        
        if SelectionofRed4 == true {
            if redpin4Btn.tag == 107 && b == 5 {
                Red4Out = true
                redpin4Btn.tag = redpinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(redpin4Btn.tag)")
                moveRedPin4ToNextView(sender: redpin4Btn)
            }
            
            else if redpin4Btn.tag != 107
            {
                let newTag = b + redpin4Btn.tag + 1
                if newTag <= 64 {
                    if redpin4Btn.tag <= 14 && newTag >= 14{
                        redpin4Btn.tag = 59 + (newTag - 14)
                        moveRedPin4ToNextView(sender: redpin4Btn)
                        
                    }
                    else if redpin4Btn.tag == 64 {
                        Red4Out = false
                    }
                    else{
                        animateRedPin4ToNextView(currentTag: redpin4Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            SelectionofRed1 = false
            SelectionofRed2 = false
            SelectionofRed3 = false
            SelectionofRed4 = false
            
            RedDiceSelection = b == 5 ? true : false
            GreenDiceSelection = b == 5 ? false : true
            
            redpin1Btn.layer.borderColor = UIColor.clear.cgColor
            redpin2Btn.layer.borderColor = UIColor.clear.cgColor
            redpin3Btn.layer.borderColor = UIColor.clear.cgColor
            redpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if GreenDiceSelection == true {
                
                User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
            }
            else {
                User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
    
    
    func animateRedPin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            redpin4Btn.tag = targetTag
            if redpin4Btn.tag == targetTag{
                BluePinCutLogic(sender: redpin4Btn)
                GreenPinCutLogic(sender: redpin4Btn)
                YellowPinCutLogic(sender: redpin4Btn)
            }
            moveRedPin4ToNextView(sender: redpin4Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            redpin4Btn.tag = currentTag + 1
            moveRedPin4ToNextView(sender: redpin4Btn)
            animateRedPin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    // Green  Dice & Token
    
    @IBAction func User3DiceBtn(_ sender: Any) {
        
        print("          ")
        print("########### The Green Dice is Rolled ##########")
        if GreenDiceSelection == true{
            
            print("The Value for the Green Dice is Calculated")
            
            if SelectionofGreen1 == false && SelectionofGreen2 == false && SelectionofGreen3 == false && SelectionofGreen4 == false{
                
                c = Int.random(in: 0...5)
                
                UIView.animate(withDuration: 0.2, animations: {
                    // Apply scaling effect for a snappy animation
                    self.Dice3ImageVw.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                    // Completion block
                    // Animate the image change with a fade-in effect
                    UIView.transition(with: self.Dice3ImageVw,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        // Set the new image
                        self.Dice3ImageVw.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        // Reset the transform to remove the scaling effect
                        UIView.animate(withDuration: 0.1) {
                            self.Dice3ImageVw.transform = .identity
                        }
                    })}
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    
                    self.handleGreenPin1Movement(sender: self.greenpin1Btn, movedVariable: &self.GreenPin1Moved)
                    self.handleGreenPin2Movement(sender: self.greenpin2Btn, movedVariable: &self.GreenPin2Moved)
                    self.handleGreenPin3Movement(sender: self.greenpin3Btn, movedVariable: &self.GreenPin3Moved)
                    self.handleGreenPin4Movement(sender: self.greenpin4Btn, movedVariable: &self.GreenPin4Moved)
                    
                    print("The Dice Value For User 3 : \(self.c)")
                    print("     ")
                    self.Dice3ImageVw.image = UIImage(named: self.diceimages[self.c])
                }
            }
        }
        
    }
    
    @IBAction func greenpin1Btn(_ sender: Any) {
        print("The Second Green Button is Tapped")
        
        
        if SelectionofGreen1 == true {
            
            if greenpin1Btn.tag == 108 && c == 5 {
                Green1Out = true
                greenpin1Btn.tag = greenPinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(greenpin1Btn.tag)")
                Movegreenpin1toNextView(sender: greenpin1Btn)
                
            }
            else if greenpin1Btn.tag != 108
            {
                let newTag = c + greenpin1Btn.tag + 1
                if newTag <= 70{
                    if greenpin1Btn.tag <= 27 && newTag >= 27 {
                        print("The Green Pin Tag Value : \(greenpin1Btn.tag)")
                        greenpin1Btn.tag = 65 + (newTag - 27)
                        Movegreenpin1toNextView(sender: greenpin1Btn)
                    } else if greenpin1Btn.tag == 70 {
                        Green1Out = false
                        // WinnerView()
                    } else {
                        animateGreenPin1ToNextView(currentTag: greenpin1Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            
            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = c == 5 ? true : false
            YellowDiceSelection = c == 5 ? false : true
            
            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if YellowDiceSelection == true {
                
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            } else {
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    func animateGreenPin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin1Btn.tag = targetTag
            
            if greenpin1Btn.tag == targetTag{
                BluePinCutLogic(sender: greenpin1Btn)
                RedPinCutLogic(sender: greenpin1Btn)
                YellowPinCutLogic(sender: greenpin1Btn)
            }
            Movegreenpin1toNextView(sender: greenpin1Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            greenpin1Btn.tag = currentTag + 1
            Movegreenpin1toNextView(sender: greenpin1Btn)
            animateGreenPin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func greenpin2Btn(_ sender: Any) {
        print("The Second Green Button is Tapped")
        
        
        if SelectionofGreen2 == true {
            
            if greenpin2Btn.tag == 109 && c == 5 {
                Green2Out = true
                greenpin2Btn.tag = greenPinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(greenpin2Btn.tag)")
                Movegreenpin2toNextView(sender: greenpin2Btn)
                
            }
            else if greenpin2Btn.tag != 109
            {
                let newTag = c + greenpin2Btn.tag + 1
                if newTag <= 70{
                    if greenpin2Btn.tag <= 27 && newTag >= 27 {
                        print("The Green Pin Tag Value : \(greenpin2Btn.tag)")
                        greenpin2Btn.tag = 65 + (newTag - 27)
                        Movegreenpin2toNextView(sender: greenpin2Btn)
                    } else if greenpin2Btn.tag == 70 {
                        Green2Out = false
                        // WinnerView()
                    } else {
                        //                        greenpin2Btn.tag = newTag
                        //                        Movegreenpin2toNextView(sender: greenpin2Btn)
                        animateGreenPin2ToNextView(currentTag: greenpin2Btn.tag, targetTag: newTag)
                        
                    }
                }
                
            }
            
            
            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = c == 5 ? true : false
            YellowDiceSelection = c == 5 ? false : true
            
            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if YellowDiceSelection == true {
                
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            } else {
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    
    func animateGreenPin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin2Btn.tag = targetTag
            if greenpin2Btn.tag == targetTag{
                BluePinCutLogic(sender: greenpin2Btn)
                RedPinCutLogic(sender: greenpin2Btn)
                YellowPinCutLogic(sender: greenpin2Btn)
            }
            Movegreenpin2toNextView(sender: greenpin2Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            greenpin2Btn.tag = currentTag + 1
            Movegreenpin2toNextView(sender: greenpin2Btn)
            animateGreenPin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func greenpin3Btn(_ sender: Any) {
        
        print("The Third Green Button is Tapped")
        
        
        if SelectionofGreen3 == true {
            
            if greenpin3Btn.tag == 110 && c == 5 {
                Green3Out = true
                greenpin3Btn.tag = greenPinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(greenpin3Btn.tag)")
                Movegreenpin3toNextView(sender: greenpin3Btn)
                
            }
            else if greenpin3Btn.tag != 110
            {
                let newTag = c + greenpin3Btn.tag + 1
                if newTag <= 70{
                    if greenpin3Btn.tag <= 27 && newTag >= 27 {
                        print("The Green Pin Tag Value : \(greenpin3Btn.tag)")
                        greenpin3Btn.tag = 65 + (newTag - 27)
                        Movegreenpin3toNextView(sender: greenpin3Btn)
                    } else if greenpin3Btn.tag == 70 {
                        Green3Out = false
                        // WinnerView()
                    } else {
                        //                        greenpin3Btn.tag = newTag
                        //                        Movegreenpin3toNextView(sender: greenpin3Btn)
                        animateGreenPin3ToNextView(currentTag: greenpin3Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            
            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = c == 5 ? true : false
            YellowDiceSelection = c == 5 ? false : true
            //
            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if YellowDiceSelection == true {
                
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            } else {
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
    }
    
    func animateGreenPin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin3Btn.tag = targetTag
            if greenpin3Btn.tag == targetTag{
                BluePinCutLogic(sender: greenpin3Btn)
                RedPinCutLogic(sender: greenpin3Btn)
                YellowPinCutLogic(sender: greenpin3Btn)
            }
            Movegreenpin3toNextView(sender: greenpin3Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            greenpin3Btn.tag = currentTag + 1
            Movegreenpin3toNextView(sender: greenpin3Btn)
            animateGreenPin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func greenpin4Btn(_ sender: Any) {
        
        print("The Fourth Green Button is Tapped")
        
        
        
        if SelectionofGreen4 == true {
            
            if greenpin4Btn.tag == 111 && c == 5 {
                Green4Out = true
                greenpin4Btn.tag = greenPinStartIndexVw.tag
                print("The tag Value of BluePin1Btn : \(greenpin4Btn.tag)")
                Movegreenpin4toNextView(sender: greenpin4Btn)
                
            }
            else if greenpin4Btn.tag != 111
            {
                let newTag = c + greenpin4Btn.tag + 1
                if newTag <= 70{
                    if greenpin4Btn.tag <= 27 && newTag >= 27 {
                        print("The Green Pin Tag Value : \(greenpin4Btn.tag)")
                        greenpin4Btn.tag = 65 + (newTag - 27)
                        Movegreenpin4toNextView(sender: greenpin4Btn)
                    } else if greenpin4Btn.tag == 70 {
                        Green4Out = false
                        // WinnerView()
                    } else {
                        //                        greenpin4Btn.tag = newTag
                        //                        Movegreenpin4toNextView(sender: greenpin4Btn)
                        animateGreenPin4ToNextView(currentTag: greenpin4Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
            
            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = c == 5 ? true : false
            YellowDiceSelection = c == 5 ? false : true
            
            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if YellowDiceSelection == true {
                
                User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            } else {
                User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            
            
        }
        
    }
    
    
    
    func animateGreenPin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin4Btn.tag = targetTag
            if greenpin4Btn.tag == targetTag{
                BluePinCutLogic(sender: greenpin4Btn)
                RedPinCutLogic(sender: greenpin4Btn)
                YellowPinCutLogic(sender: greenpin4Btn)
            }
            Movegreenpin4toNextView(sender: greenpin4Btn)
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            greenpin4Btn.tag = currentTag + 1
            Movegreenpin4toNextView(sender: greenpin4Btn)
            animateGreenPin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func User4DiceBtn(_ sender: Any) {
        
        print("         ")
        print("########## The Yellow Dice is Rolled ##########")
        if YellowDiceSelection == true{
            
            if SelectionofYellow1 == false && SelectionofYellow2 == false && SelectionofYellow3 == false && SelectionofYellow4 == false{
                
                d = Int.random(in: 0...5)
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.Dice4ImageVw.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                  
                    UIView.transition(with: self.Dice4ImageVw,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        self.Dice4ImageVw.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            self.Dice4ImageVw.transform = .identity
                        }
                    })}
            
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    
                    self.handleYellow1pinMovement(sender: self.yellowpin1Btn, movedVariable: &self.YellowPin1Moved)
                    self.handleYellow2pinMovement(sender: self.yellowpin2Btn, movedVariable: &self.YellowPin2Moved)
                    self.handleYellow3pinMovement(sender: self.yellowpin3Btn, movedVariable: &self.YellowPin3Moved)
                    self.handleYellow4pinMovement(sender: self.yellowpin4Btn, movedVariable: &self.YellowPin4Moved)
                    
                    print("The Dice Value For User 4 : \(self.d)")
                    print("       ")
                    self.Dice4ImageVw.image = UIImage(named: self.diceimages[self.d])
                }
        }
    }
    
}
    
    
    @IBAction func yellowpin1Btn(_ sender: Any) {
        
        print("The First Yellow Button is Tapped")
        
        if SelectionofYellow1 == true {
            
            print("Here Slection 1 of Yellow Button is True")
            
                if yellowpin1Btn.tag == 112 && d == 5 {
                    Yellow1Out = true
                    yellowpin1Btn.tag = YellowPinstartIndexV.tag
                    moveYellowPin1ToNextView(sender: yellowpin1Btn)
                    
                }
                else if yellowpin1Btn.tag != 112
                {
                    let newTag = d + yellowpin1Btn.tag + 1
                    if newTag <= 76{
                        if yellowpin1Btn.tag <= 40 && newTag >= 40 {
                            yellowpin1Btn.tag = 71 + (newTag - 40)
                            moveYellowPin1ToNextView(sender: yellowpin1Btn)
                        } else if greenpin1Btn.tag == 76 {
                            Yellow1Out = false
                            // WinnerView()
                        } else {
                            animateYellowPin1ToNextView(currentTag: yellowpin1Btn.tag, targetTag: newTag)
                        }
                    }
                   
                }
                
                
                SelectionofYellow1 = false
                SelectionofYellow2 = false
                SelectionofYellow3 = false
                SelectionofYellow4 = false
                
                YellowDiceSelection = d == 5 ? true : false
                BlueDiceSelection = d == 5 ? false : true
                
                yellowpin1Btn.layer.borderColor = UIColor.clear.cgColor
                yellowpin2Btn.layer.borderColor = UIColor.clear.cgColor
                yellowpin3Btn.layer.borderColor = UIColor.clear.cgColor
                yellowpin4Btn.layer.borderColor = UIColor.clear.cgColor
                
                if BlueDiceSelection == true {
                    
                    User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
                    User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
                } 
                else {
                    
                    User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
                    User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
                    }
                

            
        }
        
        
    }
    
    func animateYellowPin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            yellowpin1Btn.tag = targetTag
            if yellowpin1Btn.tag == targetTag{
                BluePinCutLogic(sender: yellowpin1Btn)
                RedPinCutLogic(sender: yellowpin1Btn)
                GreenPinCutLogic(sender: yellowpin1Btn)
            }
            moveYellowPin1ToNextView(sender: yellowpin1Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            yellowpin1Btn.tag = currentTag + 1
            moveYellowPin1ToNextView(sender: yellowpin1Btn)
            animateYellowPin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func yellowpin2Btn(_ sender: Any) {
        
        print("The  Second Yellow Button is Tapped")
        if SelectionofYellow2 == true {
            
            print("Here Slection 2 of Yellow Button is True")
            if yellowpin2Btn.tag == 113 && d == 5 {
                Yellow2Out = true
                yellowpin2Btn.tag = YellowPinstartIndexV.tag
                moveYellowPin2ToNextView(sender: yellowpin2Btn)
                
            }
            else if yellowpin2Btn.tag != 113
            {
                let newTag = d + yellowpin2Btn.tag + 1
                if newTag <= 76{
                    if yellowpin2Btn.tag <= 40 && newTag >= 40 {
                        yellowpin2Btn.tag = 71 + (newTag - 40)
                        moveYellowPin2ToNextView(sender: yellowpin2Btn)
                    }
                    else if yellowpin2Btn.tag == 76 {
                        Yellow2Out = false
                    } 
                    else {
//                        yellowpin2Btn.tag = newTag
//                        moveYellowPin2ToNextView(sender: yellowpin2Btn)
                        animateYellowPin2ToNextView(currentTag: yellowpin2Btn.tag, targetTag: newTag)
                    }
                }
                
            }
            
//            
            SelectionofYellow1 = false
            SelectionofYellow2 = false
            SelectionofYellow3 = false
            SelectionofYellow4 = false
            
            YellowDiceSelection = d == 5 ? true : false
            BlueDiceSelection = d == 5 ? false : true
//
            yellowpin1Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin2Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin3Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
    }
    func animateYellowPin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            yellowpin2Btn.tag = targetTag
            if yellowpin2Btn.tag == targetTag{
                BluePinCutLogic(sender: yellowpin2Btn)
                RedPinCutLogic(sender: yellowpin2Btn)
                GreenPinCutLogic(sender: yellowpin2Btn)
            }
            moveYellowPin2ToNextView(sender: yellowpin2Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            yellowpin2Btn.tag = currentTag + 1
            moveYellowPin2ToNextView(sender: yellowpin2Btn)
            animateYellowPin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func yellowpin3Btn(_ sender: Any) {
        
        print("The Third Yellow Button is tapped")
        if SelectionofYellow3 == true {
            print("Here Slection 3 of Yellow Button is True")

            if yellowpin3Btn.tag == 114 && d == 5 {
                Yellow3Out = true
                yellowpin3Btn.tag = YellowPinstartIndexV.tag
                moveYellowPin3ToNextView(sender: yellowpin3Btn)
                
            }
            else if yellowpin3Btn.tag != 114
            {
                let newTag = d + yellowpin3Btn.tag + 1
                if newTag <= 76{
                    if yellowpin3Btn.tag <= 40 && newTag >= 40 {
                        yellowpin3Btn.tag = 71 + (newTag - 40)
                        moveYellowPin3ToNextView(sender: yellowpin3Btn)
                    }
                    else if yellowpin3Btn.tag == 76 {
                        Yellow3Out = false
                    }
                    else {
//                        yellowpin3Btn.tag = newTag
//                        moveYellowPin3ToNextView(sender: yellowpin3Btn)
                        animateYellowPin3ToNextView(currentTag: yellowpin3Btn.tag, targetTag: newTag)
                    }
                }
               
            }
            
            
            SelectionofYellow1 = false
            SelectionofYellow2 = false
            SelectionofYellow3 = false
            SelectionofYellow4 = false
            
            YellowDiceSelection = d == 5 ? true : false
            BlueDiceSelection = d == 5 ? false : true
            
            yellowpin1Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin2Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin3Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
    }
    
    func animateYellowPin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            yellowpin3Btn.tag = targetTag
            if yellowpin3Btn.tag == targetTag{
                BluePinCutLogic(sender: yellowpin3Btn)
                RedPinCutLogic(sender: yellowpin3Btn)
                GreenPinCutLogic(sender: yellowpin3Btn)
            }
            moveYellowPin3ToNextView(sender: yellowpin3Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            yellowpin3Btn.tag = currentTag + 1
            moveYellowPin3ToNextView(sender: yellowpin3Btn)
            animateYellowPin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    @IBAction func yellowpin4Btn(_ sender: Any) {
        
        print("The Fourth Yellow Button is Tapped")
        
        if SelectionofYellow4 == true {

            if yellowpin4Btn.tag == 115 && d == 5 {
                Yellow4Out = true
                yellowpin4Btn.tag = YellowPinstartIndexV.tag
               moveYellowPin4ToNextView(sender: yellowpin4Btn)
                
            }
            else if yellowpin4Btn.tag != 115
            {
                let newTag = d + yellowpin4Btn.tag + 1
                if newTag <= 76{
                    if yellowpin4Btn.tag <= 40 && newTag >= 40 {
                        print("The Green Pin Tag Value : \(yellowpin4Btn.tag)")
                        yellowpin4Btn.tag = 71 + (newTag - 40)
                        moveYellowPin4ToNextView(sender: yellowpin4Btn)
                    }
                    else if yellowpin4Btn.tag == 76 {
                        Yellow4Out = false
                    }
                    else {
//                        yellowpin4Btn.tag = newTag
//                        moveYellowPin4ToNextView(sender: yellowpin4Btn)
                        animateYellowPin4ToNextView(currentTag: yellowpin4Btn.tag, targetTag: newTag)
                    }
                }
               
            }
            
            
            SelectionofYellow1 = false
            SelectionofYellow2 = false
            SelectionofYellow3 = false
            SelectionofYellow4 = false
            
            YellowDiceSelection = d == 5 ? true : false
            BlueDiceSelection = d == 5 ? false : true
//
            yellowpin1Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin2Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin3Btn.layer.borderColor = UIColor.clear.cgColor
            yellowpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                
                User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
                User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
                User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
    }
    
    
    func animateYellowPin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            yellowpin4Btn.tag = targetTag
            if yellowpin4Btn.tag == targetTag{
                BluePinCutLogic(sender: yellowpin4Btn)
                RedPinCutLogic(sender: yellowpin4Btn)
                GreenPinCutLogic(sender: yellowpin4Btn)
            }
            moveYellowPin4ToNextView(sender: yellowpin4Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            yellowpin4Btn.tag = currentTag + 1
            moveYellowPin4ToNextView(sender: yellowpin4Btn)
            animateYellowPin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func ExitBtn(_ sender: Any) {
        print("The Exit Button is Tapped")
        let alert = UIAlertController(title: "Are You Sure to Quit", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in

            self.Yes()

        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func Yes(){
        if let viewController = navigationController?.viewControllers.first(where: {$0 is SelectPlayerViewController}) {
           
              navigationController?.popToViewController(viewController, animated: false)
        }
    }
}

