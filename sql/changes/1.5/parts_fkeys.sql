
ALTER TABLE partscustomer ADD FOREIGN KEY parts_id REFERENCES parts(id) ON DELETE CASCADE;
ALTER TABLE makemodel ADD FOREIGN KEY parts_id REFERENCES parts(id) ON DELETE CASCADE;
ALTER TABLE orderitems ADD FOREIGN KEY parts_id REFERENCES parts(id);
