//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Bennett Lee on 9/6/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        let rect = CGRect(
            x: width - 100,
            y: height - 100,
            width: 100,
            height: 100
        )
        let label = UILabel(frame: rect)
        label.text = "Bennett Lee"

        let font = UIFont.systemFont(ofSize: 15.0)
        label.font = font

        label.backgroundColor = UIColor.red

        view.addSubview(label)
    }


}

