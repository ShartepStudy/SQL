
alter table productslinker
add constraint uc UNIQUE(harbor_id, product_id);
