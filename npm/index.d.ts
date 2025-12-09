declare module '@apiverve/fibonaccigenerator' {
  export interface fibonaccigeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface fibonaccigeneratorResponse {
    status: string;
    error: string | null;
    data: FibonacciGeneratorData;
    code?: number;
  }


  interface FibonacciGeneratorData {
      sequence:                 number[];
      count:                    number;
      startFrom:                number;
      firstValue:               number;
      lastValue:                number;
      sum:                      number;
      ratios:                   number[];
      goldenRatioApproximation: number;
  }

  export default class fibonaccigeneratorWrapper {
    constructor(options: fibonaccigeneratorOptions);

    execute(callback: (error: any, data: fibonaccigeneratorResponse | null) => void): Promise<fibonaccigeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: fibonaccigeneratorResponse | null) => void): Promise<fibonaccigeneratorResponse>;
    execute(query?: Record<string, any>): Promise<fibonaccigeneratorResponse>;
  }
}
