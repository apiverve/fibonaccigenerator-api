# Fibonacci Generator API - Dart/Flutter Client

Fibonacci Generator is a tool for generating Fibonacci sequence numbers. It can generate sequences by count or up to a maximum value, with options to start from any position in the sequence.

[![pub package](https://img.shields.io/pub/v/apiverve_fibonaccigenerator.svg)](https://pub.dev/packages/apiverve_fibonaccigenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Fibonacci Generator API](https://apiverve.com/marketplace/fibonaccigenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_fibonaccigenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_fibonaccigenerator/apiverve_fibonaccigenerator.dart';

void main() async {
  final client = FibonaccigeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 10,
      'startfrom': 0
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "sequence": [
      0,
      1,
      1,
      2,
      3,
      5,
      8,
      13,
      21,
      34
    ],
    "count": 10,
    "start_from": 0,
    "first_value": 0,
    "last_value": 34,
    "sum": 88,
    "ratios": [
      1.666667,
      1.6,
      1.625,
      1.615385,
      1.619048
    ],
    "golden_ratio_approximation": 1.619048
  }
}
```

## API Reference

- **API Home:** [Fibonacci Generator API](https://apiverve.com/marketplace/fibonaccigenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/fibonaccigenerator](https://docs.apiverve.com/ref/fibonaccigenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
