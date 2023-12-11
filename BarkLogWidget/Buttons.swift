import SwiftUI
import WidgetKit

struct Buttons: View {
    var options : [[String: String]] = [
        ["imageName": "fork.knife", "color": "EatColor", "action": "eat"],
        ["imageName": "drop.fill", "color": "DrinkColor", "action": "drink"],
        ["imageName": "toilet.fill", "color": "WeeColor", "action": "wee"],
        ["imageName": "toilet.fill", "color": "PooColor", "action": "poo"]
    ]
    
    var body: some View {
        HStack {
            ForEach(options, id: \.self) { option in
                ActionButton(title: option["action"]!, imageName: option["imageName"]!, color: option["color"]!).padding(7)
            }
        }
    }
}

struct ActionButton: View {
    var title: String
    var imageName: String
    var color: String
    var body: some View {
        Button(intent: ActionIntent(type: title)){
            Image(systemName: imageName).foregroundColor(Color(color))
                .padding(5)
                
                .cornerRadius(10) // Corner radius for rounded corners
                .font(.headline) // Font size and style
                .padding()
                
        }
        .frame(width: 50, height: 50)
        .buttonStyle(.plain)
        
            .background(.gray)
            .cornerRadius(10)
    }
}


#Preview(as: .systemMedium) {
    BarkLogWidget()
} timeline: {
    SimpleEntry(date: .now, configuration: .init())
    
}

