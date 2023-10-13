//
//  ViewController.swift
//  creativeApp
//
//  Created by WILLIAM COX on 8/30/23.
//

protocol newStudent {
    func addStudent()
}




import UIKit

class ViewController: UIViewController {

    var students : [Student] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        students.append(Student(name: "Brian", age: 17, liamRating: grade.B))
        students.append(Student(name: "Andrew", age: 17, liamRating: grade.A))
        students.append(Student(name: "Stanislov", age: 17, liamRating: grade.A))
        students.append(Student(name: "Miles", age: 17, liamRating: grade.B))
    }


    @IBAction func toQuiz(_ sender: Any) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    
    @IBAction func toView(_ sender: Any) {
        performSegue(withIdentifier: "toView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerView
        nvc.students1 = students

    }
    
    
    
}

enum grade {
    case A
    case B
    case C
    case D
    case F
}

class Student {
    var name: String
    var age: Int
    var liamRating : grade
    
    init(name: String, age: Int, liamRating: grade) {
        self.name = name
        self.age = age
        self.liamRating = liamRating
    }
}
