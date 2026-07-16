# Fibonacci Generator API - PHP Package

Fibonacci Generator is a tool for generating Fibonacci sequence numbers. It can generate sequences by count or up to a maximum value, with options to start from any position in the sequence.

## Installation

Install via Composer:

```bash
composer require apiverve/fibonaccigenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Fibonaccigenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'count' => 10,
    'startfrom' => 0
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Fibonaccigenerator\Client;
use APIVerve\Fibonaccigenerator\Exceptions\APIException;
use APIVerve\Fibonaccigenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 10, 'startfrom' => 0]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fibonaccigenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/fibonaccigenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/fibonaccigenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
