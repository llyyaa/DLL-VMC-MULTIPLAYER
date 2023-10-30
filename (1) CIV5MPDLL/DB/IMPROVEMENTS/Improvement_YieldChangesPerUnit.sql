create table Improvement_YieldChangesPerUnit (
  ImprovementType text,
  YieldType text,
  Yield integer not null default 0,

  -- conditional
  UnitType text,
  PromotionType text
);
