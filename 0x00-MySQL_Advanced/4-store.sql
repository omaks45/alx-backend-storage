-- SQL script that creates a trigger that decreases the 
-- quantity of an item after adding a new order.
-- Quantity in the table items can be negative.

CREATE TRIGGER decrease_q AFTER INSERT ON ORDER FOR EACH ROW
UPDATE items set quantity = quantity - NEW.number WHERE name=NEW.item_name;
