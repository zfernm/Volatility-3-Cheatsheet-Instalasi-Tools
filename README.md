**Volatility 3 Cheatsheet** yang berisi perintah-perintah umum untuk membantu kamu menganalisis file memori dengan cepat.

---

## 🔍 **Volatility 3 Cheatsheet**  

### 📂 **Basic Usage**
```bash
vol -f <memory_file> <plugin> [options]
```

- **-f** : Lokasi file memori yang akan dianalisis  
- **-p** : Path direktori plugin (jika plugin kustom)  
- **-o** : Output ke file CSV/JSON

---

### 🧰 **Core Commands**
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -h`                 | Menampilkan help dan daftar plugin yang tersedia                                          |
| `vol -f memdump.raw windows.info` | Menampilkan informasi tentang sistem operasi dalam dump memori                    |
| `vol -f memdump.raw windows.pslist` | Menampilkan daftar proses aktif                                                |
| `vol -f memdump.raw windows.psscan` | Mencari proses tersembunyi atau yang telah dihentikan                           |
| `vol -f memdump.raw windows.dlllist` | Menampilkan daftar DLL yang dimuat oleh setiap proses                          |
| `vol -f memdump.raw windows.handles` | Menampilkan daftar handle (file, registry, dll.) milik proses                  |
| `vol -f memdump.raw windows.netscan` | Menampilkan koneksi jaringan aktif                                              |
| `vol -f memdump.raw windows.filescan` | Memindai file dalam memori                                                     |
| `vol -f memdump.raw windows.cmdline` | Menampilkan argumen command line dari setiap proses                             |
| `vol -f memdump.raw windows.registry.printkey` | Membaca isi registry tertentu                                                 |
| `vol -f memdump.raw windows.malfind` | Mendeteksi injeksi kode berbahaya                                              |

---

### 🔍 **Network Analysis**  
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.netscan` | Memindai koneksi jaringan, socket, dan listener                                |
| `vol -f memdump.raw windows.netstat` | Menampilkan tabel koneksi jaringan                                             |
| `vol -f memdump.raw windows.sockets` | Daftar semua socket yang sedang terbuka                                        |

---

### 📊 **Process Analysis**  
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.pslist` | Daftar proses yang sedang berjalan                                             |
| `vol -f memdump.raw windows.pstree` | Menampilkan proses dalam bentuk tree                                           |
| `vol -f memdump.raw windows.psscan` | Memindai proses tersembunyi                                                    |
| `vol -f memdump.raw windows.psxview` | Memverifikasi proses menggunakan metode yang berbeda untuk mendeteksi rootkit  |

---

### 🔑 **Registry Analysis**
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.registry.hivelist` | Daftar semua registry hive dalam memori                                      |
| `vol -f memdump.raw windows.registry.printkey -k <key>` | Menampilkan isi key registry tertentu                                      |
| `vol -f memdump.raw windows.registry.userassist` | Menampilkan daftar program yang baru saja dijalankan                         |

---

### 📁 **File Analysis**  
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.filescan` | Memindai dan menampilkan semua file dalam memori                              |
| `vol -f memdump.raw windows.dumpfiles -Q <offset>` | Menyimpan file dari memori ke disk                                           |
| `vol -f memdump.raw windows.vadinfo` | Menampilkan informasi Virtual Address Descriptor (VAD) dari setiap proses     |

---

### 🛡️ **Malware Detection**  
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.malfind` | Mendeteksi injeksi kode dalam proses                                          |
| `vol -f memdump.raw windows.ssdt` | Memeriksa System Service Descriptor Table untuk hook                           |
| `vol -f memdump.raw windows.callbacks` | Memeriksa callback yang terdaftar untuk aktivitas mencurigakan                |

---

### 📦 **Dumping Artifacts**
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.dlldump -p <pid> -D <output_dir>` | Dump semua DLL dari proses tertentu                     |
| `vol -f memdump.raw windows.memmap` | Menampilkan mapping memori dari setiap proses                                   |
| `vol -f memdump.raw windows.procdump -p <pid> -D <output_dir>` | Dump proses lengkap ke file executable                    |

---

### 🔍 **Advanced Analysis**  
| Command                  | Deskripsi                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------|
| `vol -f memdump.raw windows.modscan` | Memindai modul kernel yang tersembunyi                                        |
| `vol -f memdump.raw windows.ldrmodules` | Mendeteksi modul yang dimuat dengan cara mencurigakan                        |
| `vol -f memdump.raw windows.bigpools` | Menampilkan alokasi memori besar                                              |
