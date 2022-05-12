//
//  ContentView.swift
//  ActionSheet Usage SwiftUI
//
//  Created by Ömer Faruk Kılıçaslan on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var actionSheetGorunsunMu = false
    var body: some View {
        
        Button {
            self.actionSheetGorunsunMu = true
        } label: {
            Text("Action Sheet Goster")
        }
        .actionSheet(isPresented: $actionSheetGorunsunMu) {
            
            ActionSheet(title: Text("Başlık"), message: Text("Mesaj")
                        , buttons: [
            
                            .default(Text("Default/Tamam")){
                                print("Tamam Tıklandı")
                            },
                            
                                .destructive(Text("Destructive/İptal")) {
                                    print("İptal Tıklandı")
                                }
                                
            
            
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
