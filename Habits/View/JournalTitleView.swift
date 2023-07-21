import SwiftUI

struct JournalTitleView: View {
    @State private var title : String = ""
    @Binding var isModalVisible: Bool
    var body: some View {
        NavigationView {
            VStack (spacing:80){
                Text("Journal Title")
                    .font(.system(size: 17, weight: .semibold))
                TextField("Write Your Journal Title", text: $title)
                    .frame(width: 350, height: 35)
                    .font(.system(size: 25))
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color("PrimaryBlue"))
                    .frame(width: 332, height: 55)
                    .overlay(
                        Text("Start Recording")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white))
            }
        }
    }
}

struct JournalTitleView_Previews: PreviewProvider {
    static var previews: some View {
        JournalTitleView(isModalVisible: .constant(false))
    }
}
