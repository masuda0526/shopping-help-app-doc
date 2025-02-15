alter table help_shopping_app.requests
drop column isbuy,
drop column buy_user_id,
drop column buy_at,
drop column isDelivery,
drop column delivery_at,
drop column isRecieve,
drop column recieve_at,
drop column re_user_accept_at,
drop column buy_user_accept_at; 

alter table help_shopping_app.requests add column buycode int default null after inCart_user_id;