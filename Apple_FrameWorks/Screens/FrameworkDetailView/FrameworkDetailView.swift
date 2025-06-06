//
//  FrameworkDetailView.swift
//  Apple_FrameWorks
//
//  Created by Amirhossein Mirzaei on 6/3/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework:Framework
    
//    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack{
            
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework:framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button{
                
                isShowingSafariView = true
                
                
            }label: {
//               AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }.buttonStyle(.bordered)
                .controlSize(.large)
//                .buttonBorderShape(.roundedRectangle(radius: 20))
                .tint(.red)
                
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)! )
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
