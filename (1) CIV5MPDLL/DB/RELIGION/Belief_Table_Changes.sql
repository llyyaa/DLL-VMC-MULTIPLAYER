CREATE TABLE Belief_YieldPerBirth (
    BeliefType TEXT NOT NULL REFERENCES Beliefs(Type),
    YieldType TEXT NOT NULL REFERENCES Yields(Type),
    Yield NOT NULL DEFAULT 0
);

ALTER TABLE Beliefs ADD COLUMN 'AllowYieldPerBirth' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'CityExtraMissionarySpreads' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'HolyCityPressureModifier' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'HolyCityUnitExperence' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'LandmarksTourismPercent' INTEGER DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'FreePromotionForProphet' TEXT DEFAULT NULL;

CREATE TABLE Belief_GreatPersonPoints (
    BeliefType TEXT NOT NULL REFERENCES Beliefs(Type),
    GreatPersonType TEXT NOT NULL REFERENCES GreatPersons(Type),
    Value INTEGER DEFAULT 0
);
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsPerCity' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsCapital' BOOLEAN DEFAULT 0;
ALTER TABLE Beliefs ADD COLUMN 'GreatPersonPointsHolyCity' BOOLEAN DEFAULT 0;