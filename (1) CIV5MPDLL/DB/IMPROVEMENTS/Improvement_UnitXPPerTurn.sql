create table Improvement_UnitXPPerTurn (
  ImprovementType text not null,
  Value integer not null default 0,

  -- conditional
  UnitType text not null  default '',
  PromotionType text not null  default ''
);
