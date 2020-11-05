//
//  GreetingViewController.swift
//  MVP
//
//  Created by a.reshetnikov on 14/10/2019.
//  Copyright © 2019 MIPT. All rights reserved.
//

import UIKit

protocol GreetingView: class {
    func setGreeting(greeting: String)
}

protocol GreetingViewPresenter {
    init(view: GreetingView)
    func showGreeting()
}

class GreetingViewController: UIViewController, GreetingView {
    var presenter: GreetingViewPresenter!

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!

    @IBAction func didTapButton(_ sender: Any) {
        self.presenter.showGreeting()
    }

    func setGreeting(greeting: String) {
        self.myLabel.text = greeting
    }

}
