//========================================================================
import UIKit
import AVFoundation
//========================================================================

class ViewController: UIViewController {
    
    //--------------------------------------------------------------------
    
    @IBOutlet weak var back1: UIView!
    @IBOutlet weak var front1: UIView!
    @IBOutlet weak var back2: UIView!
    @IBOutlet weak var front2: UIView!
    @IBOutlet weak var back3: UIView!
    @IBOutlet weak var front3: UIView!
    @IBOutlet weak var back4: UIView!
    @IBOutlet weak var front4: UIView!
    @IBOutlet weak var back5: UIView!
    @IBOutlet weak var front5: UIView!
    @IBOutlet weak var back6: UIView!
    @IBOutlet weak var front6: UIView!
    @IBOutlet weak var back7: UIView!
    @IBOutlet weak var front7: UIView!
    @IBOutlet weak var back8: UIView!
    @IBOutlet weak var front8: UIView!
    @IBOutlet weak var back9: UIView!
    @IBOutlet weak var front9: UIView!
    @IBOutlet weak var back10: UIView!
    @IBOutlet weak var front10: UIView!
    @IBOutlet weak var back11: UIView!
    @IBOutlet weak var front11: UIView!
    @IBOutlet weak var back12: UIView!
    @IBOutlet weak var front12: UIView!
    
    
    //========================================================================
    
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    @IBOutlet weak var img11: UIImageView!
    @IBOutlet weak var img12: UIImageView!
    
    
    //========================================================================
    
    @IBOutlet weak var card_1: UIView!
    @IBOutlet weak var card_2: UIView!
    @IBOutlet weak var card_3: UIView!
    @IBOutlet weak var card_4: UIView!
    @IBOutlet weak var card_5: UIView!
    @IBOutlet weak var card_6: UIView!
    @IBOutlet weak var card_7: UIView!
    @IBOutlet weak var card_8: UIView!
    @IBOutlet weak var card_9: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    
    @IBOutlet weak var btReset: UIButton!
    
    //========================================================================
    
    var arrayOfImagesViews : [UIImageView]!
    var arrayOfAnimalsNames = ["chat.png", "chat.png", "coq.png", "coq.png", "lapin.png", "lapin.png",
                                         "mouton.png", "mouton.png", "poussin.png", "poussin.png", "vache.png", "vache.png"]
    
    var arrayOfRandomAnimalsNames = [String]()
    var arrayChosenCards = [String]()
    var arrayOfCards = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var cards: [UIView]!
    
    var playerFlipCard: AVAudioPlayer?
    
    var comptePs = 0
    
    
    
    
    //--------------------------------------------------------------------
    
