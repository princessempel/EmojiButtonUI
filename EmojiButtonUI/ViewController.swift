//
//  ViewController.swift
//  EmojiButtonUI
//
//  Created by Princess Empel on 2/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white

        let alienButton = UIButton(type: .system)
        alienButton.translatesAutoresizingMaskIntoConstraints = false
        alienButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        alienButton.setTitle("👾", for: .normal)
        view.addSubview(alienButton)
        
        let ghostButton = UIButton(type: .system)
        ghostButton.translatesAutoresizingMaskIntoConstraints = false
        ghostButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        ghostButton.setTitle("👻", for: .normal)
        view.addSubview(ghostButton)
        
        let nerdButton = UIButton(type: .system)
        nerdButton.translatesAutoresizingMaskIntoConstraints = false
        nerdButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        nerdButton.setTitle("🤓", for: .normal)
        view.addSubview(nerdButton)
        
        let robotButton = UIButton(type: .system)
        robotButton.translatesAutoresizingMaskIntoConstraints = false
        robotButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        robotButton.setTitle("🤖", for: .normal)
        view.addSubview(robotButton)
        
        var buttons = [alienButton, ghostButton, nerdButton, robotButton]

        NSLayoutConstraint.activate([
            alienButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            alienButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            alienButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            ghostButton.topAnchor.constraint(equalTo: alienButton.bottomAnchor),
            ghostButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ghostButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            nerdButton.topAnchor.constraint(equalTo: ghostButton.bottomAnchor),
            nerdButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            nerdButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            robotButton.topAnchor.constraint(equalTo: nerdButton.bottomAnchor),
            robotButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            robotButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        ])
    
        alienButton.backgroundColor = .systemRed
        ghostButton.backgroundColor = .systemYellow
        nerdButton.backgroundColor = .systemRed
        robotButton.backgroundColor = .systemYellow
        
        for b in buttons {
            b.tintColor = .white
            b.layer.cornerRadius = 10
        }
        
        alienButton.addTarget(self, action: #selector(alienAction), for: .touchUpInside)
        ghostButton.addTarget(self, action: #selector(ghostAction), for: .touchUpInside)
        nerdButton.addTarget(self, action: #selector(nerdAction), for: .touchUpInside)
        robotButton.addTarget(self, action: #selector(robotAction), for: .touchUpInside)
    }
    
    @objc func alienAction(sender: UIButton!) {
        let alienAct = UIAlertController(title: "Alien", message: "👾", preferredStyle: UIAlertController.Style.alert)
        alienAct.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alienAct, animated: true, completion: nil)
    }
    
    @objc func ghostAction(sender: UIButton!) {
        let ghostAct = UIAlertController(title: "Ghost", message: "👻", preferredStyle: UIAlertController.Style.alert)
        ghostAct.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(ghostAct, animated: true, completion: nil)
    }
    
    @objc func nerdAction(sender: UIButton!) {
        let nerdAct = UIAlertController(title: "Nerd", message: "🤓", preferredStyle: UIAlertController.Style.alert)
        nerdAct.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(nerdAct, animated: true, completion: nil)
    }
    
    @objc func robotAction(sender: UIButton!) {
        let robotAct = UIAlertController(title: "Robot", message: "🤖", preferredStyle: UIAlertController.Style.alert)
        robotAct.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(robotAct, animated: true, completion: nil)
    }
}

