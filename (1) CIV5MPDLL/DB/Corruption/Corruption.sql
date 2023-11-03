create table CorruptionLevels (
    ID integer primary key autoincrement not null,
    Type text unique,

    IconString text default '',

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

create table Policy_CorruptionLevelPolicyCostModifier (
    PolicyType text default '',
    CorruptionLevelType text default '',
    Modifier integer not null default 0
);

INSERT INTO Defines(Name, Value) VALUES('CORRUPTION_SCORE_PER_DISTANCE', 100);
