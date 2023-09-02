create table Improvement_YieldChangesPerUnit (
  ImprovementType text not null,
  YieldType text not null,
  Yield integer not null default 0,

  -- conditional
  UnitType text not null default '',
  PromotionType text not null default ''
);
