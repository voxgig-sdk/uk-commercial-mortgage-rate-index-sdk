# UkCommercialMortgageRateIndex SDK configuration

module UkCommercialMortgageRateIndexConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "UkCommercialMortgageRateIndex",
        "slug" => "uk-commercial-mortgage-rate-index",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "ratelimit" => {
          "options" => {
            "active" => false,
            "burst" => 5,
            "rate" => 5,
          },
          "optspec" => {
            "now" => "`$FUNCTION`",
            "sleep" => "`$FUNCTION`",
          },
          "strict" => false,
          "transport" => "wrap",
        },
        "retry" => {
          "options" => {
            "active" => false,
            "factor" => 2,
            "maxDelay" => 2000,
            "minDelay" => 50,
            "retries" => 2,
            "statuses" => [
              408,
              425,
              429,
              500,
              502,
              503,
              504,
            ],
          },
          "optspec" => {
            "jitter" => "`$BOOLEAN`",
            "sleep" => "`$FUNCTION`",
          },
          "strict" => false,
          "transport" => "wrap",
        },
        "test" => {
          "options" => {
            "active" => false,
          },
          "optspec" => {
            "entity" => "`$MAP`",
            "net" => "`$MAP`",
          },
          "strict" => false,
          "transport" => "base",
        },
        "timeout" => {
          "options" => {
            "active" => false,
            "ms" => 30000,
          },
          "optspec" => {
            "clearTimer" => "`$FUNCTION`",
            "now" => "`$FUNCTION`",
            "setTimer" => "`$FUNCTION`",
          },
          "strict" => false,
          "transport" => "wrap",
        },
      },
      "options" => {
        "base" => "https://commercialmortgagecalculator.uk",
        "auth" => {
          "prefix" => "Bearer",
        },
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "calculator" => {},
          "enquiry" => {},
          "mcp" => {},
        },
      },
      "entity" => {
        "calculator" => {
          "fields" => [
            {
              "name" => "arrFeePct",
              "title" => "Arr Fee Pct",
              "type" => "`$NUMBER`",
              "short" => "Arrangement fee (% of loan)",
            },
            {
              "name" => "loan",
              "title" => "Loan",
              "type" => "`$NUMBER`",
              "short" => "Loan amount",
            },
            {
              "name" => "margin",
              "title" => "Margin",
              "type" => "`$NUMBER`",
              "short" => "Margin over Bank Rate (%)",
            },
            {
              "name" => "otherFees",
              "title" => "Other Fees",
              "type" => "`$NUMBER`",
              "short" => "Valuation, legal and broker fees",
            },
            {
              "name" => "rent",
              "title" => "Rent",
              "type" => "`$NUMBER`",
              "short" => "Annual rent or trading profit available to service debt",
            },
            {
              "name" => "term",
              "title" => "Term",
              "type" => "`$NUMBER`",
              "short" => "Term in years",
            },
            {
              "name" => "value",
              "title" => "Value",
              "type" => "`$NUMBER`",
              "short" => "Property value",
            },
          ],
          "name" => "calculator",
          "op" => {
            "create" => {
              "input" => "data",
              "name" => "create",
              "points" => [
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp/tools/calculate",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                    {
                      "lit" => "tools",
                    },
                    {
                      "lit" => "calculate",
                    },
                  ],
                  "parts" => [
                    "mcp",
                    "tools",
                    "calculate",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => {
                      "arrFeePct" => "`reqdata.arr_fee_pct`",
                      "loan" => "`reqdata.loan`",
                      "margin" => "`reqdata.margin`",
                      "otherFees" => "`reqdata.other_fee`",
                      "rent" => "`reqdata.rent`",
                      "term" => "`reqdata.term`",
                      "value" => "`reqdata.value`",
                    },
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp/tools/calculator_describe",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                    {
                      "lit" => "tools",
                    },
                    {
                      "lit" => "calculator_describe",
                    },
                  ],
                  "parts" => [
                    "mcp",
                    "tools",
                    "calculator_describe",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "enquiry" => {
          "fields" => [
            {
              "name" => "answers",
              "title" => "Answers",
              "type" => "`$OBJECT`",
              "req" => true,
              "short" => "the person's answers, keyed by field key",
            },
            {
              "name" => "confirmation",
              "title" => "Confirmation",
              "type" => "`$STRING`",
              "short" => "the confirmation token from step 1, after the person has approved the summary",
            },
            {
              "name" => "consent",
              "title" => "Consent",
              "type" => "`$BOOLEAN`",
              "req" => true,
              "short" => "true only when the person has agreed to: Send my contact details to up to three commercial mortgage and business finance brokers, chosen by Commercial Mortgage Calculator, who'll contact me directly.",
            },
          ],
          "name" => "enquiry",
          "op" => {
            "create" => {
              "input" => "data",
              "name" => "create",
              "points" => [
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp/tools/enquiry_describe",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                    {
                      "lit" => "tools",
                    },
                    {
                      "lit" => "enquiry_describe",
                    },
                  ],
                  "parts" => [
                    "mcp",
                    "tools",
                    "enquiry_describe",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp/tools/enquiry_fields",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                    {
                      "lit" => "tools",
                    },
                    {
                      "lit" => "enquiry_fields",
                    },
                  ],
                  "parts" => [
                    "mcp",
                    "tools",
                    "enquiry_fields",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp/tools/submit_enquiry",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                    {
                      "lit" => "tools",
                    },
                    {
                      "lit" => "submit_enquiry",
                    },
                  ],
                  "parts" => [
                    "mcp",
                    "tools",
                    "submit_enquiry",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => {
                      "answers" => "`reqdata.answer`",
                      "confirmation" => "`reqdata.confirmation`",
                      "consent" => "`reqdata.consent`",
                    },
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "mcp" => {
          "fields" => [
            {
              "name" => "id",
              "title" => "Id",
              "type" => "`$STRING`",
            },
            {
              "name" => "jsonrpc",
              "title" => "Jsonrpc",
              "type" => "`$ANY`",
              "req" => true,
            },
            {
              "name" => "method",
              "title" => "Method",
              "type" => "`$STRING`",
              "req" => true,
            },
            {
              "name" => "params",
              "title" => "Params",
              "type" => "`$OBJECT`",
            },
          ],
          "id" => {
            "field" => "id",
            "name" => "id",
          },
          "name" => "mcp",
          "op" => {
            "create" => {
              "input" => "data",
              "name" => "create",
              "points" => [
                {
                  "kind" => "http",
                  "method" => "POST",
                  "orig" => "/mcp",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                  ],
                  "parts" => [
                    "mcp",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
              ],
            },
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/mcp",
                  "segments" => [
                    {
                      "lit" => "mcp",
                    },
                  ],
                  "parts" => [
                    "mcp",
                  ],
                  "rename" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "args" => {},
                  "select" => {},
                  "response" => {
                    "kind" => "json",
                    "media" => "application/json",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    UkCommercialMortgageRateIndexFeatures.make_feature(name)
  end
end
