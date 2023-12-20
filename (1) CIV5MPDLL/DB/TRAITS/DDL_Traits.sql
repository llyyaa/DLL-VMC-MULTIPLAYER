-- Insert SQL Rules Here
alter table Traits add column `AdequateLuxuryCompleteQuestInfluenceModifier` int not null default 0;
alter table Traits add column `AdequateLuxuryCompleteQuestInfluenceModifierMax` int not null default -1;
alter table Traits add column `AllyCityStateCombatModifier` int not null default 0;
alter table Traits add column `AllyCityStateCombatModifierMax` int not null default -1;
alter table Traits add column `CanFoundMountainCity` boolean not null default 0;
alter table Traits add column `CanFoundCoastCity` boolean not null default 0;
alter table Traits add column `GoldenAgeMinorPerTurnInfluence` int not null default 0;

create table Trait_PerMajorReligionFollowerYieldModifier (
    TraitType text references Traits(Type),
    YieldType text references Yields(Type),
    Yield int default 0
);

ALTER TABLE Traits ADD COLUMN 'CiviliansFreePromotion' TEXT DEFAULT NULL;
CREATE TABLE Trait_FreePromotionUnitClasses(
    'TraitType' text , 'UnitClassType' text , 'PromotionType' text, 
    foreign key (TraitType) references Traits(Type), 
    foreign key (UnitClassType) references UnitClasses(Type), 
    foreign key (PromotionType) references UnitPromotions(Type)
);

alter table Traits add column `TradeRouteLandGoldBonus` int not null default 0;
alter table Traits add column `TradeRouteSeaGoldBonus` int not null default 0;

alter table Traits add column `FreePolicyWhenFirstConquerMajorCapital` int not null default 0;
alter table Traits add column `InstantTourismBombWhenFirstConquerMajorCapital` int not null default 0; -- apply tourism (x turn) pressure to all civs

alter table Traits add column `UnitMaxHitPointChangePerRazedCityPop` int not null default 0;
alter table Traits add column `UnitMaxHitPointChangePerRazedCityPopLimit` int not null default 0;

alter table Traits add column `GreatWorksTourism` int not null default 0;
alter table Traits add column `RiverCorruptionScoreChange` int not null default 0;

alter table Traits add column `GoldenAgeResearchTotalCostModifier` int not null default 0;
alter table Traits add column `GoldenAgeResearchCityCountCostModifier` int not null default 0;
alter table Traits add column `GoldenAgeGrowThresholdModifier` int not null default 0;

alter table Traits add column `ShareAllyResearchPercent` int not null default 0;

alter table Traits add column `CultureBonusUnitStrengthModify` int not null default 0;

alter table Traits add column `NaturalWonderCorruptionScoreChange` int not null default 0;
alter table Traits add column `NaturalWonderCorruptionRadius` int not null default 0;
ALTER TABLE Traits ADD COLUMN 'TriggersIdeologyTech' TEXT DEFAULT NULL;

ALTER TABLE Traits ADD COLUMN 'PromotionWhenKilledUnit' TEXT DEFAULT NULL;
ALTER TABLE Traits ADD COLUMN 'PromotionRadiusWhenKilledUnit' INTEGER DEFAULT 0;
ALTER TABLE Traits ADD COLUMN 'AttackBonusAdjacentWhenUnitKilled' INTEGER DEFAULT 0;
ALTER TABLE Traits ADD COLUMN 'KilledAttackBonusDecreasePerTurn' INTEGER DEFAULT 0;

create table Trait_CityYieldModifierFromAdjacentFeature (
    TraitType text references Traits(Type),
    FeatureType text references Features(Type),
    YieldType text references Yields(Type),
    Yield int default 0
);