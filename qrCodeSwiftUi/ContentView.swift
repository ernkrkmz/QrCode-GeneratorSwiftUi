//
//  ContentView.swift
//  qrCodeSwiftUi
//
//  Created by Eren Korkmaz on 16.02.2024.
//

import SwiftUI
import CoreData
import QRCode

struct ContentView: View {
    
    let qrCodeUrl = QRCode(url: URL(string: "https://github.com/ernkrkmz")!, size: CGSize(width: 200, height: 200))
    @State public var myStr : String = ""
    
    @State var myImage: UIImage = try! QRCode(url: URL(string: "www.google..com")! , size: CGSize(width: 200, height: 200))!.image()
    
    var body: some View {

        VStack(){
            

                TextField("Paste URL",
                        text: $myStr)
                .padding().border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center).autocorrectionDisabled(true)

            
                

                Image(uiImage: myImage ).padding()
            
            
                
                Button(action: {
                    let qrOlustur = QRCode(url: URL(string: "\(myStr.lowercased())")!, size: CGSize(width: 200, height: 200))

                    myImage = try! qrOlustur!.image()
                    
                    
                    
                }, label: {
                    Text("Create QR")
                }).padding().border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/,width: 1).background(Color.accentColor).foregroundColor(.white)
            }
            
        
    }

    

    
}



#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
