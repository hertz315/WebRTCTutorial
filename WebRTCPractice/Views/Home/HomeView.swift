//
//  HomeView.swift
//  WebRTCPractice
//
//  Created by Hertz on 1/7/23.
//

import UIKit

class HomeView: UIView {
    
    private var nickName: String = ""

    lazy var nickNameLabel: UILabel = {
        let label = UILabel()
        label.text = self.nickName
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    // MARK: - setup
    func setup() {
        addViews()
    }
    
    // MARK: - addSubView
    func addViews() {
        addSubview(nickNameLabel)
    }
    
    // MARK: - constraints
    func constraints() {
        
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        constraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Preview
import SwiftUI

struct HomeViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> HomeView {
        return HomeView()
    }
    
    func updateUIView(_ uiView: HomeView, context: Context) {
    }
    
    typealias UIViewType = HomeView
    
    
}

@available(iOS 13.0.0, *)
struct HomeViewPreview: PreviewProvider {
    static var previews: some View {
        HomeViewRepresentable()
    }
}
