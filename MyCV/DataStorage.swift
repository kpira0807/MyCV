import Foundation
import UIKit

struct MyInfo {
    var title: String
    var explanation: String
    var photo: UIImage
}

struct Experience {
    var name: String
    var about: String
}

struct Categories {
    var title: String
    var item: [Experience]
    var image: UIImage
}

class DataStorage {
    static let shared = DataStorage()
    
    private var information = [
        MyInfo(title: "Phone number", explanation: "067-408-5220", photo: #imageLiteral(resourceName: "Phone")),
        MyInfo(title: "E-mail", explanation: "iryna.kopchynska@gmail.com", photo: #imageLiteral(resourceName: "E-mail")),
        MyInfo(title: "LinkedIn", explanation: "http://linkedin.com/in/iryna-kopchynska-336437153", photo: #imageLiteral(resourceName: "LinkedIn")),
        MyInfo(title: "GitHub", explanation: "https://github.com/kpira0807", photo: #imageLiteral(resourceName: "GitHub")),
        MyInfo(title: "Region", explanation: "Kyiv, Ukraine", photo:  #imageLiteral(resourceName: "Region")),
        MyInfo(title: "Birth", explanation: "July 8, 1996", photo:  #imageLiteral(resourceName: "Birth")),
        MyInfo(title: "About me", explanation: """
I am a responsible, responsive and reliable person, I love to learn and quickly learn new things. I am interested in iOS development. Moreover, I am a fast and diligent persone, which makes me a resourceful and irreplaceable team player. Not afraid of tough deadlines and multitasking.
1.5 year experience in Swift, interested in remote work or full time. I will be very glad to become part of your team!
""", photo: #imageLiteral(resourceName: "About_me"))
    ]
    
    private var collectionInformation = [
        Categories(
            title: "Programming language",
            item: [
                Experience(name: "• Swift", about: "~1.5 year"),
                Experience(name: "• HTML", about: "Basic skills"),
                Experience(name: "• Shell", about: "Basic skills")],
            image: #imageLiteral(resourceName: "TL")),
        Categories(
            title: "Technical summury",
            item: [
                Experience(name: "• Libraries and technologies", about: "Design Patterns, iOS SDK, UIKit, multithread application development, Alamofire, UserDefaults, MapKit"),
                Experience(name: "• Development tools", about: "Xcode, Git, CS Adobe Photoshop, Jira, Trello")],
            image: #imageLiteral(resourceName: "PE")),
        Categories(
            title: "SWIFT projects",
            item: [
                Experience(name: "• Dogs App", about: """
Tools and technologies: UIKit, UITableView, UICollectionView, UITabbarViewController

Description: Swift test application with dog breeds and their descriptions
"""),
                Experience(name: "• TheCatApi", about: """
                Tools and technologies: UIKit, UITableView, UICollectionView, UITabbarViewController

                Description: This app with cat breeds, as well as a game where you can choose from photographs of cats that you like and just admire the images in the form of a gallery. The application has a table with breeds of cats and a description of each of them, as well as a search bar. There is a window with a cat photo gallery and a game for choosing photos
                """),
                Experience(name: "• DogsFriendly", about: """
Tools and technologies: UIKit, UITableView, UIAlertController, UIViewController, UICollectionViewController, MapKit

Description: An app for people who live in Kyiv with a pet. In this application there are cafes, bars and restaurants where they let the dog, as well as parks where you can walk with him. In addition, there is still a table with the addresses of veterinary clinics, phones and addresses, and a list of dog breeds
"""),
                Experience(name: "• Cat Facts App", about: """
Tools and technologies: UIKit, UITableView, UIActivityIndicatorView, UIAlertController, Alamofire, UserDefaults

Description: Swift test application with user registration and with interesting facts about cats
"""),
                Experience(name: "• Test Assignment", about: """
Tools and technologies: UIKit, UITableView, UIActivityIndicatorView, UIAlertController, Alamofire, UIViewController

Description: Swift test application with phone book and call function
"""),
                Experience(name: "• Notes", about: """
Tools and technologies: UIKit, UITableView, UIViewController, UIAlertController

Description: Swift app with table for notes
"""),
                Experience(name: "• ToDoList", about: """
Tools and technologies: UIKit, UITableView, UIAlertController, CoreData

Description: Swift app with table for notes
"""),
                Experience(name: "• Exchange rates", about: """
Tools and technologies: UIKit, UITableView, UIAlertController, Alamofire, UIViewController

Description: Swift app with table for notes
""")],
            image: #imageLiteral(resourceName: "Experience")),
        Categories(
            title: "Work experience",
            item: [
                Experience(name: "Design engineer (2017 - present)", about: "Kiev institute of energy projects"),
                Experience(name: "Junior iOS (March 2019 – October 2019)", about: "Pi-Minds development & consulting")],
            image: #imageLiteral(resourceName: "Work")),
        Categories(
            title: "Education",
            item: [
                Experience(name: "• Bachelor’s degree (2013-2017)", about: """
                                    National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute”

                                    Department: Heat and Power Engineering,
                                    Energy technician
                                    """),
                Experience(name: "• Master’s degree (2017–2019)", about: """
                                    National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute”

                                    Department: Heat and Power Engineering,
                                    Energy engineer
                                    """)],
            image: #imageLiteral(resourceName: "Education")),
        Categories(
            title: "Languages",
            item: [
                Experience(name: "• English", about: "Upper intermediate"),
                Experience(name: "• Ukrainian", about: "Native"),
                Experience(name: "• Russian", about: "Fluent")],
            image: #imageLiteral(resourceName: "Languages")),
        Categories(
            title: "Trainings and Courses",
            item: [
                Experience(name: "• 2016-2017", about: """
                                    First Cambridge Education Center of English
                                    Received: Intermediate
                                    """),
                Experience(name: "• 2017", about: "Spring school NNEC 'Energoatom'"),
                Experience(name: "• 2018-2020", about: "Study courses on raywenderlich for iOS"),
                Experience(name: "• October 2019 - present", about: """
Language Arts
Received: Upper intermediate
"""),
                Experience(name: "• 2019", about: "Study courses on Udacity for iOS")],
            image: #imageLiteral(resourceName: "TC")),
    ]
    
    func mainInfo() -> [MyInfo]{
        return information
    }
    
    func profInfo() -> [Categories] {
        return collectionInformation
    }
}
