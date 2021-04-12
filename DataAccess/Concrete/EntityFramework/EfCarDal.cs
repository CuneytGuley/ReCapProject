using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCarDal : EfEntityRepositoryBase<Car, ReCapContext>, ICarDal
    {
        public List<CarDetailDto> GetCarDetails(Expression<Func<CarDetailDto, bool>> filter = null)
        {
            using (ReCapContext context = new ReCapContext())
            {
                var result = from c in context.Cars
                             join b in context.Brands
                             on c.BrandId equals b.BrandId
                             join cl in context.Colors
                             on c.ColorId equals cl.ColorId
                             select new CarDetailDto
                             {
                                 Id = c.Id,
                                 ModelYear = c.ModelYear,
                                 ColorId = cl.ColorId,
                                 ColorName = cl.ColorName,
                                 BrandId = b.BrandId,
                                 BrandName = b.BrandName,
                                 Description = c.Description,
                                 DailyPrice = c.DailyPrice
                             };
                return filter == null ? result.ToList() : result.Where(filter).ToList();
            }
        }
    }
}
