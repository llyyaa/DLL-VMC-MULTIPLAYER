CREATE TABLE Building_DomainTroops(
    'BuildingType' TEXT NOT NULL REFERENCES Buildings(Type),
    'DomainType' TEXT NOT NULL REFERENCES Domains(Type),
    'NumTroop' INTEGER NOT NULL DEFAULT 0
);

ALTER TABLE Units ADD 'NoTroopConsume' BOOLEAN DEFAULT 0;
--ALTER TABLE UnitPromotions ADD 'NoTroopConsume' INTEGER DEFAULT 0;

--24 for base amount, 4 per city scale
INSERT INTO Defines(Name, Value) VALUES('TROOP_RATE_TIMES100_LOW', 50);
INSERT INTO Defines(Name, Value) VALUES('TROOP_RATE_TIMES100_DEFAULT', 100);
INSERT INTO Defines(Name, Value) VALUES('TROOP_RATE_TIMES100_HIGH', 150);