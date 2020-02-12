//
//  NavigationConfigurator.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 12.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import UIKit
import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}
