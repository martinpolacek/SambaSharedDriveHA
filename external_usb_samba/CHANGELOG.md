## Changelog

### [1.0.0] - 2025-06-07

#### Added
- Initial release of External USB Disk Samba Share addon
- Automatic mounting of /dev/sda1 external USB disk
- Password-free Samba sharing with guest access
- Support for multiple architectures (aarch64, amd64, armhf, armv7, i386)
- Configurable Samba settings through Home Assistant UI
- Auto-detection of file systems
- Proper cleanup and unmounting on addon stop
- Complete Czech documentation

#### Features
- **Device Support**: Automatic detection and mounting of /dev/sda1
- **Security**: Guest access without password requirements
- **Compatibility**: Support for Windows, Linux, and macOS clients
- **Configuration**: Easy setup through Home Assistant interface
- **Reliability**: Proper error handling and cleanup procedures

#### Technical Details
- Based on Alpine Linux with Samba 4.x
- Uses S6 supervision for service management
- Privileged container with full hardware access
- Network ports: 137/udp, 138/udp, 139/tcp, 445/tcp
- Mount point: `/mnt/external_disk`
- Default share name: `external_disk`

#### Default Configuration
- Workgroup: `WORKGROUP`
- NetBIOS name: `hassio`
- Share name: `external_disk`
- Guest access: `enabled`
- Read/Write: `enabled`
- Veto files: Hidden system files filtered
