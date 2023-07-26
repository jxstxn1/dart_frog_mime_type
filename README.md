# Mime_Type

This example reproduces the following bug:

- Trying to serve a index.html through the `Response`.
- As soon as you load the index.html in your browser at `localhost:8080` you will see the following error in your browser console:

```bash
Refused to execute script from 'http://localhost:8080/flutter.js' because its MIME type ('text/plain') is not executable, and strict MIME type checking is enabled.
```

Created Flutter project with `Flutter 3.10.5 • channel stable` and `Dart 3.0.5`
Used dart_frog_cli `0.3.9`
