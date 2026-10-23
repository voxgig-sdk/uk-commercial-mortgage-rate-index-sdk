"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_path_1 = __importDefault(require("node:path"));
const Fs = __importStar(require("node:fs"));
const node_test_1 = require("node:test");
const node_assert_1 = __importDefault(require("node:assert"));
const live_runner_1 = require("../../live-runner");
const live_entity_1 = require("../../live-entity");
const __1 = require("../../..");
const utility_1 = require("../../utility");
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('CalculatorEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.UkCommercialMortgageRateIndexSDK.test();
        const ent = testsdk.Calculator();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('validate', async (t) => {
        if (null == __1.config.feature?.validate) {
            t.skip('feature not present in this SDK: validate');
            return;
        }
        const client = __1.UkCommercialMortgageRateIndexSDK.test(undefined, { feature: { validate: { active: true } } });
        await node_assert_1.default.rejects(client.Calculator().create({ "arrFeePct": "x" }), (err) => 'validate_failed' === err.code);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'calculator.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "arrFeePct": { "a": true, "h": "Arr Fee Pct", "n": "arrFeePct", "r": false, "sh": "Arrangement fee (% of loan)", "t": "`$NUMBER`", "key$": "arrFeePct", "index$": 0 }, "loan": { "a": true, "h": "Loan", "n": "loan", "r": false, "sh": "Loan amount", "t": "`$NUMBER`", "key$": "loan", "index$": 1 }, "margin": { "a": true, "h": "Margin", "n": "margin", "r": false, "sh": "Margin over Bank Rate (%)", "t": "`$NUMBER`", "key$": "margin", "index$": 2 }, "otherFees": { "a": true, "h": "Other Fees", "n": "otherFees", "r": false, "sh": "Valuation, legal and broker fees", "t": "`$NUMBER`", "key$": "otherFees", "index$": 3 }, "rent": { "a": true, "h": "Rent", "n": "rent", "r": false, "sh": "Annual rent or trading profit available to service debt", "t": "`$NUMBER`", "key$": "rent", "index$": 4 }, "term": { "a": true, "h": "Term", "n": "term", "r": false, "sh": "Term in years", "t": "`$NUMBER`", "key$": "term", "index$": 5 }, "value": { "a": true, "h": "Value", "n": "value", "r": false, "sh": "Property value", "t": "`$NUMBER`", "key$": "value", "index$": 6 } }, "name": "calculator", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "bf": ["arrFeePct", "loan", "margin", "otherFees", "rent", "term", "value"], "co": { "id": "POST /mcp/tools/calculate", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/mcp/tools/calculate", "q": {}, "r": {}, "rs": { "kind": "json", "media": "application/json" }, "s": [{ "lit": "mcp" }, { "lit": "tools" }, { "lit": "calculate" }], "t": { "req": { "arrFeePct": "`reqdata.arr_fee_pct`", "loan": "`reqdata.loan`", "margin": "`reqdata.margin`", "otherFees": "`reqdata.other_fee`", "rent": "`reqdata.rent`", "term": "`reqdata.term`", "value": "`reqdata.value`" }, "res": "`body`" }, "index$": 0 }, { "a": true, "bf": false, "co": { "id": "POST /mcp/tools/calculator_describe", "source": "openapi3", "version": 2 }, "g": {}, "k": "http", "m": "POST", "o": "/mcp/tools/calculator_describe", "q": {}, "r": {}, "rs": { "kind": "json", "media": "application/json" }, "s": [{ "lit": "mcp" }, { "lit": "tools" }, { "lit": "calculator_describe" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 1 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "calculator", "name__orig": "calculator", "Name": "Calculator", "name_": "calculator", "name-": "calculator", "NAME": "CALCULATOR", "index$": 0 }, { "active": true, "entity": "calculator", "key$": "BasicCalculatorFlow", "kind": "basic", "name": "BasicCalculatorFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "calculator_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'Calculator', { "POST /mcp/tools/calculate": { "protocol": "http", "requestBody": { "required": false, "content": { "application/json": { "schema": { "type": "object", "properties": { "loan": { "type": "number", "description": "Loan amount", "default": 500000, "key$": "loan" }, "margin": { "type": "number", "description": "Margin over Bank Rate (%)", "default": 3, "key$": "margin" }, "term": { "type": "number", "description": "Term in years", "default": 20, "key$": "term" }, "arrFeePct": { "type": "number", "description": "Arrangement fee (% of loan)", "default": 1.5, "key$": "arrFeePct" }, "otherFees": { "type": "number", "description": "Valuation, legal and broker fees", "default": 0, "key$": "otherFees" }, "rent": { "type": "number", "description": "Annual rent or trading profit available to service debt", "default": 60000, "key$": "rent" }, "value": { "type": "number", "description": "Property value", "default": 800000, "key$": "value" } }, "additionalProperties": false, "index$": 1 } } } }, "parameters": [] }, "POST /mcp/tools/calculator_describe": { "protocol": "http", "requestBody": { "required": false, "content": { "application/json": { "schema": { "type": "object", "properties": {}, "index$": 1 } } } }, "parameters": [] } }, { strict: LIVE_STRICT, t });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const calculator_ref01_ent = client.Calculator();
        let calculator_ref01_data = setup.data.new.calculator['calculator_ref01'];
        calculator_ref01_data = (await calculator_ref01_ent.create(calculator_ref01_data)).data();
        (0, node_assert_1.default)(null != calculator_ref01_data);
    });
});
// main.kit.test.live.strict is true (the default is true): a live
// request that fails, or a live test missing an input it needs,
// fails the test.
// An account with no record for a test to read skips it either way.
const LIVE_STRICT = true;
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/calculator/CalculatorTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.UkCommercialMortgageRateIndexSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['calculator01', 'calculator02', 'calculator03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_CALCULATOR_ENTID': idmap,
        'UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_LIVE': 'FALSE',
        'UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_EXPLAIN': 'FALSE',
        'UK_COMMERCIAL_MORTGAGE_RATE_INDEX_APIKEY': '',
    });
    idmap = env['UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_CALCULATOR_ENTID'];
    const live = 'TRUE' === env.UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_CALCULATOR_ENTID'];
        idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {};
        if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
            throw new Error('Live ENTID must be a JSON object');
        }
        client = new __1.UkCommercialMortgageRateIndexSDK(merge([
            // FIRST, so the generated fields below win: sdk-test-control.json's
            // test.client.options adds to the live client, it does not redirect it.
            (0, utility_1.liveClientOptions)(),
            {
                apikey: env.UK_COMMERCIAL_MORTGAGE_RATE_INDEX_APIKEY,
            },
            // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
            // last entry is undefined, and basicSetup is normally called with no
            // argument at all - so a bare 'extra' silently discarded the apikey
            // and server values above and handed the SDK undefined. Harmless
            // while there was nothing in that object; not harmless now.
            extra || {},
            { system: { fetch: transport.fetch } }
        ]));
    }
    const setup = {
        idmap,
        env,
        options,
        client,
        struct,
        data: entityData,
        explain: 'TRUE' === env.UK_COMMERCIAL_MORTGAGE_RATE_INDEX_TEST_EXPLAIN,
        live,
        transport,
        now: Date.now(),
    };
    return setup;
}
//# sourceMappingURL=CalculatorEntity.test.js.map