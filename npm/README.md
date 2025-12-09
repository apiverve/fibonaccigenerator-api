# Fibonacci Generator API

Fibonacci Generator is a tool for generating Fibonacci sequence numbers. It can generate sequences by count or up to a maximum value, with options to start from any position in the sequence.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Fibonacci Generator API](https://apiverve.com/marketplace/fibonaccigenerator)

---

## Installation

Using npm:
```shell
npm install @apiverve/fibonaccigenerator
```

Using yarn:
```shell
yarn add @apiverve/fibonaccigenerator
```

---

## Configuration

Before using the Fibonacci Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Fibonacci Generator API documentation is found here: [https://docs.apiverve.com/ref/fibonaccigenerator](https://docs.apiverve.com/ref/fibonaccigenerator).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const fibonaccigeneratorAPI = require('@apiverve/fibonaccigenerator');
const api = new fibonaccigeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  count: "10",
  maxvalue: "1000",
  startfrom: "0"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  count: "10",
  maxvalue: "1000",
  startfrom: "0"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  count: "10",
  maxvalue: "1000",
  startfrom: "0"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
