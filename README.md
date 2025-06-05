# Windows Icon Cache Temizleyici

Bu proje, Windows işletim sisteminde simge önbelleğini (IconCache) temizlemek için hazırlanmış bir toplu komut dosyasıdır.

## Kullanım

1. **Tüm açık çalışmalarınızı kaydedin.** Komut dosyası, Windows Gezgini'ni (explorer.exe) geçici olarak kapatır ve yeniden başlatır.
2. `WindowsIconCacheTemizleyici.bat` dosyasını **yönetici olarak** çalıştırın.
3. Ekrandaki yönergeleri takip edin.

## Ne Yapar?

- `IconCache.db` ve `Microsoft\Windows\Explorer\iconcache*` dosyalarını siler.
- Explorer işlemini sonlandırır ve ardından yeniden başlatır.
- Simge önbelleği dosyalarını silerek simgeyle ilgili sorunları gidermeye yardımcı olur.
