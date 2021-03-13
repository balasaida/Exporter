//
//  MessageExportViewController.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 Burri IT Solutions. All rights reserved.
//

import UIKit

/// Added two view types in enum
private enum ViewType {
    
    case annotationView
    case commentView
}

// MARK: - Privates
extension ViewType {
    
    /// The title returns the title for each view
    fileprivate var title: String {
        switch self {
        case .annotationView:
            return "Export Annotation"
        case .commentView:
            return "Export Comment"
        }
    }
    
    /// The edge insets returns the edgeInsets for each view
    fileprivate var edgeInsets: UIEdgeInsets {
        switch self {
        case .annotationView, .commentView:
            return UIEdgeInsets(top: 16, left: 16, bottom: -16, right: -16)
        }
    }
}

final class MessageExportViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    let model: MessageExportModel = MessageExportModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

// MARK: - Privates
extension MessageExportViewController {
    
    private func configure() {
        model.stackableItems.forEach {
            switch $0.self {
            case .annotationItem:
                addExportView(type: .annotationView)
            case .commentItem:
                addExportView(type: .commentView)
            }
        }
    }
    
    /// Added a generic method to add the export view
    private func addExportView(type: ViewType) {
        let exportView = ExportView.createExportView(title: type.title)
        
        exportView.didTapExportButton = { [weak self] in
            switch type {
            case .commentView:
                self?.model.exportComment()
            case .annotationView:
                self?.model.exportAnnotation()
            }
        }
        
        stackView.addArrangedSubview(UIView.createView(withSubview: exportView, edgeInsets: type.edgeInsets))
    }
}



