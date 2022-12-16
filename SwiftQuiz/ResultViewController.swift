//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Lorhany Moraes on 05/05/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
       let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
