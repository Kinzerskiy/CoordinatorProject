//
//  FirstViewController.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import UIKit
import Combine

class FirstViewController: UIViewController {
    
    var infoLabel: UILabel?
    var viewModel: FirstTabViewModel!
    var showDetailRequested : () -> () = { }
    
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        setupInfoLabel()
        setupDetailButton()
    }
    
    func setupInfoLabel() {
        let infoLabel = UILabel(frame: CGRect(x: 100, y: 300, width: 300, height: 60))
        
        self.view.addSubview(infoLabel)
        self.infoLabel = infoLabel
        
        viewModel.$email.combineLatest(viewModel.$name)
            .sink { [weak self] (name, email) in
                if name.count + email.count > 0 {
                    self?.infoLabel?.text = "\(name) with mail \(email)"
                } else {
                    self?.infoLabel?.text = ""
                }
            }.store(in: &subscriptions)
    }
    
    func setupDetailButton() {
        let button = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 60))
        button.setTitle("Go to Detail", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc
    func buttonAction() {
        showDetailRequested()
    }
}
