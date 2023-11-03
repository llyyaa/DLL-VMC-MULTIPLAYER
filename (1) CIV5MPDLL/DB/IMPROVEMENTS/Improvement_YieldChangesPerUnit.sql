create table Improvement_YieldChangesPerUnit (
  ImprovementType text default '',
  YieldType text default '',
  Yield integer not null default 0,

  -- conditional
  UnitType text default '',
  PromotionType text default ''
);
