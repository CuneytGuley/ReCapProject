using Business.Concrete;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.InMemory;
using System;

namespace ConsoleUI
{
    class Program
    {
        static void Main(string[] args)
        {
            CarTest();
            //BrandTest();
            //ColorTest();
            //CarByBrand();



        }

        private static void CarByBrand()
        {
            CarManager carManager = new CarManager(new EfCarDal(), new ColorManager(new EfColorDal()));
            foreach (var car in carManager.GetAllByBrand(2).Data)
            {
                Console.WriteLine(car.Description);
            }
        }

        private static void ColorTest()
        {
            ColorManager colorManager = new ColorManager(new EfColorDal());
            foreach (var color in colorManager.GetAll().Data)
            {
                Console.WriteLine(color.ColorName);
            }
        }

        private static void BrandTest()
        {
            BrandManager brandManager = new BrandManager(new EfBrandDal());
            foreach (var brand in brandManager.GetAll().Data)
            {
                Console.WriteLine(brand.BrandName);
            }
        }

        private static void CarTest()
        {
            CarManager carManager = new CarManager(new EfCarDal(),new ColorManager(new EfColorDal()));

            var result = carManager.GetCarDetails();

            if (result.Success)
            {
                foreach (var car in carManager.GetCarDetails().Data)
                {
                    Console.WriteLine(car.ModelYear + "," + car.ColorName + "," + car.BrandName + "," + car.Description + "=" + car.DailyPrice);
                }
            }
            else 
            {
                Console.WriteLine(result.Message);
            }

            
        }
    }
}
