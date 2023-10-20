//
//  ViewControllerQuiz.swift
//  creativeApp
//
//  Created by WILLIAM COX on 10/12/23.
//

import UIKit

class ViewControllerQuiz: UIViewController {

    @IBOutlet weak var randomName: UILabel!
    @IBOutlet weak var randomAge: UILabel!
    @IBOutlet weak var randomGrade: UILabel!
    @IBOutlet weak var showStudent: UILabel!
    @IBOutlet weak var numberCorrect: UILabel!
    @IBOutlet weak var numberIncorrect: UILabel!
    var chosenStudent = ""
    weak var delegate : ViewController!
    var students: [Student] = []
    
    var randomName1 = ""
    var randomStu: Int = 0
    
    var correct = 0
    var incorrect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var randomStu = Int.random(in: 0..<students.count)
        let random = Int.random(in: 0..<2)
        chosenStudent = students[randomStu].name
        randomName1 = students[Int.random(in: 0..<students.count)].name
        if random == 0 {
            randomName.text = students[randomStu].name
            randomAge.text = "\(students[randomStu].age)"
            randomGrade.text = "\(students[randomStu].liamRating)"
            showStudent.text = students[randomStu].name
        } else {
            randomName.text = students[randomStu].name
            randomAge.text = "\(students[randomStu].age)"
            randomGrade.text = "\(students[randomStu].liamRating)"
            showStudent.text = randomName1
        }
    }
    
    @IBAction func trueButton(_ sender: Any) {
        if students[randomStu].name == randomName1 {
            correct += 1
        } else {
            incorrect += 1
        }
        numberCorrect.text = "\(correct)"
        numberIncorrect.text = "\(incorrect)"
        newStudent()
    }
    
    @IBAction func falseButton(_ sender: Any) {
        if students[randomStu].name != randomName1 {
            correct += 1
        } else {
            incorrect += 1
        }
        numberCorrect.text = "\(correct)"
        numberIncorrect.text = "\(incorrect)"
        newStudent()
    }
    
    func newStudent() {
        var randomStu2 = Int.random(in: 0..<students.count)
        randomStu = randomStu2
        let random = Int.random(in: 0..<2)
        chosenStudent = students[randomStu2].name
        randomName1 = students[Int.random(in: 0..<students.count)].name
        if random == 0 {
            randomName.text = students[randomStu2].name
            randomAge.text = "\(students[randomStu2].age)"
            randomGrade.text = "\(students[randomStu2].liamRating)"
            showStudent.text = students[randomStu2].name
        } else {
            randomName.text = students[randomStu2].name
            randomAge.text = "\(students[randomStu2].age)"
            randomGrade.text = "\(students[randomStu2].liamRating)"
            showStudent.text = randomName1
        }
    }
    


}
