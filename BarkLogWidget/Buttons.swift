import SwiftUI

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
                ActionButton(title: option["action"]!, imageName: option["imageName"]!, color: option["color"]!).padding()
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
        }
    }
}

#if DEBUG
struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
#endif

