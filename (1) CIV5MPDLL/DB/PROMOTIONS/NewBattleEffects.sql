ALTER TABLE UnitPromotions ADD COLUMN SplashDamagePercent integer not null default 0;
ALTER TABLE UnitPromotions ADD COLUMN SplashDamageFixed integer not null default 0;
ALTER TABLE UnitPromotions ADD COLUMN SplashDamageRadius integer not null default 0;
ALTER TABLE UnitPromotions ADD COLUMN SplashDamagePlotUnitLimit integer not null default 0;
ALTER TABLE UnitPromotions ADD COLUMN SplashDamageImmune boolean not null default 0;
ALTER TABLE UnitPromotions ADD COLUMN SplashXP int not null default 0;