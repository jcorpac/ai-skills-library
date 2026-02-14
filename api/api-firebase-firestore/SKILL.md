---
name: api-firebase-firestore
description: CRUD operations and data modeling for Cloud Firestore.
---

# Cloud Firestore

## Purpose
Leverage Cloud Firestore for a flexible, scalable NoSQL database. This skill covers data structure best practices, real-time listeners, and performing CRUD operations.

## Usage

### 1. Add Data
```javascript
import { doc, setDoc } from "firebase/firestore"; 

await setDoc(doc(db, "cities", "LA"), {
  name: "Los Angeles",
  state: "CA",
  country: "USA"
});
```

### 2. Read Data (One-time)
```javascript
import { doc, getDoc } from "firebase/firestore";

const docRef = doc(db, "cities", "SF");
const docSnap = await getDoc(docRef);

if (docSnap.exists()) {
  console.log("Document data:", docSnap.data());
} else {
  console.log("No such document!");
}
```

### 3. Real-time Listeners
```javascript
import { doc, onSnapshot } from "firebase/firestore";

const unsub = onSnapshot(doc(db, "cities", "SF"), (doc) => {
    console.log("Current data: ", doc.data());
});
```

## Resources
- [Firestore Docs](https://firebase.google.com/docs/firestore)
