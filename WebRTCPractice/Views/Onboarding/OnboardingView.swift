//
//  OnboardingView.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/6/23.
//

import UIKit
import SnapKit

class OnboardingView: UIView {
    
    // MARK: - Properties
    lazy var onboardingMainLabel: UILabel = {
        let label = UILabel()
        label.text = "WebRTCTutorial"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    lazy var signupButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("회원가입", for: .normal)
        button.tintColor = .black
        return button
    }()
    
    // MARK: - setup
    func setup() {
        addViews()
    }
    
    // MARK: - addSubView
    func addViews() {
        addSubview(signupButton)
        addSubview(onboardingMainLabel)
    }
    
    // MARK: - constraints
    func constraints() {
        // 온보딩 메인 라벨
        onboardingMainLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        // 회원가입 버튼
        signupButton.snp.makeConstraints { make in
            make.leading.equalTo(16)
            make.trailing.equalTo(-16)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-30)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        constraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Preview
import SwiftUI

struct OnboardingViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> OnboardingView {
        return OnboardingView()
    }
    
    func updateUIView(_ uiView: OnboardingView, context: Context) {
    }
    
    typealias UIViewType = OnboardingView
    
}

@available(iOS 13.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
        OnboardingViewRepresentable()
    }
}

