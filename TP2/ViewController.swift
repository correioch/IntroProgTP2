//===============
import UIKit
//===============
class ViewController: UIViewController {
    
    //------------ Cards
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    //-------------Images
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    //----------Views
    @IBOutlet weak var Card_1: UIView!
    @IBOutlet weak var Card_2: UIView!
    @IBOutlet weak var Card_3: UIView!
    @IBOutlet weak var Card_4: UIView!
    @IBOutlet weak var Card_5: UIView!
    @IBOutlet weak var Card_6: UIView!
    @IBOutlet weak var Card_7: UIView!
    @IBOutlet weak var Card_8: UIView!
    @IBOutlet weak var Card_9: UIView!
    @IBOutlet weak var Card_10: UIView!
    @IBOutlet weak var Card_11: UIView!
    @IBOutlet weak var Card_12: UIView!
    @IBOutlet weak var Card_13: UIView!
    @IBOutlet weak var Card_14: UIView!
    @IBOutlet weak var Card_15: UIView!
    @IBOutlet weak var Card_16: UIView!
    @IBOutlet weak var Final: UIView!
    
    @IBOutlet weak var imgFinal: UIImageView!
    
  
    //---------Declaration de variables
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames: [String]!
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    
    var arrayOfShowInBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var arrayNumberOfAnimals = [String]()
    
