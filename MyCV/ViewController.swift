import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profExperienceButton: UIButton!
    @IBOutlet weak var extraTable: UITableView!
    @IBOutlet weak var photoForCV: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        extraTable.delegate = self
        extraTable.dataSource = self
        
        navigationController?.navigationBar.barTintColor = UIColor.newOrange
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.newWhite]
        
        photoForCV.layer.cornerRadius = photoForCV.frame.size.width / 2
        photoForCV.clipsToBounds = true
        
        nameLabel.text = "Iryna Kopchynska"
        
        profExperienceButton.layer.cornerRadius = 6
        profExperienceButton.backgroundColor = UIColor.newOrange
        profExperienceButton.layer.masksToBounds = true
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStorage.shared.mainInfo().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExtraTableViewCell", for: indexPath)
            as? ExtraTableViewCell else { return UITableViewCell() }
        let myInfo = DataStorage.shared.mainInfo()[indexPath.row]
        cell.setup(with: myInfo)
        return cell
    }
}
