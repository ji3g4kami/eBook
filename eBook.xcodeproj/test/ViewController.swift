//
//  ViewController.swift
//  test
//
//  Created by udn on 2018/11/8.
//  Copyright © 2018 dengli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openPdfPressed(_ sender: Any) {
        guard let path = Bundle.main.url(forResource: "swift", withExtension: "pdf") else {
            print("failed to unwrap fileURL")
            return
        }
        
        let pdfViewController = PDFViewController(pdfUrl: path)
        present(pdfViewController, animated: true, completion: nil)
    }
}

