import UIKit

class ProfExpirienceCollectionViewController: UICollectionViewController {

    private let profInfo = DataStorage.shared.profInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.newOrange
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.newWhite]
    }

    @IBAction func doneVC(_ segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreInform" {
            guard let cell = sender as? UICollectionViewCell, let indexPath = collectionView.indexPath(for: cell) else { return }
            let collectionInform = profInfo[indexPath.row]
            if let moreInformationVC: MoreInformationVC = segue.destination as? MoreInformationVC {
                moreInformationVC.collectionInform = collectionInform
            }
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataStorage.shared.profInfo().count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExtraCollectionViewCell", for: indexPath) as?   ExtraCollectionViewCell else { return UICollectionViewCell() }
        let inform = profInfo[indexPath.row]
        cell.setup(with: inform)
        return cell
    }
}

extension ProfExpirienceCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width/2-12, height: self.view.frame.size.width/2-12)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 6, left: 8, bottom: 6, right: 8)
    }

}

class MoreInformationVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var moreTable: UITableView!
    
    var collectionInform: Categories?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreTable.delegate = self
        moreTable.dataSource = self
        title = collectionInform?.title
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collectionInform?.item.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoreTableViewCell", for: indexPath)
            as? MoreTableViewCell,
            let experience = collectionInform?.item[indexPath.row]
        else {
            return MoreTableViewCell()
        }
        cell.setup(with: experience)
        return cell
    }
}
