using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class CreditCard
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public string Name { get; set; }
        public int CardNumber { get; set; }
        public int ExpirationYear { get; set; }
        public int ExpirationMonth { get; set; }
        public int Cvc { get; set; }
        public string CardType { get; set; }
    }
}
