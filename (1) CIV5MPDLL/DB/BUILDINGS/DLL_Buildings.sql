alter table Buildings add column `MinorFriendshipAnchorChange` int not null default 0;
alter table Buildings add column `MinorQuestFriendshipMod` int not null default 0;
alter table Buildings add column `GoldenAgeUnitCombatModifier` int not null default 0;
alter table Buildings add column `GoldenAgeMeterMod` int not null default 0;

create table Building_YieldFromOtherYield(
	BuildingType text not null references Buildings(Type),
	InYieldType text not null references Yields(Type),
	InYieldValue integer not null,
	OutYieldType text not null references Yields(Type),
	OutYieldValue integer not null
);

ALTER TABLE Buildings ADD COLUMN 'AllowInstantYield' BOOLEAN DEFAULT 0;
ALTER TABLE Buildings ADD COLUMN 'AnyWater' BOOLEAN DEFAULT 0;

CREATE TABLE Building_ClassesNeededGlobal(
	'BuildingType' text , 
	'BuildingClassType' text , 
	foreign key (BuildingType) references Buildings(Type), 
	foreign key (BuildingClassType) references BuildingClasses(Type)
);

ALTER TABLE Buildings ADD 'TradeRouteSeaGoldBonusGlobal' INTEGER DEFAULT 0;
ALTER TABLE Buildings ADD 'TradeRouteLandGoldBonusGlobal' INTEGER DEFAULT 0;