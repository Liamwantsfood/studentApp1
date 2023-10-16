//
//  ViewControllerView.swift
//  creativeApp
//
//  Created by WILLIAM COX on 10/12/23.
//

import UIKit

class ViewControllerView: UIViewController {

    weak var delegate: ViewController!
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var ratingInput: UITextField!
    
    var students1 : [Student] = []
    var spot : Int = 0
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    //    nvc.delegate = self
        // Do any additional setup after loading the view.
        nameLabel.text = students1[0].name
        ageLabel.text = "\(students1[0].age)"
        ratingLabel.text = "\(students1[0].liamRating)"
    }
    
    @IBAction func nextStudent(_ sender: Any) {
        if spot < students1.count-1 {
            spot = spot + 1
            nameLabel.text = students1[spot].name
            ageLabel.text = "\(students1[spot].age)"
           ratingLabel.text = "\(students1[spot].liamRating)"
    
        } else {
            spot = 0
            nameLabel.text = students1[spot].name
            ageLabel.text = "\(students1[spot].age)"
            ratingLabel.text = "\(students1[spot].liamRating)"
        }
    }
    
    @IBAction func previousStudent(_ sender: Any) {
        
        if spot > 0 {
            spot = spot - 1
            nameLabel.text = students1[spot].name
            ageLabel.text = "\(students1[spot].age)"
            ratingLabel.text = "\(students1[spot].liamRating)"
        } else {
            spot = students1.count-1
            nameLabel.text = students1[spot].name
            ageLabel.text = "\(students1[spot].age)"
            ratingLabel.text = "\(students1[spot].liamRating)"
        }
        
    }
    
    
    
    @IBAction func addButton(_ sender: Any) {
        let studentName = String(nameInput.text!)
        let studentAge = Int(ageInput.text!)
        let studentGrade = String(ratingInput.text!)
        
        if studentGrade == "A" {
            delegate.changeName(Student(name: studentName, age: studentAge!, liamRating: grade.A))
        } else if studentGrade == "B" {
            delegate.changeName(Student(name: studentName, age: studentAge!, liamRating: grade.B))
        } else if studentGrade == "C" {
            delegate.changeName(Student(name: studentName, age: studentAge!, liamRating: grade.C))
        } else if studentGrade == "D" {
            delegate.changeName(Student(name: studentName, age: studentAge!, liamRating: grade.D))
        } else {
            delegate.changeName(Student(name: studentName, age: studentAge!, liamRating: grade.F))
        }
    }
    
    
}
