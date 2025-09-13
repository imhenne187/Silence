# Webhook Setup Tutorial

## Step-by-Step Guide

### 1. Copy Files
Copy the files from this repository:
- `package.json`
- `index.js`

### 2. Deploy to Render
1. Go to [Render](https://render.com)
2. Select **"Deploy Web Service"**
3. Choose your repository

### 3. Build Configuration
| Setting          | Value        |
|------------------|-------------|
| **Build Command** | `npm install` |
| **Start Command** | `npm start`   |

### 4. Set Environment Variables
```env
WEBHOOK_URL=your_webhook_url_here 
```
If it doesn't work:
```env
DISCORD_WEBHOOK_URL=your_webhook_url_here
```
