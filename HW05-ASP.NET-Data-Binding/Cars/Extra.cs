using System.Collections.Generic;

namespace Cars
{
    public class Extra
    {
        public string Name { get; set; }

        public decimal Cost { get; set; }

        public static IEnumerable<Extra> GetExtras()
        {
            return new List<Extra>()
            {
                new Extra() {Name = "Automatic windows", Cost = 380m},
                new Extra() {Name = "Electring side mirrors", Cost = 540m},
                new Extra() {Name = "Convertible", Cost = 3540m},
                new Extra() {Name = "Alarm system", Cost = 480m},
                new Extra() {Name = "Dolby Audio system", Cost = 680m},
                new Extra() {Name = "Comfort package", Cost = 1250m},
                new Extra() {Name = "4x4", Cost = 3850m},
                new Extra() {Name = "Air conditioner", Cost = 1560m},
            };
        }
    }
}