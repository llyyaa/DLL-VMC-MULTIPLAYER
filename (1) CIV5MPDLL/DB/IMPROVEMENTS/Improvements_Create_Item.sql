--ALTER TABLE Improvements ADD COLUMN 'CreateResource' TEXT DEFAULT NULL;
--enable create item or set new a improvement 
--0 = disable, other number corresponding generation mode, 10 = manual operation, 11 = ALL
ALTER TABLE Improvements ADD COLUMN 'CreatedItemMod' INTEGER DEFAULT 0;
--set quantity > 0 to Generating fixed quantity and set quantity < 0 to Generating random quantity
ALTER TABLE Improvements ADD COLUMN 'CreatedResourceQuantity' INTEGER DEFAULT 0;
--enable to set a new Improvement or clear itself when built
ALTER TABLE Improvements ADD COLUMN 'SetNewImprovement' TEXT DEFAULT NULL;
--add a column to set Generation Class for CreatedItemMod, 0 = disable to Create
ALTER TABLE Resources ADD COLUMN 'ResourcesGenerationClass' INTEGER DEFAULT 0;

CREATE TABLE Improvements_Create_Collection (
    ImprovementType TEXT DEFAULT NULL REFERENCES Improvements(Type),
    TerrainType TEXT DEFAULT NULL REFERENCES Terrains(Type),
    FeatureType TEXT DEFAULT NULL REFERENCES Features(Type),
    FeatureOnly BOOLEAN DEFAULT 0,
    ResourceType TEXT DEFAULT NULL REFERENCES Resources(Type)
);