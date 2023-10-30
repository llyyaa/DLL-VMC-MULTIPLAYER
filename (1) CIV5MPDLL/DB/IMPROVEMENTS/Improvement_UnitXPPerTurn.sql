create table Improvement_UnitXPPerTurn (
  ImprovementType text,
  Value integer not null default 0,

  -- conditional
  UnitType text,
  PromotionType text
);
