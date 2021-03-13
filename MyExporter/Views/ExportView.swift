//
//  ExportView.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import UIKit

final class ExportView: UIView {
    
    @IBOutlet weak var exportButton: UIButton!
    var didTapExportButton: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        exportButton.layer.cornerRadius = 5.0
    }
    
    static func createExportView(title: String) -> ExportView {
        let exportView: ExportView = ExportView.loadFromNib()
        exportView.configure(title: title)
        return exportView
    }
}

// MARK: - IBActions
extension ExportView {
    
    @IBAction func didTapExport(_ sender: Any) {
        didTapExportButton?()
    }
}

// MARK: - Private Methods
extension ExportView {
    
    private func configure(title: String) {
        exportButton.setTitle(title, for: .normal)
    }
}


