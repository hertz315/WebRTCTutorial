//
//  singupViewController.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import Foundation
import UIKit

class SignupVC: UIViewController {
    
    // MARK: - Properties
    let signupView = SignupView()
    
    // MARK: - loadView
    override func loadView() {
        super.loadView()
        view = signupView
    }
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

// MARK: - Preview
import SwiftUI

struct SignupVCRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = SignupVC
    
    func makeUIViewController(context: Context) -> SignupVC {
        return SignupVC()
    }
    
    func updateUIViewController(_ uiViewController: SignupVC, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct SignupVCPreview: PreviewProvider {
    static var previews: some View {
        SignupVCRepresentable()
    }
}

