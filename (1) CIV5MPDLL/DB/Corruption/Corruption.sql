create table CorruptionLevels (
    ID integer primary key autoincrement not null,
    Type text not null unique,

    ScoreLowerBoundBase integer not null default 0,
    MapWidthModifier integer not null default 0,
    MapHeightModifier integer not null default 0,

    IsCapital boolean not null default 0,
    IsPuppet boolean not null default 0,

    CityHallBuildingClass text null,
    PublicSecurityBuildingClass text null
);

alter table Policies add column CorruptionScoreModifier integer not null default 0;
alter table Resources add column CorruptionScoreChange integer not null default 0;
alter table Buildings add column CorruptionScoreChange integer not null default 0;

alter table Policies add column CorruptionLevelReduceByOne boolean not null default 0;
alter table Traits add column CorruptionLevelReduceByOne boolean not null default 0;
alter table Traits add column MaxCorruptionLevel integer not null default -1;
alter table Buildings add column CorruptionLevelChange integer not null default 0;
