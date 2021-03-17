using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfRentalDal : EfEntityRepositoryBase<Rental, ReCapContext>, IRentalDal
    {
        public List<RentalDetailDto> GetRentalDetails()
        {
            using (ReCapContext context = new ReCapContext())
            {
                var result = from c in context.Cars
                             join r in context.Rentals on c.Id equals r.CarId
                             join b in context.Brands on c.BrandId equals b.BrandId
                             join cl in context.Colors on c.ColorId equals cl.ColorId
                             join cs in context.Customers on r.CustomerId equals cs.Id
                             join usr in context.Users on cs.UserId equals usr.Id
                             select new RentalDetailDto
                             {
                                 CarId = c.Id,
                                 ModelYear = c.ModelYear,
                                 ColorName = cl.ColorName,
                                 BrandName = b.BrandName,
                                 Description = c.Description,
                                 CompanyName = cs.CompanyName,
                                 RentDate = r.RentDate,
                                 ReturnDate = r.ReturnDate,
                                 FirstName = usr.FirstName,
                                 LastName = usr.LastName
                             };
                return result.ToList();

            }
        }
    }
}
