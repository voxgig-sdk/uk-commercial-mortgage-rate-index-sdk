<?php
declare(strict_types=1);

// UkCommercialMortgageRateIndex SDK base feature

class UkCommercialMortgageRateIndexBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(UkCommercialMortgageRateIndexContext $ctx, array $options): void {}
    public function PostConstruct(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PostConstructEntity(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function SetData(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function GetData(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function GetMatch(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function SetMatch(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PrePoint(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreSpec(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreRequest(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreResponse(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreResult(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreDone(UkCommercialMortgageRateIndexContext $ctx): void {}
    public function PreUnexpected(UkCommercialMortgageRateIndexContext $ctx): void {}
}
