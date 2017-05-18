using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TigerLift
{
    public class ProductModel
    {
        public string InsertProgram(Product product)
        {
            try
            {
                TigerEntities db = new TigerEntities();
                db.Products.Add(product);
                db.SaveChanges();

                return product.Name + "Was Succesfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProduct(int id, Product productinfo)
        {
            try
            {
                TigerEntities db = new TigerEntities();

                Product p = db.Products.Find(id);

                p.Name = productinfo.Name;
                p.Price = productinfo.Price;
                p.TypeId = productinfo.TypeId;
                p.Description = productinfo.Description;
                p.Image = productinfo.Image;

                db.SaveChanges();
                return productinfo.Name + "Was Succesfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProduct(int id)
        {
            try
            {
                TigerEntities db = new TigerEntities();
                Product product = db.Products.Find(id);

                db.Products.Attach(product);
                db.Products.Remove(product);
                db.SaveChanges();


                return product.Name + "Was Succesfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public Product GetProduct(int id)
        {
            try
            {
                using (TigerEntities db = new TigerEntities())
                {
                    Product product = db.Products.Find(id);
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<Product> GetAllProducts()
        {
            try
            {
                using (TigerEntities db = new TigerEntities())
                {
                    List<Product> product = (from x in db.Products select x).ToList();
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<Product> GetProductsByType(int typeId)
        {
            try
            {
                using (TigerEntities db = new TigerEntities())
                {
                    List<Product> product = (from x in db.Products where x.TypeId == typeId select x).ToList();
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

    }
}