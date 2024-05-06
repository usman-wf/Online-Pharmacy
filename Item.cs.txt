using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace db_Project
{
    public class Item
    {
        public int MedicineId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public float Price { get; set; }
        public DateTime ManufactureDate { get; set; }
        public DateTime ExpiryDate { get; set; }
        public int StockQuantity { get; set; }
    }
}