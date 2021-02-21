using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
    public class CarValidator : AbstractValidator<Car>
    {
        public CarValidator()
        {
            RuleFor(c => c.BrandId).NotEmpty();
            RuleFor(c => c.ColorId).NotEmpty();
            RuleFor(c => c.DailyPrice).GreaterThanOrEqualTo(200);
            RuleFor(c => c.ModelYear).GreaterThanOrEqualTo(DateTime.Now.Year - 3);
            RuleFor(c => c.Description).NotEmpty();
        }
    }
}
