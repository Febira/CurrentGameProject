//
//  GameBoardVC.swift
//  GameProject
//
//  Created by Vison001 on 01/12/23.
//

import UIKit
import Lottie

class GameBoardVC: UIViewController{
    
    @IBOutlet weak var gameBoardView: UIView!
    @IBOutlet weak var DiceAnimationView: UIView!
    
    @IBOutlet weak var GreenSafeAreaView: UIView!
    @IBOutlet weak var greepinMainViewStartIndexVW: UIView!
    @IBOutlet weak var bluepin1BtnInitialView: UIView!
    
    @IBOutlet weak var bluepin1Btn: UIButton!
    @IBOutlet weak var user2View: UIView!
    @IBOutlet weak var user1View: UIView!

    @IBOutlet weak var User2name: UILabel!
    @IBOutlet weak var User1name: UILabel!
    
    @IBOutlet weak var imageView1Btn: UIButton!
    @IBOutlet weak var greenpinEndIndexVW: UIView!
    @IBOutlet weak var greenpinStartIndexVW: UIView!
    
    @IBOutlet weak var ygDiagView: UIView!
    @IBOutlet weak var byDiagView: UIView!
    @IBOutlet weak var rbDiagView: UIView!
    @IBOutlet weak var rgDiagView: UIView!
    
    @IBOutlet weak var bluePinStartIndexVW: UIView!
    @IBOutlet weak var bluepin4Btn: UIButton!
    @IBOutlet weak var bluepin3Btn: UIButton!
    @IBOutlet weak var bluePin2Btn: UIButton!
    
    @IBOutlet weak var greenpin1Btn: UIButton!
    @IBOutlet weak var greenpin4Btn: UIButton!
    @IBOutlet weak var greenpin3Btn: UIButton!
    @IBOutlet weak var greenpin2Btn: UIButton!
    
    @IBOutlet weak var yellowpinImageVW: UIImageView!
    @IBOutlet weak var greenpinImageVW: UIImageView!
    @IBOutlet weak var redpinImageVW: UIImageView!
    @IBOutlet weak var bluepinImageVW: UIImageView!
    
    @IBOutlet weak var imageView2Btn: UIButton!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var BluesafeAreaView: UIView!
    
    @IBOutlet weak var ExitButton: UIImageView!
    
    var Winnername : String = "Winner"
    
    var green1Out : Bool  = false
    var green2Out : Bool  = false
    var green3Out : Bool  = false
    var green4Out : Bool  = false
    
    var blue1Out : Bool  = false
    var blue2Out : Bool  = false
    var blue3Out : Bool  = false
    var blue4Out : Bool  = false
    
    var Username1 : String = ""
    var Username2 : String = ""
    
    var currentPlayer: Int = 1
    
    var diceimages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var currentIndex = 0

    var SelectionofGreen1 : Bool = false
    var SelectionofGreen2 : Bool = false
    var SelectionofGreen3 : Bool = false
    var SelectionofGreen4 : Bool = false
    
    var SelectionofBlue1 : Bool = false
    var SelectionofBlue2 : Bool = false
    var SelectionofBlue3 : Bool = false
    var SelectionofBlue4 : Bool = false
    
    var a : Int = 0
    var b : Int = 0
    
    var user1name : String!
    var user2name : String!
    
    var resetTag : Bool = false
    var resettag : Int = 0
    
    var GreenDiceSelection : Bool = true
    var BlueDiceSelection : Bool = false
    
    var Highlight1 : Bool = false
    var Highlight2 : Bool = false
    //    let animationView = LottieAnimationView()
    
    var bluepin1Moved : Bool = false
    var bluepin2Moved : Bool = false
    var bluepin3Moved : Bool = false
    var bluepin4Moved : Bool = false
    
    var greenpin1Moved: Bool = false
    var greenpin2Moved : Bool = false
    var greenpin3Moved : Bool = false
    var greenpin4Moved : Bool = false
    
    var MoveisSuccessfull : Bool = false
    var DiceRotationInProgress : Bool = false
    
    var Selectionofblue1 : Bool = false
    var Selectionofblue2 : Bool = false
    var Selectionofblue3 : Bool = false
    var Selectionofblue4 : Bool = false
    
