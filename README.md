![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

# External USB Disk Samba Share

Home Assistant addon pro sdílení externího USB disku přes Samba bez hesel.

## O addonu

Tento addon umožňuje sdílet externí USB disk připojený jako `/dev/sda1` přes Samba protokol bez nutnosti zadávání hesel. Ideální pro rychlé a jednoduché sdílení souborů v domácí síti.

## Funkce

- ✅ Automatické připojení externího USB disku `/dev/sda1`
- ✅ Sdílení přes Samba bez hesel (guest access)
- ✅ Podpora různých souborových systémů (auto-detect)
- ✅ Konfigurovatelné nastavení přes Home Assistant UI
- ✅ Plná podpora čtení i zápisu
- ✅ Automatické odpojení při zastavení addonu

## Instalace

### Z GitHub repository

1. Přidejte tento repository do Home Assistant:
   - Jděte do **Supervisor** → **Add-on Store** → **⋮** (tři tečky) → **Repositories**
   - Přidejte URL: `https://github.com/yourusername/ha-samba-addon`
   - Klikněte **Add**

2. Nainstalujte addon:
   - Najděte "External USB Disk Samba Share" v seznamu addonů
   - Klikněte **Install**

### Lokální instalace

1. Zkopírujte složku `ha-samba-addon` do `/addons/` adresáře ve vašem Home Assistant
2. Restartujte Home Assistant
3. Addon najdete v **Supervisor** → **Add-on Store** → **Local add-ons**

## Konfigurace

```yaml
workgroup: "WORKGROUP"          # Windows workgroup
netbiosname: "hassio"           # NetBIOS jméno serveru
share_name: "external_disk"     # Název sdílené složky
guest_ok: true                  # Povolit přístup bez hesla
read_only: false                # false = čtení i zápis, true = pouze čtení
veto_files: "._*/.DS_Store/Thumbs.db/desktop.ini/.Trashes"  # Skryté soubory
```

## Použití

1. Připojte USB disk k vašemu Home Assistant zařízení
2. Ujistěte se, že disk je rozpoznán jako `/dev/sda1`
3. Spusťte addon
4. Disk bude dostupný v síti jako `\\hassio\external_disk` (Windows) nebo `smb://hassio/external_disk` (Linux/Mac)

## Požadavky

- USB disk připojený jako `/dev/sda1`
- Home Assistant s privilegovaným přístupem k hardware
- Síť s podporou SMB/CIFS protokolu

## Řešení problémů

### Disk se nenačítá
- Zkontrolujte, zda je disk připojen a rozpoznán systémem
- Ověřte, že disk má přiřazeno `/dev/sda1`
- Zkontrolujte logy addonu

### Nelze se připojit ze sítě
- Ověřte, že jsou otevřeny porty 139, 445, 137, 138
- Zkontrolujte firewall nastavení
- Ujistěte se, že je addon spuštěn

### Problémy s oprávněními
- Addon běží s plnými oprávněními (`privileged: true`)
- Soubory jsou vytvářeny s maskou 0777

## Podpora

Pro hlášení chyb nebo návrhy použijte GitHub Issues.

## Licence

MIT License

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg