//
//  AFButton.swift
//  Apple_FrameWorks
//
//  Created by Amirhossein Mirzaei on 6/3/25.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
