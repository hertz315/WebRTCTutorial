//
//  ViewController.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import UIKit
import SnapKit

class OnboardingVC: UIViewController {
    
    // MARK: - Properties
    let onboardingView = OnboardingView()
    
    // MARK: - loadView
    // MARK: - 뷰컨트롤러를 메모리에 올리기 전 뷰를 만드는 메서드
    override func loadView() {
        super.loadView()
        view = onboardingView
        view.backgroundColor = .white
    }
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // addTaget
        onboardingView.signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
    }
    
    /// OnboardingVC -> SignupVC
    @objc func signupButtonTapped() {
        print(#fileID, #function, #line, "onbardingVC -> SignupVC")
        let signupVC = SignupVC()
        navigationController?.pushViewController(signupVC, animated: false)
    }
    
    
  
    
}


// MARK: - Preview
import SwiftUI

struct OnboardingVCRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = OnboardingVC
    
    func makeUIViewController(context: Context) -> OnboardingVC {
        return OnboardingVC()
    }
    
    func updateUIViewController(_ uiViewController: OnboardingVC, context: Context) {
    }
}

@available(iOS 13.0.0, *)
struct OnboardingVCPreview: PreviewProvider {
    static var previews: some View {
        OnboardingVCRepresentable()
    }
}

