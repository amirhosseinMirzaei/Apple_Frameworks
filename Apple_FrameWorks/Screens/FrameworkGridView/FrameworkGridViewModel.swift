//
//  FrameworkGridViewModel.swift
//  Apple_FrameWorks
//
//  Created by Amirhossein Mirzaei on 6/3/25.
//

import SwiftUI

 final class FrameworkGridViewModel : ObservableObject{
         
     let columns: [GridItem]=[GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
     
     var selectedFramework: Framework? {
         didSet{isShowingDetailView = true}
     }
    @Published var isShowingDetailView = false
}