    //------------Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16]
        arrayOfAnimalNames = ["tortue.png",
                              "tortue.png",
                              "chicken.png",
                              "chicken.png",
                              "porco.png",
                              "porco.png",
                              "frog.png",
                              "frog.png",
                              "lion.png",
                              "lion.png",
                              "dog.png",
                              "dog.png",
                              "elephant.png",
                              "elephant.png",
                              "cat.png",
                              "cat.png"]
        randomAnimals()
        setImagesToCard()
    }
    //------------Function Responsables pour porter les cartes
    @IBAction func showCard(_ sender: UIButton) {
        if arrayChosenCards.count == 2 {
            
             return
           
        }
        print(arrayChosenCards)
        
        
        sender.isEnabled = false
        sender.adjustsImageWhenDisabled = false
        switch sender.tag {
        case 0:
            flipCard(from: front_1, to:back_1)
            arrayChosenCards.append(arrayOfRandomAnimalNames[0
                ])
            arrayChosenViews.append(Card_1)
            arrayOfHidingFronts.append(front_1)
            arrayOfShowInBacks.append(back_1)
        case 1:
            flipCard(from: front_2, to:back_2)
            arrayChosenCards.append(arrayOfRandomAnimalNames[1
                ])
            arrayChosenViews.append(Card_2)
            arrayOfHidingFronts.append(front_2)
            arrayOfShowInBacks.append(back_2)
        case 2:
            flipCard(from: front_3, to:back_3)
            arrayChosenCards.append(arrayOfRandomAnimalNames[2
                ])
            arrayChosenViews.append(Card_3)
            arrayOfHidingFronts.append(front_3)
            arrayOfShowInBacks.append(back_3)
        case 3:
            flipCard(from: front_4, to:back_4)
            arrayChosenCards.append(arrayOfRandomAnimalNames[3
                ])
            arrayChosenViews.append(Card_4)
            arrayOfHidingFronts.append(front_4)
            arrayOfShowInBacks.append(back_4)
        case 4:
            flipCard(from: front_5, to:back_5)
            arrayChosenCards.append(arrayOfRandomAnimalNames[4
                ])
            arrayChosenViews.append(Card_5)
            arrayOfHidingFronts.append(front_5)
            arrayOfShowInBacks.append(back_5)
            
        case 5:
            flipCard(from: front_6, to:back_6)
            arrayChosenCards.append(arrayOfRandomAnimalNames[5
                ])
            arrayChosenViews.append(Card_6)
            arrayOfHidingFronts.append(front_6)
            arrayOfShowInBacks.append(back_6)
        case 6:
            flipCard(from: front_7, to:back_7)
            arrayChosenCards.append(arrayOfRandomAnimalNames[6
                ])
            arrayChosenViews.append(Card_7)
            arrayOfHidingFronts.append(front_7)
            arrayOfShowInBacks.append(back_7)
        case 7:
            flipCard(from: front_8, to:back_8)
            arrayChosenCards.append(arrayOfRandomAnimalNames[7
                ])
            arrayChosenViews.append(Card_8)
            arrayOfHidingFronts.append(front_8)
            arrayOfShowInBacks.append(back_8)
        case 8:
            flipCard(from: front_9, to:back_9)
            arrayChosenCards.append(arrayOfRandomAnimalNames[8
                ])
            arrayChosenViews.append(Card_9)
            arrayOfHidingFronts.append(front_9)
            arrayOfShowInBacks.append(back_9)
        case 9:
            flipCard(from: front_10, to:back_10)
            arrayChosenCards.append(arrayOfRandomAnimalNames[9
                ])
            arrayChosenViews.append(Card_10)
            arrayOfHidingFronts.append(front_10)
            arrayOfShowInBacks.append(back_10)
        case 10:
            flipCard(from: front_11, to:back_11)
            arrayChosenCards.append(arrayOfRandomAnimalNames[10
                ])
            arrayChosenViews.append(Card_11)
            arrayOfHidingFronts.append(front_11)
            arrayOfShowInBacks.append(back_11)
        case 11:
            flipCard(from: front_12, to:back_12)
            arrayChosenCards.append(arrayOfRandomAnimalNames[11
                ])
            arrayChosenViews.append(Card_12)
            arrayOfHidingFronts.append(front_12)
            arrayOfShowInBacks.append(back_12)
        case 12:
            flipCard(from: front_13, to:back_13)
            arrayChosenCards.append(arrayOfRandomAnimalNames[12
                ])
            arrayChosenViews.append(Card_13)
            arrayOfHidingFronts.append(front_13)
            arrayOfShowInBacks.append(back_13)
        case 13:
            flipCard(from: front_14, to:back_14)
            arrayChosenCards.append(arrayOfRandomAnimalNames[13
                ])
            arrayChosenViews.append(Card_14)
            arrayOfHidingFronts.append(front_14)
            arrayOfShowInBacks.append(back_14)
        case 14:
            flipCard(from: front_15, to:back_15)
            arrayChosenCards.append(arrayOfRandomAnimalNames[14
                ])
            arrayChosenViews.append(Card_15)
            arrayOfHidingFronts.append(front_15)
            arrayOfShowInBacks.append(back_15)
        case 15:
            flipCard(from: front_16, to:back_16)
            arrayChosenCards.append(arrayOfRandomAnimalNames[15
                ])
            arrayChosenViews.append(Card_16)
            arrayOfHidingFronts.append(front_16)
            arrayOfShowInBacks.append(back_16)
        default:
            break
        }
        verification()
        sender.isEnabled = true
        
    }
    //------------Function Responsables pour turner les cartes
    func flipCard(from: UIView, to:UIView) {
     
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition( with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition( with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
        
    }
    //------------Function responsables pour choisir les cartes
    func setImagesToCard(){
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number += 1
        }
    }
    //------------Function responsables pour randomiser les cartes
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 0..<numberOfAnimals {
            let randomNumber =
                Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //-----------Function responsables por verifier les deux cartes sont les memes
    func verification(){
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1]{
                arrayNumberOfAnimals.append(arrayChosenCards[0])
                arrayNumberOfAnimals.append(arrayChosenCards[1])
                Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector:(#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
                
                
            } else {
                arrayChosenViews = []
            }
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector:(#selector(deleteChosenCards)),
                                 userInfo: nil,
                                 repeats: false)
        }
        resetCards()
        
    }
    //-----------Function responsable por efaser les cartes
    func deleteChosenCards() {
        arrayChosenCards = []
    }
    //-----------Function responsable pour turner ler cartes
    func resetCards(){
        if arrayOfShowInBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector:(#selector(reflip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    //-----------Function responsable pour tourner les cartes
    @objc func reflip (){
        for index in 0..<arrayOfShowInBacks.count{
            flipCard(from: arrayOfShowInBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowInBacks = []
        arrayOfHidingFronts = []
        
    }
    //-----------Function responsable pour cacher les cartes

    @objc func hideCards() {
        arrayChosenViews[0].isHidden = true
        arrayChosenViews[1].isHidden = true
        arrayChosenViews = []
        if arrayNumberOfAnimals.count == 16 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                 self.imgFinal.isHidden = false
                
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                self.Final.isHidden = false
            })
           
        }
        
        
    }
    //-----------Function responsable pour redémarrer le jeu
    @IBAction func reset(_ sender: UIButton) {
        
        imgFinal.isHidden = true
        Final.isHidden = true
        Card_1                                                                                                                                             .isHidden = false
        Card_2.isHidden = false
        Card_3.isHidden = false
        Card_4.isHidden = false
        Card_5.isHidden = false
        Card_6.isHidden = false
        Card_7.isHidden = false
        Card_8.isHidden = false
        Card_9.isHidden = false
        Card_10.isHidden = false
        Card_11.isHidden = false
        Card_12.isHidden = false
        Card_13.isHidden = false
        Card_14.isHidden = false
        Card_15.isHidden = false
        Card_16.isHidden = false
        arrayOfAnimalNames = ["tortue.png",
                              "tortue.png",
                              "chicken.png",
                              "chicken.png",
                              "porco.png",
                              "porco.png",
                              "frog.png",
                              "frog.png",
                              "lion.png",
                              "lion.png",
                              "dog.png",
                              "dog.png",
                              "elephant.png",
                              "elephant.png",
                              "cat.png",
                              "cat.png"]
        arrayOfAnimalNames = []
        randomAnimals()
        setImagesToCard()
    }
    //-----------

}

