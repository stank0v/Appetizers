//
//  AppetizerHomeScreen.swift
//  Appetizers
//
//  Created by Hristo Stankov on 20.03.24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    var body: some View {
        ZStack{
            NavigationStack{
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        //.listRowSeparatorTint(Color("brandPrimary"))
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .listStyle(.inset)
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailsView(appetizer: viewModel.selectedAppetizer!,
                                     isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading{
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) {alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
        .listStyle(.inset)
    }
}


#Preview {
    AppetizerListView()
}


