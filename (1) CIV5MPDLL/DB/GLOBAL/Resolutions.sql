/*ALTER TABLE Resolutions ADD COLUMN 'OpenDoor' boolean default 0;
ALTER TABLE Resolutions ADD COLUMN 'SphereOfInfluence' boolean default 0;
ALTER TABLE Resolutions ADD COLUMN 'Decolonization' boolean default 0;
ALTER TABLE Resolutions ADD COLUMN 'SpaceshipProductionMod' integer default 0;
ALTER TABLE Resolutions ADD COLUMN 'SpaceshipPurchaseMod' integer default 0;
ALTER TABLE Resolutions ADD COLUMN 'IsWorldWar' integer default 0;*/
ALTER TABLE Resolutions ADD COLUMN 'EmbargoIdeology' boolean default 0;

--Cold War
INSERT INTO Resolutions(Type, Description, Help, EmbargoIdeology, VoterDecision, ProposerDecision, TechPrereqAnyMember)
SELECT 'RESOLUTION_COLD_WAR', 'TXT_KEY_RESOLUTION_COLD_WAR', 'TXT_KEY_RESOLUTION_COLD_WAR_HELP', 1, 'RESOLUTION_DECISION_YES_OR_NO', 'RESOLUTION_DECISION_NONE', 'TECH_ATOMIC_THEORY';
