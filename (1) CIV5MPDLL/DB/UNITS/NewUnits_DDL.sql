ALTER TABLE Units ADD 'ScaleFromNumGWs' INTEGER DEFAULT 0;

create table UnitPromotions_Promotions (
    FreePromotionType text references UnitPromotions(Type),
    PrePromotionType text references UnitPromotions(Type)
);