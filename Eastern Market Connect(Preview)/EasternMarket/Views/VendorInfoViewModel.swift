//
//  StudentViewModel.swift
//  Software Architecture
//
//  Created by Kamau Baaqi on 1/31/23.
//

import Foundation

//View model that shows the student template
//Student array that holds all the students
// student Struct to hold the data point of student and properties
//Student view model is the glue that connects the student model to the view screen. handles all logic

// mutating function allows the function to change as it have to change the bio depending on which student is selected
// Identifiable allows the array of students to populuate on the screen as each student gets a unique ID.
//

struct Vendor: Identifiable {
    var id = UUID()
    var name: String
    var image:String
    var bio:String
    
    
//    mutating func greeting() {
//        self.bio = "Hi i'm \(self.name).\(self.bio)"
//    }
}
    
    
    
    /*
     below is the students array that holds all the students. This model is scalable since you can add a student and everything in the app will auto format
     "ObservableObject" allows the class to update on the screen whenever it gets changed. "Observableobject" goes in combination with "@Published" to achieve this. try adding a new student to the array and watch what happens to the screens in the app.
     */
    
    class VendorInfoViewModel : ObservableObject {
        
        @Published var emVendors:[Vendor] = [
            
            Vendor(name: "Grobbels", image: "Grobbels", bio: "Hi i'm nick. I am 27 years old and I have a dog name DJ. My favorite color is black"),
            Vendor(name: "Germack", image: "Germack", bio: "some bio"),
            Vendor(name: "Flowers For Dreams", image: "Flowers", bio: "some bio"),
            Vendor(name: "Louies", image: "Louies", bio: "some bio"),
            Vendor(name: "Moxy", image: "Moxy", bio: "some bio")
            
            
        ]
        
        //    func greeting(student: Student) {
        //        student.bio = "Hi i'm \(student.name). I am \(student.pickNumber) years old. My favorite color is \(student.favoriteColor)"
        //   }
    }

