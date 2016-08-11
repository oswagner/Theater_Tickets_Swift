//
//  ViewController.swift
//  Theater Tickets
//
//  Created by Wagner Oliveira dos Santos on 8/11/16.
//  Copyright © 2016 Wagner Oliveira dos Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.   
        
        let studentWithPass = Student(pass: true)
        let student = Student(pass: false)
        
        let children = Children()
        let elderly = Elderly()        
        
        print("Student payment on Monday = R$ \(student.pay(.MONDAY))")
        
        print("Student with pass payment on Monday = R$ \(studentWithPass.pay(.MONDAY))")
        
        print("Children payment on Monday = R$ \(children.pay(.MONDAY))")
        
        print("Children payment on Wednesday = R$ \(children.pay(.WEDNESDAY))")
        
        print("Elerly payment on Wednesday = R$ \(elderly.pay(.WEDNESDAY))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

