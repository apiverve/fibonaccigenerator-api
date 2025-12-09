using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.FibonacciGenerator
{
    /// <summary>
    /// Query options for the Fibonacci Generator API
    /// </summary>
    public class FibonacciGeneratorQueryOptions
    {
        /// <summary>
        /// Number of Fibonacci numbers to generate (1-1000, provide either count or maxvalue)
        /// Example: 10
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Generate Fibonacci numbers up to this value (provide either count or maxvalue)
        /// Example: 1000
        /// </summary>
        [JsonProperty("maxvalue")]
        public string Maxvalue { get; set; }

        /// <summary>
        /// Start from this position in the sequence (default: 0)
        /// Example: 0
        /// </summary>
        [JsonProperty("startfrom")]
        public string Startfrom { get; set; }
    }
}
