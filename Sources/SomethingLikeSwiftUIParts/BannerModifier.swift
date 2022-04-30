//
//  SwiftUIView.swift
//  
//
//  Created by 3colorr on 2022/04/29.
//

import SwiftUI

struct BannerModifier: ViewModifier {
    @Binding var isPresentView: Bool
    let message: String
    let shadowRadius: CGFloat
    let type: Animation
    let direction: Edge
    let duration: TimeInterval
    
    func body(content: Content) -> some View {
        ZStack {
            content
            
            if isPresentView {
                withAnimation(type) {
                    VStack {
                        if direction == .bottom {
                            Spacer()
                        }
                        
                        Text(message)
                            .font(.footnote)
                            .bold()
                            .padding(.vertical, 10)
                            .padding(.horizontal, 40)
                            .background(Capsule().fill(.white))
                        
                        if direction == .top {
                            Spacer()
                        }
                    }
                    .padding()
                    .shadow(radius: shadowRadius)
                    .transition(AnyTransition.move(edge: direction))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                            withAnimation(.linear) {
                                isPresentView.toggle()
                            }
                        }
                    }
                }
            }
        }
    }
}
