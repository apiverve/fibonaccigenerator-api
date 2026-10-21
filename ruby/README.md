# Fibonacci Generator API - Ruby Gem

Fibonacci Generator computes Fibonacci numbers and sequences based on a target count or ceiling value. Each response provides the generated sequence starting from any position, total sum, step ratios, and a golden ratio approximation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_fibonaccigenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_fibonaccigenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_fibonaccigenerator'

# Initialize the client
client = APIVerve::Fibonaccigenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  count: 10,
  startfrom: 0
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 10, startfrom: 0 })
  puts response["data"]
rescue APIVerve::Fibonaccigenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Fibonaccigenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Fibonaccigenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/fibonaccigenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/fibonaccigenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/fibonaccigenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
