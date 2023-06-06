-- Insert SQL Rules Here
alter table Traits add column `AdequateLuxuryCompleteQuestInfluenceModifier` int not null default 0;
alter table Traits add column `AdequateLuxuryCompleteQuestInfluenceModifierMax` int not null default -1;
alter table Traits add column `AllyCityStateCombatModifier` int not null default 0;
alter table Traits add column `AllyCityStateCombatModifierMax` int not null default -1;
alter table Traits add column `CanFoundMountainCity` boolean not null default 0;
alter table Traits add column `CanFoundCoastCity` boolean not null default 0;
alter table Traits add column `GoldenAgeMinorPerTurnInfluence` int not null default 0;

create table Trait_PerMajorReligionFollowerYieldModifier (
    TraitType text not null references Traits(Type),
    YieldType text not null references Yields(Type),
    Yield int default 0
);

ALTER TABLE Traits ADD COLUMN 'CiviliansFreePromotion' TEXT DEFAULT NULL;
CREATE TABLE Trait_FreePromotionUnitClasses(
    'TraitType' text , 'UnitClassType' text , 'PromotionType' text, 
    foreign key (TraitType) references Traits(Type), 
    foreign key (UnitClassType) references UnitClasses(Type), 
    foreign key (PromotionType) references UnitPromotions(Type)
);