    var SelectionofRed1 : Bool = false
    var SelectionofRed2 : Bool = false
    var SelectionofRed3 : Bool = false
    var SelectionofRed4 : Bool = false
    
    var Selectionofgreen1 : Bool = false
    var Selectionofgreen2 : Bool = false
    var Selectionofgreen3 : Bool = false
    var Selectionofgreen4 : Bool = false
    
    var SelectionofYellow1 : Bool = false
    var SelectionofYellow2 : Bool = false
    var SelectionofYellow3 : Bool = false
    var SelectionofYellow4 : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true

        
//        Winnername.delegate = self
        addBordersToViews()
        drawforwardDiagonalSplit()
        drawforwardDiagonalSplits()
        drawbackwardDiagonalSplit()
        drawbackwardDiagonalSplits()
        
//        setupAnimation()
        
        //Blue Token
        User1name.text = UserDefaults.standard.string(forKey: "User1name")
        User2name.text = UserDefaults.standard.string(forKey: "User2name")
        
        user1View.layer.cornerRadius = 10
        user2View.layer.cornerRadius = 10
        
        //        Highlight1 =  true
        imageView1Btn.layer.borderWidth = 3.0
        imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
        
        imageView2Btn.layer.borderWidth = 3.0
        imageView2Btn.layer.borderColor = UIColor.clear.cgColor
        
        greenpin1Btn.layer.borderWidth = 2.0
        greenpin2Btn.layer.borderWidth = 2.0
        greenpin3Btn.layer.borderWidth = 2.0
        greenpin4Btn.layer.borderWidth = 2.0
        
        greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
        greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        bluepin1Btn.layer.borderWidth = 2.0
        bluePin2Btn.layer.borderWidth = 2.0
        bluepin3Btn.layer.borderWidth = 2.0
        bluepin4Btn.layer.borderWidth = 2.0
        
        bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
        bluePin2Btn.layer.borderColor = UIColor.clear.cgColor
        bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
        bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
        
