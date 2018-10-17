//
//  NavigationController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

typealias NavigationController = BaseNavigationController<NavigationBar>

typealias InverseNavigationController = BaseNavigationController<InverseNavigationBar>

class BaseNavigationController<T: UINavigationBar>: UINavigationController {

    // MARK: - Properties

    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let color = navigationBar.backgroundColor else {
            return UIColor.primaryColor.isDark ? .lightContent : .default
        }
        return color.isDark ? .lightContent : .default
    }

    // MARK: - Init

    convenience init() {
        self.init(navigationBarClass: T.self, toolbarClass: UIToolbar.self)
    }

    convenience override init(rootViewController: UIViewController) {
        self.init(navigationBarClass: T.self, toolbarClass: UIToolbar.self)
        pushViewController(rootViewController, animated: false)
    }

    override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}