        override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8, card_9, card_10, card_11, card_12]
        arrayOfImagesViews = [img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12]
        randomAnimals()
        setImagesToCards()
            
            guard let urlFlipCard = Bundle.main.url(forResource: "slide", withExtension: "wav") else { return }
            
            
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                
                playerFlipCard = try AVAudioPlayer(contentsOf: urlFlipCard)
                
                
            } catch let error {
                print(error.localizedDescription)
            }
            
    }
    
    //--------------------------------------------------------------------

    
        @IBAction func show(_ sender: UIButton) {
   
            //================Ajout de Son=============
        
        
            playerFlipCard?.play()
            
            //========================================================================
            
            if arrayOfHidingFronts.count == 2 {
                return
            }
            
            switch sender.tag {
            case 0:
                flipCard(from: front1, to: back1)
                arrayOfCards.append(card_1)
                arrayOfShowingBacks.append(back1)
                arrayOfHidingFronts.append(front1)
                
            case 1:
                flipCard(from: front2, to: back2)
                arrayOfCards.append(card_2)
                arrayOfShowingBacks.append(back2)
                arrayOfHidingFronts.append(front2)

            case 2:
                flipCard(from: front3, to: back3)
                arrayOfCards.append(card_3)
                arrayOfShowingBacks.append(back3)
                arrayOfHidingFronts.append(front3)

            case 3:
                flipCard(from: front4, to: back4)
                arrayOfCards.append(card_4)
                arrayOfShowingBacks.append(back4)
                arrayOfHidingFronts.append(front4)

            case 4:
                flipCard(from: front5, to: back5)
                arrayOfCards.append(card_5)
                arrayOfShowingBacks.append(back5)
                arrayOfHidingFronts.append(front5)

            case 5:
                flipCard(from: front6, to: back6)
                arrayOfCards.append(card_6)
                arrayOfShowingBacks.append(back6)
                arrayOfHidingFronts.append(front6)

            case 6:
                flipCard(from: front7, to: back7)
                arrayOfCards.append(card_7)
                arrayOfShowingBacks.append(back7)
                arrayOfHidingFronts.append(front7)

            case 7:
                flipCard(from: front8, to: back8)
                arrayOfCards.append(card_8)
                arrayOfShowingBacks.append(back8)
                arrayOfHidingFronts.append(front8)

            case 8:
                flipCard(from: front9, to: back9)
                arrayOfCards.append(card_9)
                arrayOfShowingBacks.append(back9)
                arrayOfHidingFronts.append(front9)

            case 9:
                flipCard(from: front10, to: back10)
                arrayOfCards.append(card_10)
                arrayOfShowingBacks.append(back10)
                arrayOfHidingFronts.append(front10)

            case 10:
                flipCard(from: front11, to: back11)
                arrayOfCards.append(card_11)
                arrayOfShowingBacks.append(back11)
                arrayOfHidingFronts.append(front11)

            case 11:
                flipCard(from: front12, to: back12)
                arrayOfCards.append(card_12)
                arrayOfShowingBacks.append(back12)
                arrayOfHidingFronts.append(front12)

            default:
                break
        
            }
            
            
            arrayChosenCards.append(arrayOfRandomAnimalsNames[sender.tag])
            verification()
    }

    //--------------------------------------------------------------------
    
    func flipCard(from: UIView, to: UIView) {
        
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        
        })
        
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
            
        })

    }
    
    //--------------------------------------------------------------------
    
    
    
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImagesViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalsNames[number])
            number = number + 1
            
        }
    }
    
    
    //--------------------------------------------------------------------

    func randomAnimals () {
        let numberOfanimals = arrayOfAnimalsNames.count
        for _ in 1...numberOfanimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalsNames.count)))
            arrayOfRandomAnimalsNames.append(arrayOfAnimalsNames[randomNumber])
            arrayOfAnimalsNames.remove(at: randomNumber)
        }
        
    }
    //--------------------------------------------------------------------

    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self, selector: (#selector(reFlip)),
                                 userInfo: nil, repeats: false)
            
        }
        
    }
    
    
    //--------------------------------------------------------------------
    
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2,
                                   target: self, selector: (#selector(hideCards)),
                                    userInfo: nil, repeats: false)
                comptePs = comptePs + 1
            } else {
                arrayOfCards = []
            }
            
               arrayChosenCards = []
        }
        resetCards()
        if comptePs == 6 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector:(#selector(showResetButton)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    
    //--------------------------------------------------------------------
    

    @objc func hideCards() {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
}
    
    //--------------------------------------------------------------------
    
    func reFlip() {
        for index in 0..<arrayOfShowingBacks.count{
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    //-----------------------------------------------------------
    
    
    @IBAction func reset(_ sender: UIButton) {
        for card in cards {
            card.isHidden = false
        }
        
        arrayOfAnimalsNames = ["chat.png", "chat.png", "coq.png", "coq.png", "lapin.png", "lapin.png",
                               "mouton.png", "mouton.png", "poussin.png", "poussin.png", "vache.png", "vache.png"]
        
        arrayOfRandomAnimalsNames = []
        randomAnimals()
        setImagesToCards()
        btReset.isHidden = true
    }
    
     //-----------------------------------------------------------
    
    func showResetButton(){
        btReset.isHidden = false
        comptePs = 0
    }
}




































