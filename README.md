# B.A.S.H
Scripts to automate  


# 🕶️ Ghost Timer — DemonLion Edition

**Ghost Timer** is a stealth-mode automation script that activates full-system Tor routing for a chosen time period (minutes or hours), then disables it automatically. This is your personal cloak — built for cyber operatives, ethical hackers, and digital ghosts
## 🔥 Why This Exists

In high-stakes operations, staying cloaked **forever** isn't always necessary — sometimes, you need to vanish for **exactly 15 minutes**, complete your recon, then reappear clean.

This tool was created to:
- Automate **Tor activation**
- Route all commands through `proxychains`
- Confirm your real vs. masked IP
- Automatically exit ghost mode after a time limit

Ideal for:
- 🕵️ CTFs and red-team exercises  
- 🛡️ Anonymous research  
- 🎯 One-time recon or exploit runs  
- 🔓 Escaping detection for a fixed duration

---

## ⚙️ Features

- ✅ Auto-install Tor if missing
- ✅ Starts Tor daemon + checks bootstrap
- ✅ Uses `proxychains` for cloaked traffic
- ✅ Accepts input like `10m` or `1h`
- ✅ Turns off Tor after countdown
- ✅ Confirms masked IP before and after

---

## 🚀 Usage

1. Make it executable:
   ```bash
   chmod +x ghost-timer.sh




   
