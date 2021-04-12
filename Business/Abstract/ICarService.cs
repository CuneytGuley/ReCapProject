using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICarService
    {
        IDataResult<List<Car>> GetAll();
        IDataResult<List<Car>> GetAllByBrand(int brandId);
        IDataResult<List<Car>> GetByColor(int colorId);
        IDataResult<List<CarDetailDto>> GetCarDetails();
        IDataResult<Car> GetById(int id);
        IResult Add(Car car);
        IResult Delete(Car car);
        IResult Update(Car car);

        IResult AddTransactionalTest(Car car);
        IDataResult<List<CarDetailDto>> GetCarDetailsByBrand(int brandId);
        IDataResult<List<CarDetailDto>> GetCarDetailsByColor(int colorId);
    } 
}
