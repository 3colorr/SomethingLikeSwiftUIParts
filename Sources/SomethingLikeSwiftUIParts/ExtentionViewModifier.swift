//
//  SwiftUIView.swift
//  
//
//  Created by becomefoolish on 2022/04/28.
//

import SwiftUI

extension View {
    /**
     Adds an accordion action to perform. When "isPresent: Binding<Bool>" is TRUE, context will open.
     When "isPresent: Binding<Bool> is FALSE", context will close.
     */
    func somethingLikeAccordion(isPresent: Binding<Bool>, body: String, closedImage: Image = Image(systemName: "chevron.up"), openedImage: Image = Image(systemName: "chevron.down")) -> some View {
        modifier(AccordionModifier(isPresentAccordion: isPresent, note: body, closedImage: closedImage, openedImage: openedImage))
    }
}
