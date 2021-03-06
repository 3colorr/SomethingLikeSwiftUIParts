//
//  SwiftUIView.swift
//  
//
//  Created by 3color on 2022/04/28.
//

import SwiftUI

struct AccordionModifier: ViewModifier {
    @Binding var isPresentAccordion: Bool
    
    let note: Text
    let closedImage: Image
    let openedImage: Image
    
    func body(content: Content) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                content
                
                Spacer()
                
                if isPresentAccordion {
                    openedImage
                }
                else {
                    closedImage
                }
            }
            .onTapGesture {
                withAnimation() {
                    isPresentAccordion.toggle()
                }
            }
            
            if isPresentAccordion {
                Divider()
                note
            }
        }
    }
}
