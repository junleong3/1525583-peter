using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TigerLift
{
    public class ProductTypeModel
    {

        public string InsertProductType(ProductType productType)
        {
            try
            {
                TigerEntities db = new TigerEntities();
                db.ProductTypes.Add(productType);
                db.SaveChanges();

                return productType.Name + "Was Succesfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProductType(int id, ProductType productType)
        {
            try
            {
                TigerEntities db = new TigerEntities();

                ProductType p = db.ProductTypes.Find(id);

                p.Name = productType.Name;

                db.SaveChanges();
                return productType.Name + "Was Succesfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProductType(int id)
        {
            try
            {
                TigerEntities db = new TigerEntities();
                ProductType productType = db.ProductTypes.Find(id);

                db.ProductTypes.Attach(productType);
                db.ProductTypes.Remove(productType);
                db.SaveChanges();


                return productType.Name + "Was Succesfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}