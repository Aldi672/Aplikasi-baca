// categories_screen.dart
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data untuk kategori buku
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'JASAD RENIK',
        'subtitle': 'Dalam Perspektif...',
        'category': 'Tafsir Ilmi',
        'color': Colors.blue.shade100,
      },
      {
        'title': 'MAKANAN & MINUMAN',
        'subtitle': '',
        'category': 'Tafsir Ilmi',
        'color': Colors.green.shade100,
      },
      {
        'title': 'Manfaat Benda-Ben...',
        'subtitle': '',
        'category': 'Tafsir Ilmi',
        'color': Colors.orange.shade100,
      },
      {
        'title': 'PENCIPTAAN BUMI',
        'subtitle': 'Dalam Perspektif...',
        'category': 'Tafsir Ilmi',
        'color': Colors.purple.shade100,
      },
      {
        'title': 'PENCIPTAAN JAGAT RAYA',
        'subtitle': 'Dalam Perspektif...',
        'category': 'Tafsir Ilmi',
        'color': Colors.red.shade100,
      },
      {
        'title': 'SAMUDRA',
        'subtitle': 'Dalam Perspektif...',
        'category': 'Tafsir Ilmi',
        'color': Colors.teal.shade100,
      },
      {
        'title': 'PENCIPTAAN BUMI Dala...',
        'subtitle': '',
        'category': 'Tafsir Ilmi',
        'color': Colors.pink.shade100,
      },
      {
        'title': 'PENCIPTAAN JAGAT RAYA...',
        'subtitle': '',
        'category': 'Tafsir Ilmi',
        'color': Colors.indigo.shade100,
      },
      {
        'title': 'SAMUDRA',
        'subtitle': 'Dalam Perspektif...',
        'category': 'Tafsir Ilmi',
        'color': Colors.cyan.shade100,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 kolom
            crossAxisSpacing: 12, // Spasi horizontal antar item
            mainAxisSpacing: 12, // Spasi vertikal antar item
            childAspectRatio: 0.7, // Rasio lebar/tinggi item
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return _buildCategoryCard(
              title: category['title']!,
              subtitle: category['subtitle']!,
              category: category['category']!,
              color: category['color'] as Color,
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryCard({
    required String title,
    required String subtitle,
    required String category,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Judul utama
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            // Subtitle (jika ada)
            if (subtitle.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade700,
                  height: 1.1,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],

            // Spacer untuk push category ke bawah
            const Spacer(),

            // Kategori (Tafsir Ilmi)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                category,
                style: const TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
