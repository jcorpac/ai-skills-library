---
name: api-firebase-foundations
description: Core setup, initialization, and configuration for Firebase projects.
---

# Firebase Foundations

## Purpose
This skill provides the essential groundwork for integrating Firebase into your applications. It covers initializing the Firebase SDK, configuring environment variables, and setting up the Firebase CLI tools.

## Usage

### 1. Install Firebase SDK
```bash
npm install firebase
# or
pip install firebase-admin
```

### 2. Initialize App (Web/Node)
```javascript
// src/firebase.js
import { initializeApp } from "firebase/app";

const firebaseConfig = {
  apiKey: process.env.FIREBASE_API_KEY,
  authDomain: process.env.FIREBASE_AUTH_DOMAIN,
  projectId: process.env.FIREBASE_PROJECT_ID,
  storageBucket: process.env.FIREBASE_STORAGE_BUCKET,
  messagingSenderId: process.env.FIREBASE_MESSAGING_SENDER_ID,
  appId: process.env.FIREBASE_APP_ID
};

const app = initializeApp(firebaseConfig);
export default app;
```

### 3. Initialize Admin SDK (Server)
```python
# src/firebase_admin_setup.py
import firebase_admin
from firebase_admin import credentials

cred = credentials.Certificate("path/to/serviceAccountKey.json")
firebase_admin.initialize_app(cred)
```

## Resources
- [Firebase Console](https://console.firebase.google.com/)
- [Firebase CLI Tools](https://firebase.google.com/docs/cli)
