import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyExpenseChart extends StatelessWidget {
  const WeeklyExpenseChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Weekly Expense',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View Report'),
                ),
              ],
            ),
            const Text(
              'From 1 - 6 Apr, 2024',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: 48,
                      title: '48%',
                      color: Colors.purple.shade200,
                      radius: 60,
                      titleStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PieChartSectionData(
                      value: 32,
                      title: '32%',
                      color: Colors.green.shade100,
                      radius: 60,
                      titleStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PieChartSectionData(
                      value: 13,
                      title: '13%',
                      color: Colors.red.shade100,
                      radius: 60,
                      titleStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PieChartSectionData(
                      value: 7,
                      title: '7%',
                      color: Colors.orange.shade100,
                      radius: 60,
                      titleStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Legend
            _buildLegendItem('Grocery', '\$758.20', Colors.purple.shade200),
            _buildLegendItem('Food & Drink', '\$758.20', Colors.green.shade100),
            _buildLegendItem('Shopping', '\$758.20', Colors.red.shade100),
            _buildLegendItem('Transportation', '\$758.20', Colors.orange.shade100),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(String title, String amount, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              color: title == 'Grocery' ? Colors.purple : 
                     title == 'Food & Drink' ? Colors.green :
                     title == 'Shopping' ? Colors.red :
                     Colors.orange,
            ),
          ),
          const Spacer(),
          Text(
            amount,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}