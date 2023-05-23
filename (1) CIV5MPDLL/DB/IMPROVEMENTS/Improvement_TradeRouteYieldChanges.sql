CREATE TABLE Improvement_TradeRouteYieldChanges(
    'ImprovementType' text,
    'DomainType' text,
    'YieldType' text,
    'Yield' integer,
    foreign key (ImprovementType) references Improvements(Type),
    foreign key (DomainType) references Domains(Type),
    foreign key (YieldType) references Yields(Type)
)