import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const OkumaTakipUygulamasi());
}

class OkumaTakipUygulamasi extends StatelessWidget {
  const OkumaTakipUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Okuma Takip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF2E0707),
        cardColor: const Color(0xFF121318),
      ),
      home: const OkumaTakip(),
    );
  }
}

class OkumaTakip extends StatelessWidget {
  const OkumaTakip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 980),
          child: const SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: DashboardContent(),
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardContent extends StatefulWidget {
  const DashboardContent({super.key});

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  bool darkMode = true;

  final List<String> okunacakKitaplar = [
    "Suç ve Ceza",
    "1984",
    "Simyacı",
    "Hayvan Çiftliği",
  ];

  final TextEditingController kitapController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const accent = Color(0xFFB56576);
    const accent2 = Color(0xFF5BA4FF);
    const softCard = Color(0xFF15171C);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "BÖLÜM 1: Okunan Kitap ve İlerleme",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.auto_stories_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            const SizedBox(width: 8),

            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white24),
                image: const DecorationImage(
                  image: AssetImage('assets/masaüstü.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 18),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: softCard,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Bugünün Kitabı",
                        style: TextStyle(color: Colors.white70)),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('assets/book.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(width: 18),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Martin Eden",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 6),
                              const Text("Jack London",
                                  style: TextStyle(color: Colors.white70)),
                              const SizedBox(height: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  LinearProgressIndicator(
                                    value: 0.67,
                                    color: accent,
                                    backgroundColor: Colors.white24,
                                  ),
                                  SizedBox(height: 8),
                                  Text("67% Bitti",
                                      style: TextStyle(color: Colors.white60))
                                ],
                              ),

                              const SizedBox(height: 14),

                              Row(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white10),
                                    icon: const Icon(Icons.menu_book_outlined),
                                    label: const Text("Okumaya Devam Et"),
                                  ),
                                  const SizedBox(width: 12),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: const Icon(Icons.bookmark_outline),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(width: 18),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: softCard, borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Haftalık Hedef Panosu",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircularTarget(
                          size: 74,
                          progress: 300 / 500,
                          labelTop: "300/500",
                          labelBottom: "Sayfa",
                          color: accent,
                        ),
                        CircularTarget(
                          size: 74,
                          progress: 5 / 10,
                          labelTop: "5/10",
                          labelBottom: "Sert",
                          color: accent2,
                        )
                      ],
                    ),

                    const SizedBox(height: 14),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Okuma Serisi",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(height: 6),
                          Text("19",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Günlük Seri",
                              style: TextStyle(color: Colors.white54)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 22),

        const Text("BÖLÜM 2: İstatistikler",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),

        Row(
          children: const [
            Expanded(child: StatCard(label: "25 Kitap", icon: Icons.menu_book)),
            SizedBox(width: 12),
            Expanded(child: StatCard(label: "12.345 Sayfa", icon: Icons.pages)),
            SizedBox(width: 12),
            Expanded(child: StatCard(label: "350 Saat", icon: Icons.timer)),
          ],
        ),

        const SizedBox(height: 22),

        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: softCard, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: const [
              BadgeWidget(icon: Icons.emoji_events, color: Colors.amber),
              SizedBox(width: 8),
              BadgeWidget(icon: Icons.verified, color: Colors.lightGreen),
              SizedBox(width: 8),
              BadgeWidget(icon: Icons.local_fire_department,
                  color: Colors.redAccent),
            ],
          ),
        ),

        const SizedBox(height: 32),

        const Text("BÖLÜM 3: Okunacak Kitaplar",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        const SizedBox(height: 12),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: okunacakKitaplar.length,
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.book, color: Colors.white70),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(okunacakKitaplar[i],
                        style: const TextStyle(fontSize: 15)),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: () {
                      setState(() {
                        okunacakKitaplar.removeAt(i);
                      });
                    },
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 20),

        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text("Yeni Kitap Ekle",
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),

              TextField(
                controller: kitapController,
                decoration: InputDecoration(
                  hintText: "Kitap adı...",
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  if (kitapController.text.isNotEmpty) {
                    setState(() {
                      okunacakKitaplar.add(kitapController.text);
                      kitapController.clear();
                    });
                  }
                },
                child: const Text("Ekle"),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final String label;
  final IconData icon;
  const StatCard({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, size: 34, color: Colors.white70),
          const SizedBox(width: 12),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
class BadgeWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  const BadgeWidget({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: color, size: 26),
    );
  }
}

// Dairesel hedef göstergesi
class CircularTarget extends StatelessWidget {
  final double size;
  final double progress;
  final String labelTop;
  final String labelBottom;
  final Color color;

  const CircularTarget({
    super.key,
    required this.size,
    required this.progress,
    required this.labelTop,
    required this.labelBottom,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress,
            strokeWidth: 6,
            color: color,
            backgroundColor: Colors.white24,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(labelTop,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold)),
              Text(labelBottom,
                  style: const TextStyle(fontSize: 11, color: Colors.white70)),
            ],
          )
        ],
      ),
    );
  }
}
