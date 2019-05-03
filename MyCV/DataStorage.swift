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
        MyInfo(title: "About me", explanation: "I am a responsible, helpful and reliable person, also challenges do not frighten me. I am keen on developing for iOS. Moreover, I quickly study new information. As a consequence, I am diligent, resourceful and a team player.", photo: #imageLiteral(resourceName: "About_me"))
    ]
    
    private var collectionInformation = [
        Categories(
            title: "Programming language",
            item: [
                Experience(name: "• Swift", about: "~1 year"),
                Experience(name: "• HTML", about: "Basic skills"),
                Experience(name: "• Shell", about: "Basic skills")],
            image: #imageLiteral(resourceName: "TL")),
        Categories(
            title: "Technical summary",
            item: [
                Experience(name: "• Libraries and technologies", about: "Design Patterns, iOS SDK, UIKit, multithread application development"),
                Experience(name: "• Development tools", about: "Xcode, Git, CS Adobe Photoshop, Jira, Trello")],
            image: #imageLiteral(resourceName: "PE")),
        Categories(
            title: "SWIFT projects",
            item: [
                Experience(name: "• Dogs App", about: "Tools and technologies: UIKit, UITableView, UICollectionView, UITabbarViewController"),
                Experience(name: "• Cat Facts App", about: "Tools and technologies: UIKit, UITableView, UIActivityIndicatorView, UIAlertController, Alamofire, UserDefaults")],
            image: #imageLiteral(resourceName: "Experience")),
        Categories(
            title: "Work experience",
            item: [
                Experience(name: "Design engineer (2017 - present)", about: "Kiev institute of energy projects")],
            image: #imageLiteral(resourceName: "Work")),
        Categories(
            title: "Education",
            item: [
                Experience(name: "• Bachelor’s degree (2013-2017)", about: """
                                    National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute”
                                    Department: Heat and Power Engineering,
                                    Energy technician
                                    """),
                Experience(name: "• Master’s degree (2017 – to May 2019)", about: """
                                    National Technical University of Ukraine “Igor Sikorsky Kyiv Polytechnic Institute”
                                    Department: Heat and Power Engineering,
                                    Energy engineer
                                    """)],
            image: #imageLiteral(resourceName: "Education")),
        Categories(
            title: "Languages",
            item: [
                Experience(name: "• English", about: "Intermediate"),
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
                Experience(name: "• 2017", about: "Spring school NNEC 'Energoatom'")],
            image: #imageLiteral(resourceName: "TC")),
    ]
    
    func mainInfo() -> [MyInfo]{
        return information
    }
    
    func profInfo() -> [Categories] {
        return collectionInformation
    }
}
