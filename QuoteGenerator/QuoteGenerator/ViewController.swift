//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by In Wook Baek on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "The journey of a thousand miles begins with one step.", name: "Lao Tzu"),
        Quote(contents: "That which does not kill us makes us stronger.", name: "Friedrich Nietzsche"),
        Quote(contents: "Life is what happens when you’re busy making other plans.", name: "John Lennon"),
        Quote(contents: "When the going gets tough, the tough get going.", name: "Joe Kennedy"),
        Quote(contents: "You must be the change you wish to see in the world.", name: "Mahatma Gandhi"),
        Quote(contents: "Get busy living or get busy dying.", name: "Stephen King"),
        Quote(contents: "A man is but what he knows.", name: "Sir Francis Bacon"),
        Quote(contents: "If you’re going through hell, keep going.", name: "Winston Churchill"),
        Quote(contents: "Strive not to be a success, but rather to be of value.", name: "Albert Einstein"),
        Quote(contents: "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.", name: "Mark Twain")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(10))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

