---
name: api-firebase-auth
description: Patterns for implementing secure user authentication with Firebase Auth.
---

# Firebase Authentication

## Purpose
Simplify user management with Firebase Authentication. This skill covers setting up multiple providers (Email/Password, Google, GitHub) and managing user sessions securely.

## Usage

### 1. Email/Password Sign-Up
```javascript
import { getAuth, createUserWithEmailAndPassword } from "firebase/auth";

const auth = getAuth();
createUserWithEmailAndPassword(auth, email, password)
  .then((userCredential) => {
    // Signed in 
    const user = userCredential.user;
  })
  .catch((error) => {
    const errorCode = error.code;
    const errorMessage = error.message;
  });
```

### 2. Google Sign-In
```javascript
import { getAuth, signInWithPopup, GoogleAuthProvider } from "firebase/auth";

const provider = new GoogleAuthProvider();
const auth = getAuth();
signInWithPopup(auth, provider)
  .then((result) => {
    // This gives you a Google Access Token. You can use it to access the Google API.
    const credential = GoogleAuthProvider.credentialFromResult(result);
    const token = credential.accessToken;
    // The signed-in user info.
    const user = result.user;
  }).catch((error) => {
    // Handle Errors here.
  });
```

### 3. Auth State Observer
```javascript
import { getAuth, onAuthStateChanged } from "firebase/auth";

const auth = getAuth();
onAuthStateChanged(auth, (user) => {
  if (user) {
    // User is signed in
    const uid = user.uid;
  } else {
    // User is signed out
  }
});
```

## Resources
- [Firebase Auth Docs](https://firebase.google.com/docs/auth)
