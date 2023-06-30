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
