<p align="left">
  <img src="https://github.com/user-attachments/assets/2c02c26d-0505-47dc-a290-67bce1bd42f4" alt="Stalwart Logo" width="120" />
</p>


# Stalwart Setup Guide for Umbrel

## 🔐 Log in to the Web Interface

Once Stalwart is installed, open the web interface at:  
`http://umbrel.local:18080`

The first time it starts, Umbrel will show you the administrator login credentials in the app logs (right-click on troubleshooting). They will look like this:  
**Username:** `admin`  
**Password:** something like `w95Yuiu36E`

Use these credentials to log in.

---

## 💾 Choose Where to Store Your Data

After logging in, go to **Settings > Storage**. There, you can define where Stalwart stores data, blobs, full-text indexes, and in-memory storage.

By default, Stalwart is already preconfigured. If you’re happy with the default, you can skip this step.

---

## 🌐 Set Hostname and Domain

Go to **Settings > Server > Network** and make sure your server’s hostname is correct.  
Then open **Management > Directory > Domains** and add your main domain (e.g., `example.org`).

After adding the domain, Stalwart will show you the necessary **DNS records** to add to your domain settings – including MX, DKIM, SPF, and DMARC.

---

## 🔒 Enable TLS

To secure communication between the server and clients, you need a valid TLS certificate:

- If you already have a TLS certificate, upload it under **Settings > Server > TLS > Certificates**.
- If not, you can enable automatic certificates from **Let’s Encrypt** under **Settings > Server > TLS > ACME Providers**. Make sure your server’s hostname is listed correctly.
- If you’re using a reverse proxy (like **Traefik**, **NGINX**, or **Caddy**), you can skip this step and configure TLS directly in your proxy.

---

## ✅ Finish Setup

Once your configuration is complete, restart the app from Umbrel’s menu.

That’s it – your self-hosted mail and collaboration server is now up and running.

---

For more information and detailed instructions, please visit the official documentation:  
https://stalw.art/docs/category/getting-started
