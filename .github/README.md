# External USB Disk Samba Share - Home Assistant Addon

Tento repository obsahuje Home Assistant addon pro sdílení externího USB disku připojeného jako `/dev/sda1` přes Samba protokol bez nutnosti zadávání hesel.

## Rychlá instalace

1. **Přidání repository do Home Assistant:**
   ```
   https://github.com/yourusername/ha-samba-addon
   ```

2. **Instalace addonu:**
   - Supervisor → Add-on Store → External USB Disk Samba Share → Install

3. **Konfigurace a spuštění:**
   - Připojte USB disk jako `/dev/sda1`
   - Spusťte addon
   - Přístup: `\\hassio\external_disk` (Windows) nebo `smb://hassio/external_disk` (Mac/Linux)

## Funkce

- ✅ Automatické připojení USB disku `/dev/sda1`
- ✅ Sdílení bez hesel (guest access)
- ✅ Podpora čtení i zápisu
- ✅ Multi-platform (aarch64, amd64, armhf, armv7, i386)
- ✅ Automatická detekce souborového systému

## Soubory

- `config.yaml` - Konfigurace addonu pro Home Assistant
- `Dockerfile` - Build instrukce pro Docker image
- `build.yaml` - Multi-arch build konfigurace
- `rootfs/` - Root filesystem pro addon
- `data/options.json` - Výchozí konfigurace
- `README.md` - Dokumentace
- `CHANGELOG.md` - Historie změn

## Pro vývojáře

```bash
# Lokální build
docker build -t external-usb-samba .

# Test
./test.sh
```

## Licence

MIT License - viz `LICENSE` soubor
