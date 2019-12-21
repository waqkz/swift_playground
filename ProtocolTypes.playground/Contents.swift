import UIKit

protocol PersonProtocol {
     var firstName: String { get set }
     var lastName: String { get set }
     var birthDate: Date { get set }
     var profession: String { get }
     init(firstName: String,lastName: String, birthDate: Date)
}

func updatePerson(person: PersonProtocol) -> PersonProtocol { // Code to update person goes here return person
    
    var person = person
    person.firstName = "Test"
    person.lastName = "User"
    
    return person
}

struct Person: PersonProtocol{
    
    var firstName: String
    var lastName: String
    var birthDate: Date
    var profession: String
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.profession = ""
    }
}

var myPerson: PersonProtocol

myPerson = Person(firstName: "Jon", lastName: "Hoffman", birthDate: Date())
print("\(myPerson.firstName) \(myPerson.lastName)")

myPerson = Person(firstName: "Dan", lastName: "Marino", birthDate: Date())
print("\(myPerson.firstName) \(myPerson.lastName)")

var updatedPerson = updatePerson(person: myPerson)
print("\(updatedPerson.firstName) \(updatedPerson.lastName)")
