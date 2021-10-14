//
//  HistoryScreen.swift
//  AgeGuess
//
//  Created by Yeseo Kim on 2021-10-14.
//

//import SwiftUI
//
//struct HistoryScreen: View {
//
//    @StateObject private var vm = GuessViewModelImpl(
//    service: GuessServiceImpl()
//    )
//
//    var body: some View {
        
//        Group {
//
//            if vm.quotes.isEmpty {
//                LoadingView(text: "Loading History")
//            } else {
//
//                List {
//                    ForEach(vm.quotes, id: \.anime) { item in
//                        QuoteView(item: item)
//                    }
//                }
//
//            }
//        }
//        .task {
//            await vm.getHistory()
//        }
//
//    }
//}
//
//struct HistoryScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HistoryScreen()
//    }
//}
