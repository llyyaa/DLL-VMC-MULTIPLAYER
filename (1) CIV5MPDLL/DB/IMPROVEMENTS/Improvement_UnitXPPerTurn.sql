create table Improvement_UnitXPPerTurn (
  ImprovementType text default '',
  Value integer not null default 0,

  -- conditional
  UnitType text default '',
  PromotionType text default ''
);
