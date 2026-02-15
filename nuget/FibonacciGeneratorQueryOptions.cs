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
        /// Number of Fibonacci numbers to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Start from this position in the sequence
        /// </summary>
        [JsonProperty("startfrom")]
        public string Startfrom { get; set; }
    }
}
