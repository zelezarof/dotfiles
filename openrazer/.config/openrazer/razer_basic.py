from openrazer.client import DeviceManager

# Set colors to be used for the configuration
R=0
G=255
B=130

device_manager = DeviceManager()
device_manager.sync_effects = False

for device in device_manager.devices:
    print("[{}] set color to: R{}, G{}, B{}".format(device.name, R, G, B))
    device.fx.static(R, G, G)
