import 'package:flutter/material.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'استثمر معانا',
          style: TextStyle(
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // بطاقة استثمار رئيسية
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey[900],
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'حساب استثمار VIP',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'عوائد تصل إلى 15% سنوياً مع استثمارات آمنة.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'الرصيد الحالي: \$120,000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            // قائمة خيارات الاستثمار
            Expanded(
              child: ListView(
                children: [
                  investmentOption(
                    title: 'استثمر الآن',
                    icon: Icons.trending_up,
                    color: Colors.amberAccent,
                  ),
                  investmentOption(
                    title: 'تتبع الاستثمارات',
                    icon: Icons.bar_chart,
                    color: Colors.blueAccent,
                  ),
                  investmentOption(
                    title: 'سحب الأرباح',
                    icon: Icons.wallet,
                    color: Colors.greenAccent,
                  ),
                  investmentOption(
                    title: 'تاريخ المعاملات',
                    icon: Icons.history,
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget investmentOption({
    required String title,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[850],
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: color, size: 30),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white70),
        onTap: () {},
      ),
    );
  }
}
