import '../models/menu_item.dart';

const List<String> categories = ['Semua', 'Kopi', 'Non-Kopi', 'Snack'];

// Data dummy (tanpa API / database).
const List<MenuItem> dummyMenu = [
  MenuItem(
    id: 1,
    name: 'Espresso',
    category: 'Kopi',
    price: 18000,
    rating: 4.7,
    imageUrl:
        'https://images.unsplash.com/photo-1510707577719-ae7c14805e3a?w=400',
  ),
  MenuItem(
    id: 2,
    name: 'Cappuccino',
    category: 'Kopi',
    price: 25000,
    rating: 4.8,
    imageUrl:
        'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
  ),
  MenuItem(
    id: 3,
    name: 'Kopi Susu Gula Aren',
    category: 'Kopi',
    price: 22000,
    rating: 4.9,
    imageUrl:
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
  ),
  MenuItem(
    id: 4,
    name: 'Matcha Latte',
    category: 'Non-Kopi',
    price: 27000,
    rating: 4.6,
    imageUrl:
        'https://images.unsplash.com/photo-1515823064-d6e0c04616a7?w=400',
  ),
  MenuItem(
    id: 5,
    name: 'Coklat Panas',
    category: 'Non-Kopi',
    price: 23000,
    rating: 4.5,
    imageUrl:
        'https://images.unsplash.com/photo-1542990253-0d0f5be5f0ed?w=400',
  ),
  MenuItem(
    id: 6,
    name: 'Croissant',
    category: 'Snack',
    price: 20000,
    rating: 4.4,
    imageUrl:
        'https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=400',
  ),
  MenuItem(
    id: 7,
    name: 'Roti Bakar Coklat',
    category: 'Snack',
    price: 17000,
    rating: 4.3,
    imageUrl:
        'https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=400',
  ),
  MenuItem(
    id: 8,
    name: 'Kentang Goreng',
    category: 'Snack',
    price: 15000,
    rating: 4.2,
    imageUrl:
        'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=400',
  ),
];
