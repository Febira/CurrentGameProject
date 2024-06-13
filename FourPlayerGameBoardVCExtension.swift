//
//  FourPlayerGameBoardVCExtension.swift
//  GameProject
//
//  Created by Vison001 on 12/01/24.
//

import UIKit

extension FourPlayerGameBoardVC {
    
    // Handle Bluepin Movemenfa
    func handleBlue1PinMovement (sender : UIButton, movedVariable: inout Bool){
        
        print("Here the Movement of the Blue Dice is Handled")
        
        if a == 5 || Blue1Out == true{
            
            print("Here may be the token is Out or else the Dice Value is Six")

            SelectionofBlue1 = true
            
            bluepin1Btn.layer.borderColor = UIColor.black.cgColor
//            bluepin1Btn.layer.backgroundColor = UIColor.lightBlue.cgColor
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        }
        else if Blue1Out == false && Blue2Out == false && Blue3Out == false && Blue4Out == false{
            
            BlueDiceSelection = false
            RedDiceSelection = true
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor

        }
    }
    
    func handleBlue2PinMovement (sender : UIButton, movedVariable: inout Bool){
        
        if a == 5 || Blue2Out == true{
            
            SelectionofBlue2 = true
            
            bluepin2Btn.layer.borderColor = UIColor.black.cgColor
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        } else if Blue1Out == false && Blue2Out == false && Blue3Out == false && Blue4Out == false{
            
            BlueDiceSelection = false
            RedDiceSelection = true

            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    func handleBlue3PinMovement (sender : UIButton, movedVariable: inout Bool){
        
        if a == 5 || Blue3Out == true{
            
            SelectionofBlue3 = true
            
            bluepin3Btn.layer.borderColor = UIColor.black.cgColor
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        } else if Blue1Out == false && Blue2Out == false && Blue3Out == false && Blue4Out == false{
            
            BlueDiceSelection = false
            RedDiceSelection = true
//            GreenDiceSelection = true
//            YellowDiceSelection = true
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    func handleBlue4PinMovement (sender : UIButton, movedVariable: inout Bool){
        
        if a == 5 || Blue4Out == true{
            
            SelectionofBlue4 = true
            
            bluepin4Btn.layer.borderColor = UIColor.black.cgColor
            
            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
        } else if Blue1Out == false && Blue2Out == false && Blue3Out == false && Blue4Out == false{
            
            BlueDiceSelection = false
            RedDiceSelection = true

            User1DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User2DiceBtn.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    
    // HANDLE GREEN PIN MOVEMENT
    
    func moveBluePin1ToNextView(sender : UIButton){
        
    
        AnimateTheButton(sender: bluepin1Btn)
        print("The Last Final Tag vaue of the Blue pin Btn is : \(bluepin1Btn.tag)")
        print("       ")
        print("here the Blue Pin is Moved to the NextView Based on The Dice Value Calculated")
        
        let currentTag = bluepin1Btn.tag
        
        guard let nextView = findNextViewforBluePinInStack(tag: currentTag) else {
            return
        }
        
        
        
        bluepin1Btn.tag = currentTag
        bluepin1Btn.removeFromSuperview()
        nextView.addSubview(bluepin1Btn)
        print("Tapped Pin Tag Value Is :  -> \(bluepin1Btn.tag)")
        BluePin1Moved = true
        
        //        WinnerView()
        
    }
    func moveBluePin2ToNextView(sender : UIButton){
        
        
        AnimateTheButton(sender: bluepin2Btn)
        let currentTag = bluepin2Btn.tag
        
        guard let nextView = findNextViewforBluePinInStack(tag: currentTag) else {
            return
        }
        
        
        
        bluepin2Btn.tag = currentTag
        bluepin2Btn.removeFromSuperview()
        nextView.addSubview(bluepin2Btn)
        print("Tapped Pin Tag Value Is :  -> \(bluepin2Btn.tag)")
        BluePin2Moved = true
        
        //        WinnerView()
        
    }
    func moveBluePin3ToNextView(sender : UIButton){
        
        
   
        AnimateTheButton(sender: bluepin3Btn)
        let currentTag = bluepin3Btn.tag
        
        guard let nextView = findNextViewforBluePinInStack(tag: currentTag) else {
            return
        }
        
        
        
        bluepin3Btn.tag = currentTag
        bluepin3Btn.removeFromSuperview()
        nextView.addSubview(bluepin3Btn)
        print("Tapped Pin Tag Value Is :  -> \(bluepin3Btn.tag)")
        BluePin3Moved = true
        
        //        WinnerView()
        
    }
    func moveBluePin4ToNextView(sender : UIButton){
        
        
        AnimateTheButton(sender: bluepin4Btn)
        let currentTag = bluepin4Btn.tag
        
        guard let nextView = findNextViewforBluePinInStack(tag: currentTag) else {
            return
        }
        
        
        
        bluepin4Btn.tag = currentTag
        bluepin4Btn.removeFromSuperview()
        nextView.addSubview(bluepin4Btn)
        print("Tapped Pin Tag Value Is :  -> \(bluepin4Btn.tag)")
        BluePin4Moved = true
        
        //        WinnerView()
        
    }
    
    func findNextViewforBluePinInStack(tag: Int) -> UIView? {
        
        print("The Next View Method Is Called")
        
        for case let horizontalStackView as UIStackView in VerticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    return innerView
                }
            }
            
        }
        
        return nil
        
    }
    
    //    func WinnerView(){
    //
    //        if bluepin1Btn.tag ==
    //    }
    
    
    func handleRed1PinMovement(sender : UIButton, movedVariable: inout Bool){
        
        if b == 5 || Red1Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofRed1 = true
            
            redpin1Btn.layer.borderColor = UIColor.black.cgColor
            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        } else if Red1Out == false && Red2Out == false && Red3Out == false && Red4Out == false{
            
            RedDiceSelection = false
            GreenDiceSelection = true

            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
        }
    }
    func  handleRed2PinMovement(sender : UIButton, movedVariable: inout Bool){
        
        if b == 5 || Red2Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofRed2 = true
            
            redpin2Btn.layer.borderColor = UIColor.black.cgColor
            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
     
        } else if Red1Out == false && Red2Out == false && Red3Out == false && Red4Out == false{
            
            RedDiceSelection = false
            GreenDiceSelection = true
//            YellowDiceSelection = true
//            BlueDiceSelection = true
            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
        }
        
    }
    func  handleRed3PinMovement(sender : UIButton, movedVariable: inout Bool){
        
        if b == 5 || Red3Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofRed3 = true
            
            redpin3Btn.layer.borderColor = UIColor.black.cgColor
            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
  
        } else if Red1Out == false && Red2Out == false && Red3Out == false && Red4Out == false{
            
            RedDiceSelection = false
            GreenDiceSelection = true

            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
        }
    }
    func  handleRed4PinMovement(sender : UIButton, movedVariable: inout Bool){
        
        
        if b == 5 || Red4Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofRed4 = true
            
            redpin4Btn.layer.borderColor = UIColor.black.cgColor
            
            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
            
        } else if Red1Out == false && Red2Out == false && Red3Out == false && Red4Out == false{
            
            RedDiceSelection = false
            GreenDiceSelection = true

            User2DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User3DiceBtn.layer.borderColor = UIColor.systemGreen.cgColor
        }
    }
    // RED PIN MOVEMENT
    
    func moveRedPin1ToNextView(sender : UIButton){
        
        
        AnimateTheButton(sender: redpin1Btn)
        
        var currentTag = sender.tag
        
        if currentTag > 52 && Red1Out == true && currentTag < 59 {
            currentTag -= 52
        }
        guard let nextView = findNextViewForRedPinInStack(sender: redpin1Btn, tag: currentTag) else {
            return
        }
        redpin1Btn.tag = currentTag
        redpin1Btn.removeFromSuperview()
        nextView.addSubview(redpin1Btn)
        print("Tapped Pin Tag Value Is :  -> \(redpin1Btn.tag)")
        RedPin1Moved = true
        WinnerView()

    }
    
    func moveRedPin2ToNextView(sender : UIButton){
        
    
        AnimateTheButton(sender: redpin2Btn)
        
        var currentTag = redpin2Btn.tag
        // This Logic May Or May Not Work
        if currentTag > 52 && Red2Out == true && currentTag < 59 {
            currentTag -= 52
        }
        guard let nextView = findNextViewForRedPinInStack(sender: redpin2Btn, tag: currentTag) else {
            return
        }
        redpin2Btn.tag = currentTag
        redpin2Btn.removeFromSuperview()
        nextView.addSubview(redpin2Btn)
        print("Tapped Pin Tag Value Is :  -> \(redpin2Btn.tag)")
        RedPin2Moved = true
        WinnerView()

    }
    
    func moveRedPin3ToNextView(sender : UIButton){
        
    
        AnimateTheButton(sender: redpin3Btn)
        
        var currentTag = redpin3Btn.tag
        // This Logic May Or May Not Work
        if currentTag > 52 && Red3Out == true && currentTag < 59 {
            currentTag -= 52
        }
        guard let nextView = findNextViewForRedPinInStack(sender: redpin3Btn, tag: currentTag) else {
            return
        }
        redpin3Btn.tag = currentTag
        redpin3Btn.removeFromSuperview()
        nextView.addSubview(redpin3Btn)
        print("Tapped Pin Tag Value Is :  -> \(redpin3Btn.tag)")
        RedPin3Moved = true        
        WinnerView()

    }
    
    func moveRedPin4ToNextView(sender : UIButton){
        

        AnimateTheButton(sender: redpin4Btn)
        
        var currentTag = redpin4Btn.tag
        if currentTag > 52 && Red4Out == true && currentTag < 59{
            currentTag -= 52
        }
        guard let nextView = findNextViewForRedPinInStack(sender: redpin4Btn, tag: currentTag) else {
            return
        }
        redpin4Btn.tag = currentTag
        redpin4Btn.removeFromSuperview()
        nextView.addSubview(redpin4Btn)
        print("Tapped Pin Tag Value Is :  -> \(redpin4Btn.tag)")
        RedPin4Moved = true
        WinnerView()

    }
    
    func findNextViewForRedPinInStack(sender : UIButton, tag: Int) -> UIView? {
    
        for case let horizontalStackView as UIStackView in VerticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    return innerView
                }
            }
     
        }
        
        return nil
    }
    
    
    func handleGreenPin1Movement(sender : UIButton , movedVariable: inout Bool){
        
        if c == 5 || Green1Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen1 = true
            
            greenpin1Btn.layer.borderColor = UIColor.black.cgColor
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
   
        } else if Green1Out == false && Green2Out == false && Green3Out == false && Green4Out == false {
            
            GreenDiceSelection = false
            YellowDiceSelection = true
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
        }
    }
    
    func handleGreenPin2Movement(sender : UIButton , movedVariable: inout Bool){
        
        if c == 5 || Green2Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen2 = true
            
            greenpin2Btn.layer.borderColor = UIColor.black.cgColor
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor

        } else if Green1Out == false && Green2Out == false && Green3Out == false && Green4Out == false {
            
            GreenDiceSelection = false
            YellowDiceSelection = true
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            // Additional logic for the false case
        }
    }
    
    func handleGreenPin3Movement(sender : UIButton , movedVariable: inout Bool){
        
        if c == 5 || Green3Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen3 = true
            
            greenpin3Btn.layer.borderColor = UIColor.black.cgColor
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
          
        } else if Green1Out == false && Green2Out == false && Green3Out == false && Green4Out == false {
            
            GreenDiceSelection = false
            YellowDiceSelection = true
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
            // Additional logic for the false case
        }
    }
    
    func handleGreenPin4Movement(sender : UIButton , movedVariable: inout Bool){
        
        if c == 5 || Green4Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofGreen4 = true
            
            greenpin4Btn.layer.borderColor = UIColor.black.cgColor
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        
        } else if Green1Out == false && Green2Out == false && Green3Out == false && Green4Out == false {
            
            GreenDiceSelection = false
            YellowDiceSelection = true
            
            User3DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User4DiceBtn.layer.borderColor = UIColor.systemYellow.cgColor
        }
    }
    
    func Movegreenpin1toNextView(sender : UIButton){
        
     
        AnimateTheButton(sender: greenpin1Btn)
        print ("Move Green Pin 1 To Next View")
        
        var  currenttag = greenpin1Btn.tag
     
        if currenttag > 52 && Green1Out == true && currenttag < 65 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForGreenPinInStack(sender: greenpin1Btn, tag: currenttag) else{
            return
        }

        greenpin1Btn.tag = currenttag
        greenpin1Btn.removeFromSuperview()
        nextView.addSubview(greenpin1Btn)
        print("Tapped Pin Tag Value Is : \(greenpin1Btn.tag)")
        WinnerView()

    }
    func Movegreenpin2toNextView(sender : UIButton){
        
 
        AnimateTheButton(sender: greenpin2Btn)
        print ("Move Green Pin 2 To Next View")
        
        var  currenttag = greenpin2Btn.tag
        if currenttag > 52 && Green2Out == true && currenttag < 65 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForGreenPinInStack(sender: greenpin2Btn, tag: currenttag) else{
            return
        }

        greenpin2Btn.tag = currenttag
        greenpin2Btn.removeFromSuperview()
        nextView.addSubview(greenpin2Btn)
        print("Tapped Pin Tag Value Is : \(greenpin2Btn.tag)")
        WinnerView()

    }
    func Movegreenpin3toNextView(sender : UIButton){
        
 
        AnimateTheButton(sender: greenpin3Btn)
        print ("Move Green Pin 3 To Next View")
        
        var  currenttag = greenpin3Btn.tag
        if currenttag > 52 && Green3Out == true && currenttag < 65 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForGreenPinInStack(sender: greenpin3Btn, tag: currenttag) else{
            return
        }

        greenpin3Btn.tag = currenttag
        greenpin3Btn.removeFromSuperview()
        nextView.addSubview(greenpin3Btn)
        print("Tapped Pin Tag Value Is : \(greenpin3Btn.tag)")
        WinnerView()

    }
    func Movegreenpin4toNextView(sender : UIButton){
        
    
        AnimateTheButton(sender: greenpin4Btn)
        print ("Move Green Pin 4 To Next View")
        
        var  currenttag = greenpin4Btn.tag
        if currenttag > 52 && Green4Out == true && currenttag < 65 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForGreenPinInStack(sender: greenpin4Btn, tag: currenttag) else{
            return
        }

        greenpin4Btn.tag = currenttag
        greenpin4Btn.removeFromSuperview()
        nextView.addSubview(greenpin4Btn)
        print("Tapped Pin Tag Value Is : \(greenpin4Btn.tag)")
        WinnerView()

    }
    
    func findNextViewForGreenPinInStack(sender : UIButton, tag: Int) -> UIView? {
    
        for case let horizontalStackView as UIStackView in VerticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    return innerView
                }
            }
     
        }
        
        return nil
    }
    
    
    func handleYellow1pinMovement(sender : UIButton ,movedVariable: inout Bool){
        
        if d == 5 || Yellow1Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofYellow1 = true
            
            yellowpin1Btn.layer.borderColor = UIColor.black.cgColor
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        
        } else if Yellow1Out == false && Yellow2Out == false && Yellow3Out == false && Yellow4Out == false {
            
            YellowDiceSelection = false
            BlueDiceSelection = true
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
        }
    }
    func handleYellow2pinMovement(sender : UIButton ,movedVariable: inout Bool){
        
        if d == 5 || Yellow2Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofYellow2 = true
            
            yellowpin2Btn.layer.borderColor = UIColor.black.cgColor
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        
        } else if Yellow1Out == false && Yellow2Out == false && Yellow3Out == false && Yellow4Out == false {
            
            YellowDiceSelection = false
            BlueDiceSelection = true
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
        }
    }
    func handleYellow3pinMovement(sender : UIButton ,movedVariable: inout Bool){
        
        if d == 5 || Yellow3Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofYellow3 = true
            
            yellowpin3Btn.layer.borderColor = UIColor.black.cgColor
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        
        } else if Yellow1Out == false && Yellow2Out == false && Yellow3Out == false && Yellow4Out == false {
            
            YellowDiceSelection = false
            BlueDiceSelection = true
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
        }
    }
    func handleYellow4pinMovement(sender : UIButton ,movedVariable: inout Bool){
        
        if d == 5 || Yellow4Out == true {
            print("The Movement of The Token is Finished")
            
            SelectionofYellow4 = true
            
            yellowpin4Btn.layer.borderColor = UIColor.black.cgColor
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            
        
        } else if Yellow1Out == false && Yellow2Out == false && Yellow3Out == false && Yellow4Out == false {
            
            YellowDiceSelection = false
            BlueDiceSelection = true
            
            User4DiceBtn.layer.borderColor = UIColor.clear.cgColor
            User1DiceBtn.layer.borderColor = UIColor.systemCyan.cgColor
        }
    }
    
    func  moveYellowPin1ToNextView(sender: UIButton){
        
        
       
        AnimateTheButton(sender: yellowpin1Btn)
        print ("Move Yellow Pin 1 To Next View")
        
        var  currenttag = yellowpin1Btn.tag
        if currenttag > 52 && Yellow1Out == true && currenttag < 71 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForYellowPinInStack(sender: yellowpin1Btn, tag: currenttag) else{
            return
        }

        yellowpin1Btn.tag = currenttag
        yellowpin1Btn.removeFromSuperview()
        nextView.addSubview(yellowpin1Btn)
        print("Tapped Pin Tag Value Is : \(yellowpin1Btn.tag)")
        WinnerView()

    }
    func  moveYellowPin2ToNextView(sender: UIButton){
        
        
        AnimateTheButton(sender: yellowpin2Btn)
        print ("Move Yellow Pin 2 To Next View")
        
        var  currenttag = yellowpin2Btn.tag
        if currenttag > 52 && Yellow2Out == true && currenttag < 71 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForYellowPinInStack(sender: yellowpin2Btn, tag: currenttag) else{
            return
        }

        yellowpin2Btn.tag = currenttag
        yellowpin2Btn.removeFromSuperview()
        nextView.addSubview(yellowpin2Btn)
        print("Tapped Pin Tag Value Is : \(yellowpin2Btn.tag)")
        WinnerView()

    }
    func  moveYellowPin3ToNextView(sender: UIButton){
        
       
        AnimateTheButton(sender: yellowpin3Btn)
        print ("Move Yellow Pin 3 To Next View")
        
        var  currenttag = yellowpin3Btn.tag
        if currenttag > 52 && Yellow3Out == true && currenttag < 71 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForYellowPinInStack(sender: yellowpin3Btn, tag: currenttag) else{
            return
        }

        yellowpin3Btn.tag = currenttag
        yellowpin3Btn.removeFromSuperview()
        nextView.addSubview(yellowpin3Btn)
        print("Tapped Pin Tag Value Is : \(yellowpin3Btn.tag)")
        WinnerView()

    }
    func  moveYellowPin4ToNextView(sender: UIButton){
        
       
        AnimateTheButton(sender: yellowpin4Btn)
        print ("Move Yellow Pin 4 To Next View")
        
        var  currenttag = yellowpin4Btn.tag
        if currenttag > 52 && Yellow4Out == true && currenttag < 71 {
            currenttag -= 52
        }
        guard let nextView = findNextViewForYellowPinInStack(sender: yellowpin4Btn, tag: currenttag) else{
            return
        }

        yellowpin4Btn.tag = currenttag
        yellowpin4Btn.removeFromSuperview()
        nextView.addSubview(yellowpin4Btn)
        print("Tapped Pin Tag Value Is : \(yellowpin4Btn.tag)")
        WinnerView()
    }
    
    func findNextViewForYellowPinInStack(sender : UIButton, tag: Int) -> UIView? {
    
        for case let horizontalStackView as UIStackView in VerticalStackView.arrangedSubviews {
            for case let innerView as UIView in horizontalStackView.arrangedSubviews {
                print("InnerView tag: \(innerView.tag), Expected Tag: \(tag)")
                if innerView.tag == tag {
                    return innerView
                }
            }
     
        }
        
        return nil
    }
    
    
    //BLUE PIN KILL LOGIC
    
    func BluePinCutLogic(sender : UIButton){
        
        print("The Sender Button is : \(sender) and the tag Value of The Sender Button is : \(sender.tag)")
        
        if sender.tag == bluepin1Btn.tag {
            Blue1Out = false
            bluepin1Btn.tag = 100
            moveBluePin1ToNextView(sender: bluepin1Btn)
        }
        else if sender.tag == bluepin2Btn.tag{
            Blue2Out = false
            bluepin2Btn.tag = 101
            moveBluePin2ToNextView(sender: bluepin2Btn)
        }
        else if sender.tag == bluepin3Btn.tag {
            Blue3Out = false
            bluepin3Btn.tag = 102
            moveBluePin3ToNextView(sender: bluepin3Btn)
        }
        else if sender.tag == bluepin4Btn.tag {
            Blue4Out = false
            bluepin4Btn.tag = 103
            moveBluePin4ToNextView(sender: bluepin4Btn)
        }
    }
    
    // RED PIN CUT LOGIC
    func RedPinCutLogic(sender : UIButton){
    
    print("The Sender Button is : \(sender) and the tag Value of The Sender Button is : \(sender.tag)")
    
    if sender.tag == redpin1Btn.tag {
        Red1Out = false
        redpin1Btn.tag = 104
        moveRedPin1ToNextView(sender: redpin1Btn)
    }
    else if sender.tag == redpin2Btn.tag{
        Red2Out = false
        redpin2Btn.tag = 105
        moveRedPin2ToNextView(sender: redpin2Btn)
    }
    else if sender.tag == redpin3Btn.tag {
        Red3Out = false
        redpin3Btn.tag = 106
        moveRedPin3ToNextView(sender: redpin3Btn)
    }
    else if sender.tag == redpin4Btn.tag {
        Red4Out = false
        redpin4Btn.tag = 107
        moveRedPin4ToNextView(sender: redpin4Btn)
    }
}
    
    // GREEN PIN CUT LOGIC
    func GreenPinCutLogic(sender : UIButton){
    
    print("The Sender Button is : \(sender) and the tag Value of The Sender Button is : \(sender.tag)")
    
    if sender.tag == greenpin1Btn.tag {
        Green1Out = false
        greenpin1Btn.tag = 108
        Movegreenpin1toNextView(sender: greenpin1Btn)
    }
    else if sender.tag == greenpin1Btn.tag{
        Green2Out = false
        greenpin2Btn.tag = 109
        Movegreenpin2toNextView(sender: greenpin2Btn)
    }
    else if sender.tag == greenpin3Btn.tag {
        Green3Out = false
        greenpin3Btn.tag = 110
        Movegreenpin3toNextView(sender: greenpin3Btn)
    }
    else if sender.tag == greenpin4Btn.tag {
        Green4Out = false
        greenpin4Btn.tag = 111
        Movegreenpin4toNextView(sender: greenpin4Btn)
    }
}

