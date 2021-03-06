//
//  ViewController.swift
//  QuoteGeneratr
//
//  Created by Jonathan Moreno on 2/14/17.
//  Copyright © 2017 Jonathan Moreno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
   
    @IBOutlet weak var btnGenerate: UIButton!
    
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    
    //These are the imgs
    var arrayOfQuotes: [String] = ["It does not matter how slowly you go as long as you do not stop. \n -Confucius",
                                   "Set your goals high, and don't stop till you get there. \n - Bo Jackson",
                                   "If you don't like how things are, change it! You're not a tree. \n - Jim Rohn" ,
                                   "If you're going through hell, keep going. \n - Winston Churchill",
                                   "You can get everything in life you want if you will just help enough other people get what they want. \n - Zig Ziglar" ,
                                   "Formal education will make you a living; self-education will make you a fortune. \n - Jim Rohn"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func btnGenerateQuote(_ sender: Any) {

        let random =  Int(arc4random_uniform(6))
        let quotesGenerated = arrayOfQuotes[random]
        let quote = quotesGenerated
         print(quote)
        quoteLabel.text = "\(quote)"
        
    }


}

