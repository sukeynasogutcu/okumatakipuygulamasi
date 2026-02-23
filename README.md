# Okuma Takip (Reading Tracker)
Kişisel kitap okuma alışkanlıklarınızı yönetmek, hedeflerinizi takip etmek ve okuma istatistiklerinizi görselleştirmek için tasarlanmış modern bir Flutter mobil uygulama arayüzü.

#Özellikler
Uygulama şu anda aşağıdaki işlevsellikleri ve bölümleri içermektedir:
Bölüm 1: İlerleme Takibi
Günün Kitabı: Şu an okuduğunuz kitabın detaylarını ve %67 gibi görsel bir ilerleme çubuğunu görüntüler.
Haftalık Hedef Panosu: Sayfa sayısı ve kitap hedefi için dairesel (CircularProgressIndicator) göstergeler.
Okuma Serisi: Kaç gündür üst üste kitap okuduğunuzu takip eden "Streak" sayacı.
Bölüm 2: İstatistikler ve Başarılar
Toplam okunan kitap, sayfa ve harcanan saat verileri için özel kartlar.
Kazanılan rozetleri (başarımları) gösteren dinamik bir rozet paneli.
Bölüm 3: Okuma Listesi (CRUD)
Okunacak kitapları listeleyen dinamik bir yapı.
Kitap Ekleme: TextField aracılığıyla listeye yeni kitaplar ekleme.
Kitap Silme: Liste elemanlarını tek tıkla kaldırma özelliği.

# Kullanılan Teknolojiler ve Yapılar
Flutter & Dart: UI geliştirme için temel framework.
State Management: Küçük ölçekli işlemler için StatefulWidget ve setState.
Custom UI Components: * StatCard: İstatistikleri göstermek için tekrar kullanılabilir widget.
CircularTarget: Özel dairesel ilerleme göstergesi.
BadgeWidget: Başarı rozetleri için stilize edilmiş ikonlar.
Responsive Design: Farklı ekran boyutları için ConstrainedBox ve Expanded kullanımı.
Ekran Görüntüsü Tasarımı
Uygulama, derin bordo (#2E0707) ve koyu gri (#121318) tonlarında Dark Mode odaklı, modern ve göz yormayan bir tasarım diline sahiptir.
 
# Gelecek Planları
[ ] SQLite veya Firebase entegrasyonu ile verileri kalıcı hale getirmek.
[ ] Kitaplar için arama ve filtreleme özelliği.
[ ] Okuma hatırlatıcıları için yerel bildirimler (Local Notifications).