// YELLOW PIN CUT LOGIC
    func YellowPinCutLogic(sender : UIButton){
    
    print("The Sender Button is : \(sender) and the tag Value of The Sender Button is : \(sender.tag)")
    
    if sender.tag == yellowpin1Btn.tag {
        Yellow1Out = false
        yellowpin1Btn.tag = 112
        moveYellowPin1ToNextView(sender: yellowpin1Btn)
    }
    else if sender.tag == yellowpin2Btn.tag{
        Yellow2Out = false
        yellowpin2Btn.tag = 113
        moveYellowPin2ToNextView(sender: yellowpin2Btn)
    }
    else if sender.tag == yellowpin3Btn.tag {
        Yellow3Out = false
        yellowpin3Btn.tag = 114
        moveYellowPin3ToNextView(sender: yellowpin3Btn)
    }
    else if sender.tag == yellowpin4Btn.tag {
        Yellow4Out = false
        yellowpin4Btn.tag = 115
        moveYellowPin4ToNextView(sender: yellowpin4Btn)
    }
}

    func WinnerView(){
        
        if bluepin1Btn.tag == 58 && bluepin2Btn.tag == 58 && bluepin3Btn.tag == 58 && bluepin4Btn.tag == 58 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "WinnerVC") as! WinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
        else if redpin1Btn.tag == 64 && redpin2Btn.tag == 64 && redpin3Btn.tag == 64 && redpin4Btn.tag == 64 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "RedWinnerVC") as! RedWinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
        else if greenpin1Btn.tag == 70 && greenpin2Btn.tag == 70 && greenpin3Btn.tag == 70 && greenpin4Btn.tag == 70 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "GreenWinnerVC") as! GreenWinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
        else if yellowpin1Btn.tag == 76 && yellowpin2Btn.tag == 76 && yellowpin3Btn.tag == 76 && yellowpin4Btn.tag == 76 {
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Game", bundle:nil)
            let WinnerViewController = storyBoard.instantiateViewController(withIdentifier: "YellowWinnerVC") as! YellowWinnerVC
            self.present(WinnerViewController, animated: true, completion: nil)
        }
        
    }
}

