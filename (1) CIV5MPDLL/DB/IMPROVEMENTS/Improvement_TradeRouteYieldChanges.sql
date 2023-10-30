CREATE TABLE Improvement_TradeRouteYieldChanges(
    'ImprovementType' text references Improvements(Type),
    'DomainType' text references Domains(Type),
    'YieldType' text references Yields(Type),
    'Yield' integer not null default 0
);