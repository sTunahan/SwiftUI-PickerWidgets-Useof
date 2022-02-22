import SwiftUI

struct ContentView: View {
    
    @State private var countryList = [String]()
    @State private var chosenIndex = 0 /// to get index of selected country
    
    @State private var pickerShow = false /// for display control
    
    @State private var chosenCountry = "" /// to get the selected country
    
    var body: some View {
        
        
        VStack{
            
            TextField("Select Country",text: $chosenCountry)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onTapGesture { /// Gives click feature.
                    
                    self.pickerShow = true
                }
            if pickerShow{
                
                
                Picker(selection: $chosenIndex,label: Text("")){
                    
                    ForEach(0..<self.countryList.count){
                        Text(self.countryList[$0])
                    }
                    
                }.pickerStyle(.inline).labelsHidden()
                
                HStack{
                    //  FOR BUTTON
                    Button(action:{
                        self.chosenCountry = self.countryList[self.chosenIndex]
                        self.pickerShow = false
                    }){
                        Text("Select Country")
                    }
                    Button(action:{
                        self.pickerShow = false
                    }){
                        Text("Close").foregroundColor(Color .red)
                        
                    }
                }
            }
            
        }.onAppear(){ ///onAppear()  : for codes that will run when the page appears
            
            self.countryList = ["Türkiye","Almanya","Fransa","İtalya","İspanya","Portekiz","Kanada","Japonya"]
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ContentView()
            .previewDevice("iPhone 11")
        
        
    }
}
