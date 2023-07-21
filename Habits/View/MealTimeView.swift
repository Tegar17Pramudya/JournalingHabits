import SwiftUI

struct MealTimeView: View {
    @State private var isModalVisible = false

    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text("Meal Time")
                    .font(.system(size: 36, weight: .bold))
                    .frame(width: 306, alignment: .leading)
                    .offset(y:-300)}
            Image("Meal Time")
                .scaleEffect(0.5)
                .offset(y:-100)
            Text("Eating together with family is vital for children's development and the benefits extend to the entire family, including parents. Mealtime promotes effective communications.")
                .font(.system(size: 17, weight: .regular))
                .frame(width: 320)
                .multilineTextAlignment(.center)
                .offset(y:150)

            Button {
                isModalVisible = true
            } label: {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color("PrimaryBlue"))
                    .frame(width: 332, height: 55)
                    .overlay(
                        Text("Next")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white))
            }
            .offset(y:300)
            .sheet(isPresented: $isModalVisible) {
                CameraView(isModalVisible: $isModalVisible)
            }
        }
        .navigationBarItems(leading: BackButton())
    }
}

struct MealTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MealTimeView()
    }
}
