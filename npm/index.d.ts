declare module '@apiverve/fibonaccigenerator' {
  export interface fibonaccigeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface fibonaccigeneratorResponse {
    status: string;
    error: string | null;
    data: FibonacciGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface FibonacciGeneratorData {
      sequence:                 (number | null)[];
      count:                    number | null;
      startFrom:                number | null;
      firstValue:               number | null;
      lastValue:                number | null;
      sum:                      number | null;
      ratios:                   (number | null)[];
      goldenRatioApproximation: number | null;
  }

  export default class fibonaccigeneratorWrapper {
    constructor(options: fibonaccigeneratorOptions);

    execute(callback: (error: any, data: fibonaccigeneratorResponse | null) => void): Promise<fibonaccigeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: fibonaccigeneratorResponse | null) => void): Promise<fibonaccigeneratorResponse>;
    execute(query?: Record<string, any>): Promise<fibonaccigeneratorResponse>;
  }
}
