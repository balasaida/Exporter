//
//  UIVIew+Extensions.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import UIKit

extension UIView {
    
    static func createView(withSubview view: UIView, edgeInsets: UIEdgeInsets = .zero, backgroundColor: UIColor = .white) -> UIView {
        let newView = autolayoutView()
        newView.backgroundColor = backgroundColor
        newView.addConstraintSubview(view, edgeInset: edgeInsets)
        return newView
    }
    
    static func autolayoutView<T>() -> T where T: UIView {
        let view = T()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    func addConstraintSubview(_ view: UIView, edgeInset: UIEdgeInsets = .zero) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(view)
        
        view.topAnchor.constraint(equalTo: topAnchor, constant: edgeInset.top).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: edgeInset.bottom).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: edgeInset.left).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: edgeInset.right).isActive = true
    }
}
