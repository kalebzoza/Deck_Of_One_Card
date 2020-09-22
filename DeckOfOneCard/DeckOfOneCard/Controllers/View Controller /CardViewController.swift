//
//  CardViewController.swift
//  DeckOfOneCard
//
//  Created by Kaleb  Carrizoza on 9/22/20.
//

import UIKit

class CardViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK: - Actions
    @IBAction func drawButtonTapped(_ sender: Any) {
        CardController.fetchCard { [weak self] (result) in
            DispatchQueue.main.async {
                switch result {
                
                case .success(let card):
                    self?.fetchImageAndUpdateViews(for: card)
                case .failure(let error):
                    self?.presentErrorToUser(localizedError: error)
                }
            }
           
            
          }
    }
    
    func fetchImageAndUpdateViews(for card: Card) {

      CardController.fetchImage(for: card) { [weak self] result in
        DispatchQueue.main.async {
            switch result {
                case .success(let image):
                  self?.valueLabel.text = "\(card.value) of \(card.suit)"
                  self?.cardImageView.image = image
                case .failure(let error):
                  self?.presentErrorToUser(localizedError: error)
                }
        }
     
      }
    }
    
    
    
    
    
    
    
    
    
}// end class
