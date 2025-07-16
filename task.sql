USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN ID INT
)
BEGIN
    SELECT Products.Name, WarehouseAmount
    FROM ProductInventory
    JOIN Products
    ON ProductInventory.ProductID = Products.ID
    WHERE Products.ID = ID;
END //
DELIMITER ;