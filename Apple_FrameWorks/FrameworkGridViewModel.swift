//
//  FrameworkGridViewModel.swift
//  Apple_FrameWorks
//
//  Created by Amirhossein Mirzaei on 6/3/25.
//

import SwiftUI

 final class FrameworkGridViewModel : ObservableObject{
    
     
     var selectedFramework: Framework? {
         didSet{
             isShowingDetailView = true
         }
     }
    @Published var isShowingDetailView = false
}