        //
        //        imageView1Btn.addHighlightOnTap(to: [imageView1Btn])
        //        imageView2Btn.addHighlightOnTap(to: [imageView2Btn])
        
    }
    
    let animationView = LottieAnimationView()
    
    func setupAnimation(){
        animationView.animation = LottieAnimation.named("Dice Indication")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    //Stack View Customised Border
    func addBordersToViews() {
        for case let horizontalStackView as UIStackView in verticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                addCustomBorder(to: innerView)
            }
        }
    }
    
    //To Provide Custom Border For the View In The StackView
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
    
    //LineraGradient Background
 
    // Diagonal Split
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

    // User1 Dice 1 Btn
    func changeImageWithTransition() {
           let newIndex = Int.random(in: 0..<diceimages.count)
           currentIndex = newIndex
           // Perform a crossfade transition
           UIView.transition(with: imageView1,
                             duration: 0.5,
                             options: .transitionCrossDissolve,
                             animations: {
                                 self.updateImageView()
                             },
                             completion: nil)
       }
    func updateImageView() {
           imageView1.image = UIImage(named: diceimages[currentIndex])
       }
    @IBAction func imageview1Btn(_ sender: UIButton) {
         if  GreenDiceSelection == true
        {
            
            
            
            print("The Dice Turn Over Chance is Given For dice 1")
            
            print("########## Green Dice is Rolled #######")
            
            //For Tapping The Green Dice
            if SelectionofGreen1 == false && SelectionofGreen2 == false && SelectionofGreen3 == false && SelectionofGreen4 == false
             {
                print("The SelectionofDice: True")
                
                print("The User 1 Dice Is Rolled")
                
                a = Int.random(in: 0...5)
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.imageView1.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                    UIView.transition(with: self.imageView1,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        self.imageView1.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            self.imageView1.transform = .identity
                        }
                    })}
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [self] in
                    
                    handleGreen1PinMovement(sender: greenpin1Btn, movedVariable: &greenpin1Moved)
                    handleGreen2PinMovement(sender: greenpin2Btn, movedVariable: &greenpin2Moved)
                    handleGreen3PinMovement(sender: greenpin3Btn, movedVariable: &greenpin3Moved)
                    handleGreen4PinMovement(sender: greenpin4Btn, movedVariable: &greenpin4Moved)
                    
                    print("The Dice Value For User 1 : \(a)")
                    print("              ")
                    
                    imageView1.image = UIImage(named: diceimages[self.a])
                    
                }
            }
            
            
        }
    }

    @IBAction func greenPin1Btn(_ sender: UIButton) {
            print("The First Green Button Is Tapped")

            if SelectionofGreen1 == true {
                
                if greenpin1Btn.tag == 101 && a == 5 {
                    greenpin1Btn.tag = greenpinStartIndexVW.tag
                    green1Out = true
                    moveGreenPin1ToNextView(sender: greenpin1Btn)
                } 
                else if greenpin1Btn.tag != 101 {
                    
                    let newTag = a + greenpin1Btn.tag + 1
                    print("The Calculated Tag Value for GreenPin1Btn : \(newTag)")
                   
                    if newTag <= 95 {
                        if greenpin1Btn.tag <= 27 && newTag >= 27 {
                            greenpin1Btn.tag = 90 + (newTag - 27)
                            moveGreenPin1ToNextView(sender: greenpin1Btn)
                        }
                        else if greenpin1Btn.tag == 95 {
                            green1Out = true
                        }
                        else {
                           print("       ")
                            print("The Normal Game Flow For GreenPin1Btn")
                            animateGreenPin1ToNextView(currentTag: greenpin1Btn.tag, targetTag: newTag)
                        }
                    } else {
                        print("The Tag Value of GreenPin1btn Exceeds 95")
                    }
                }

                SelectionofGreen1 = false
                SelectionofGreen2 = false
                SelectionofGreen3 = false
                SelectionofGreen4 = false

                GreenDiceSelection = a == 5 ? true : false
                BlueDiceSelection = a == 5 ? false : true

                greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
                greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
                greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
                greenpin4Btn.layer.borderColor = UIColor.clear.cgColor

                if BlueDiceSelection == true {
                    imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                    imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
                } else {
                    imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                    imageView2Btn.layer.borderColor = UIColor.clear.cgColor
                }
                
            }
        }

       
    func animateGreenPin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin1Btn.tag = targetTag
            print("The Target Tag Value is : \(targetTag)")
            if greenpin1Btn.tag == targetTag{
                BluePinKillLogic(sender: greenpin1Btn)
            }
            moveGreenPin1ToNextView(sender: greenpin1Btn)

            return
        }
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            greenpin1Btn.tag = currentTag + 1
            moveGreenPin1ToNextView(sender: greenpin1Btn)
            animateGreenPin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func greenpin2Btn(_ sender: UIButton) {
        
        print ("The second Green Button Is Tapped")
        
        if SelectionofGreen2 == true {
            
            if greenpin2Btn.tag == 102 && a == 5 {
                greenpin2Btn.tag = greenpinStartIndexVW.tag
                green2Out = true
                moveGreenPin2ToNextView(sender: greenpin2Btn)
                
            }
            
            else if greenpin2Btn.tag != 102 {
                let newTag = a + greenpin2Btn.tag + 1
                print("The Calculated Tag Value for GreenPin1Btn : \(newTag)")
                
                if newTag <= 95 {
                    if greenpin2Btn.tag <= 27 && newTag >= 27 {
                        greenpin2Btn.tag = 90 + (newTag - 27)
                        moveGreenPin2ToNextView(sender: greenpin2Btn)
                    }
                    else if greenpin2Btn.tag == 95 {
                        green2Out = false
                    }
                    else {
                        print("#### The GreenPin1Btn Tag Value : \(greenpin2Btn.tag)")
                        animateGreenPin2ToNextView(currentTag: greenpin2Btn.tag, targetTag: newTag)
                    }
                } else {
                    print("The Tag Value of GreenPin1btn Exceeds 95")
                }
            }

            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = a == 5 ? true : false
            BlueDiceSelection = a == 5 ? false : true

            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            
        }
    }
    func animateGreenPin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin2Btn.tag = targetTag
            if greenpin2Btn.tag == targetTag{
                BluePinKillLogic(sender: greenpin2Btn)
            }
            moveGreenPin2ToNextView(sender: greenpin2Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            greenpin2Btn.tag = currentTag + 1
            moveGreenPin2ToNextView(sender: greenpin2Btn)
            animateGreenPin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }

    @IBAction func greenpin3Btn(_ sender: UIButton) {
        
        print ("The Third Green Button Is Tapped")
        
        if SelectionofGreen3 == true {
            
            if greenpin3Btn.tag == 103 && a == 5 {
                greenpin3Btn.tag = greenpinStartIndexVW.tag
                green3Out = true
                moveGreenPin3ToNextView(sender: greenpin3Btn)
                
            }
//
            else if greenpin3Btn.tag != 103 {
                let newTag = a + greenpin3Btn.tag + 1
                print("The Calculated Tag Value for GreenPin1Btn : \(newTag)")
                
                if newTag <= 95 {
                    if greenpin3Btn.tag <= 27 && newTag >= 27 {
                        greenpin3Btn.tag = 90 + (newTag - 27)
                        moveGreenPin3ToNextView(sender: greenpin3Btn)
                    }
                    else if greenpin3Btn.tag == 95 {
                        green3Out = false
                    }
                    else {
                        print("#### The GreenPin1Btn Tag Value : \(greenpin3Btn.tag)")
                        animateGreenPin3ToNextView(currentTag: greenpin3Btn.tag, targetTag: newTag)
                    }
                } else {
                    print("The Tag Value of GreenPin1btn Exceeds 95")
                }
            }

            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = a == 5 ? true : false
            BlueDiceSelection = a == 5 ? false : true

            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            
        }
    }
    
    func animateGreenPin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin3Btn.tag = targetTag
            if greenpin3Btn.tag == targetTag{
                BluePinKillLogic(sender: greenpin3Btn)
            }
            moveGreenPin3ToNextView(sender: greenpin3Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            greenpin3Btn.tag = currentTag + 1
            moveGreenPin3ToNextView(sender: greenpin3Btn)
            animateGreenPin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func greenpin4Btn(_ sender: UIButton) {
        
        print ("The Fourth Green Button Is Tapped")
        
        if SelectionofGreen4 == true {
            
            if greenpin4Btn.tag == 104 && a == 5 {
                greenpin4Btn.tag = greenpinStartIndexVW.tag
                green4Out = true
                moveGreenPin4ToNextView(sender: greenpin4Btn)
                
            }
//
            else if greenpin4Btn.tag != 104 {
                let newTag = a + greenpin4Btn.tag + 1
                print("The Calculated Tag Value for GreenPin1Btn : \(newTag)")
                
                if newTag <= 95 {
                    if greenpin4Btn.tag <= 27 && newTag >= 27 {
                        greenpin4Btn.tag = 90 + (newTag - 27)
                        moveGreenPin4ToNextView(sender: greenpin4Btn)
                        animateGreenPin4ToNextView(currentTag: greenpin4Btn.tag, targetTag: newTag)
                    }
                    else if greenpin4Btn.tag == 95 {
                        green4Out = false
                    }
                    else {
                        print("#### The GreenPin1Btn Tag Value : \(greenpin4Btn.tag)")
                        animateGreenPin4ToNextView(currentTag: greenpin4Btn.tag, targetTag: newTag)
                    }
                } else {
                    print("The Tag Value of GreenPin1btn Exceeds 95")
                }
            }

            SelectionofGreen1 = false
            SelectionofGreen2 = false
            SelectionofGreen3 = false
            SelectionofGreen4 = false
            
            GreenDiceSelection = a == 5 ? true : false
            BlueDiceSelection = a == 5 ? false : true

            greenpin1Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin2Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin3Btn.layer.borderColor = UIColor.clear.cgColor
            greenpin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            
        }
    }
    func animateGreenPin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            greenpin4Btn.tag = targetTag
            if greenpin4Btn.tag == targetTag{
                BluePinKillLogic(sender: greenpin4Btn)
            }
            moveGreenPin4ToNextView(sender: greenpin4Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            greenpin4Btn.tag = currentTag + 1
            moveGreenPin4ToNextView(sender: greenpin4Btn)
            animateGreenPin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
            
        }
    }
    
    
    //User2 Dice 2 Btn
    
    @IBAction func imageview2Btn(_ sender: UIButton) {
        //For dice selection and turn changeover
        if BlueDiceSelection == true
        {
            
            
            print("The User 2 Dice Is Tapped")
            
            if SelectionofBlue1 == false && SelectionofBlue2 == false && SelectionofBlue3 == false && SelectionofBlue4 == false
            {
                
                print("The SelectionofDice: True")
                
                print("The User 2 Dice Is Rolled")
                
                b = Int.random(in: 0...5)
                UIView.animate(withDuration: 0.2, animations: {
                    self.imageView2.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { _ in
                    
                    UIView.transition(with: self.imageView2,
                                      duration: 0.1,
                                      options: .transitionCrossDissolve,
                                      animations: {
                        self.imageView2.image = UIImage(named: self.diceimages[self.a])
                    },
                                      completion: { _ in
                        UIView.animate(withDuration: 0.1) {
                            self.imageView2.transform = .identity
                        }
                    })}
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [self] in
                    
                    handleBlue1PinMovement(sender: bluepin1Btn, movedVariable: &bluepin1Moved)
                    handleBlue2PinMovement(sender: bluePin2Btn, movedVariable: &bluepin2Moved)
                    handleBlue3PinMovement(sender: bluepin3Btn, movedVariable: &bluepin3Moved)
                    handleBlue4PinMovement(sender: bluepin4Btn, movedVariable: &bluepin4Moved)
                    
                    imageView2.image = UIImage(named: diceimages[b])
                    print("The Dice Value For User 2 : \(b)")
                    print("                    ")
                    
                    
                }
            }
        }
        
        
    }
    
    
    @IBAction func blue1Btn(_ sender: Any) {
        
        print ("The First Blue Button Is Tapped")
        
        if SelectionofBlue1 == true {
            
            if bluepin1Btn.tag == 106 && b == 5 {
                blue1Out = true
                bluepin1Btn.tag = bluePinStartIndexVW.tag
                print("The Normal Game Flow for Bluepin1Btn")
                moveBluePin1ToNextView(sender: bluepin1Btn)
                
            }
            else if bluepin1Btn.tag != 106
            {
                let newTag = b + bluepin1Btn.tag + 1
                if newTag <= 58{
                    animatebBluePin1ToNextView(currentTag: bluepin1Btn.tag, targetTag: newTag)
                }
                else if bluepin1Btn.tag == 58 {
                    blue1Out = false
                }
                
            }
            
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            GreenDiceSelection = b == 5 ? false : true
            BlueDiceSelection = b == 5 ? true : false
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluePin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
        
    }
    func animatebBluePin1ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin1Btn.tag = targetTag
            if bluepin1Btn.tag == targetTag{
                GreenPinKillLogic(sender: bluepin1Btn)
            }
            moveBluePin1ToNextView(sender: bluepin1Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            bluepin1Btn.tag = currentTag + 1
            moveBluePin1ToNextView(sender: bluepin1Btn)
            animatebBluePin1ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    // BLUE PIN 2
    
    @IBAction func blue2Btn(_ sender: UIButton)
    {
        print ("The second Blue Button Is Tapped")
        
        if SelectionofBlue2 == true {
            
            if bluePin2Btn.tag == 107 && b == 5 {
                blue2Out = true
                bluePin2Btn.tag = bluePinStartIndexVW.tag
                moveBluePin2ToNextView(sender: bluePin2Btn)
                
            }
            else if bluePin2Btn.tag != 107
            {
                var newTag = b + bluePin2Btn.tag + 1
                if newTag <= 58 {
//                    bluePin2Btn.tag = newTag
//                    print("THE UPDATED TAG VALUE : \(bluePin2Btn.tag)")
//                    moveBluePin2ToNextView(sender: bluePin2Btn)
                    animatebBluePin2ToNextView(currentTag: bluePin2Btn.tag, targetTag: newTag)
                }
                else if bluePin2Btn.tag == 58 {
                    blue2Out = false
                }
            }
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            GreenDiceSelection = b == 5 ? false : true
            BlueDiceSelection = b == 5 ? true : false
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluePin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
        
    }
    
    func animatebBluePin2ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluePin2Btn.tag = targetTag
            if bluePin2Btn.tag == targetTag{
                GreenPinKillLogic(sender: bluePin2Btn)
            }
            moveBluePin2ToNextView(sender: bluePin2Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            bluePin2Btn.tag = currentTag + 1
            moveBluePin2ToNextView(sender: bluePin2Btn)
            animatebBluePin2ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    // BLUE PIN 3
    
    @IBAction func blue3Btn(_ sender: UIButton)
    {
        print("The Third Blue Button is Tapped")
        
        if SelectionofBlue3 == true {
            
            //
            if bluepin3Btn.tag == 108 && b == 5{
                blue3Out = true
                bluepin3Btn.tag = bluePinStartIndexVW.tag
                moveBluePin3ToNextView(sender: bluepin3Btn)
            }
            else if bluepin3Btn.tag != 108  {
                var newTag = b + bluepin3Btn.tag + 1
                if newTag <= 58{
                    animatebBluePin3ToNextView(currentTag: bluepin3Btn.tag, targetTag: newTag)
                }
                else if bluepin3Btn.tag == 58 {
                    blue3Out = false
                }
            }
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            GreenDiceSelection = b == 5 ? false : true
            BlueDiceSelection = b == 5 ? true : false
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluePin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
        
    }
    
    
    func animatebBluePin3ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin3Btn.tag = targetTag
            if bluepin3Btn.tag == targetTag{
                GreenPinKillLogic(sender: bluepin3Btn)
            }
            moveBluePin3ToNextView(sender: bluepin3Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            bluepin3Btn.tag = currentTag + 1
            moveBluePin3ToNextView(sender: bluepin3Btn)
            animatebBluePin3ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    // BLUE PIN 4
    
    @IBAction func blue4Btn(_ sender: UIButton)
    {
        print("The fourth Blue Button is Tapped")
        
        if SelectionofBlue4 == true {
            
            //
            if bluepin4Btn.tag == 109 && b == 5{
                blue4Out = true
                bluepin4Btn.tag = bluePinStartIndexVW.tag
                moveBluePin4ToNextView(sender: bluepin4Btn)
            }
            else if bluepin4Btn.tag != 109  {
                var newTag = b + bluepin4Btn.tag + 1
                
                if newTag <= 58{
//                    bluepin4Btn.tag = newTag
//                    moveBluePin4ToNextView(sender: bluepin4Btn)
                    animatebBluePin4ToNextView(currentTag: bluepin4Btn.tag, targetTag: newTag)
                }
                else if bluepin4Btn.tag == 58 {
                    blue4Out = false
                }
            }
            
            SelectionofBlue1 = false
            SelectionofBlue2 = false
            SelectionofBlue3 = false
            SelectionofBlue4 = false
            
            GreenDiceSelection = b == 5 ? false : true
            BlueDiceSelection = b == 5 ? true : false
            
            bluepin1Btn.layer.borderColor = UIColor.clear.cgColor
            bluePin2Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin3Btn.layer.borderColor = UIColor.clear.cgColor
            bluepin4Btn.layer.borderColor = UIColor.clear.cgColor
            
            if BlueDiceSelection == true {
                imageView1Btn.layer.borderColor = UIColor.clear.cgColor
                imageView2Btn.layer.borderColor = UIColor.systemCyan.cgColor
            } else {
                imageView1Btn.layer.borderColor = UIColor.systemGreen.cgColor
                imageView2Btn.layer.borderColor = UIColor.clear.cgColor
            }
            

        }
    }
    
    func animatebBluePin4ToNextView(currentTag: Int, targetTag: Int) {
        guard currentTag < targetTag else {
            bluepin4Btn.tag = targetTag
            if bluepin4Btn.tag == targetTag{
                GreenPinKillLogic(sender: bluepin4Btn)
            }
            moveBluePin4ToNextView(sender: bluepin4Btn)
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            bluepin4Btn.tag = currentTag + 1
            moveBluePin4ToNextView(sender: bluepin4Btn)
            animatebBluePin4ToNextView(currentTag: currentTag + 1, targetTag: targetTag)
        }
    }
    
    @IBAction func ExitBtn(_ sender: Any) {
        
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
