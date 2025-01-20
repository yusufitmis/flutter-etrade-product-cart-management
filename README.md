# Flutter E-Commerce App / Flutter E-Ticaret Uygulaması

This project is a simple e-commerce application built with Flutter. Users can view a list of products, add them to the cart, and remove items from the cart. The app uses the **BLoC Pattern** (Business Logic Component) for state management.

Bu proje, Flutter kullanarak yapılmış basit bir e-ticaret uygulamasıdır. Kullanıcılar ürünleri görüntüleyebilir, sepete ekleyebilir ve sepetteki öğeleri çıkarabilir. Uygulama, **BLoC Pattern** (Business Logic Component) kullanarak durum yönetimi sağlar.

![product_list](https://github.com/yusufitmis/flutter-etrade-product-cart-management/blob/main/product_list.PNG)
![cart](https://github.com/yusufitmis/flutter-etrade-product-cart-management/blob/main/cart.PNG)


## Features / Özellikler

- **Product List**: The app shows a list of products that users can browse.
- **Cart Management**: Users can add items to the cart and remove them.
- **BLoC Pattern**: The app uses the BLoC pattern for state management to separate business logic from UI.
- **Stream-based Updates**: The app uses Streams to dynamically update the product list and cart.

- **Ürün Listesi**: Uygulama, kullanıcıların göz atabileceği bir ürün listesi gösterir.
- **Sepet Yönetimi**: Kullanıcılar öğeleri sepete ekleyebilir ve çıkarabilir.
- **BLoC Pattern**: Uygulama, iş mantığını UI'dan ayırmak için BLoC desenini kullanır.
- **Stream Tabanlı Güncellemeler**: Uygulama, ürün listesi ve sepetin dinamik olarak güncellenmesi için Streams kullanır.

## Technologies Used / Kullanılan Teknolojiler

- **Flutter**: The framework used for building the app.
- **BLoC Pattern**: Used for state management and separating the business logic.
- **Dart Streams**: For managing data flow and real-time updates.

- **Flutter**: Uygulamanın inşa edilmesinde kullanılan framework.
- **BLoC Pattern**: Durum yönetimi ve iş mantığının ayrılması için kullanılır.
- **Dart Streams**: Veri akışını yönetmek ve gerçek zamanlı güncellemeler sağlamak için kullanılır.

## Project Structure / Proje Yapısı

The project has the following file and folder structure:

Proje aşağıdaki dosya ve klasör yapısına sahiptir: 


### BLoC

- **CartBloc**: Handles logic related to cart operations (adding/removing items).
- **ProductBloc**: Handles logic related to product listing and data fetching.

### Servisler

- **CartService**: Manages cart data (add/remove items).
- **ProductService**: Manages product data (product listing).

### Models

- **Cart**: Represents items in the cart (product and quantity).
- **Product**: Represents products (id, name, and price).

### Screens

- **CartScreen**: Displays the list of items in the cart, allows removing items.
- **ProductListScreen**: Displays a list of products and allows adding items to the cart.

## Installation / Kurulum

To run the project, you need to have Flutter installed on your machine. You can follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter.

Projeyi çalıştırabilmek için bilgisayarınızda Flutter yüklü olmalıdır. Flutter'ı yüklemek için [Flutter Kurulum Kılavuzuna](https://flutter.dev/docs/get-started/install) göz atabilirsiniz.

### Steps / Adımlar

1. Clone the repository:
   ```bash
   git clone <repo-url>


