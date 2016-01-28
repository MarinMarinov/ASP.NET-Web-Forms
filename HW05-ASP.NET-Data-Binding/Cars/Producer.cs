using System.Collections.Generic;

namespace Cars
{
    public class Producer
    {
        public string Name { get; set; }

        public IEnumerable<string> Models { get; set; }

        public static IEnumerable<Producer> GetProducers()
        {
            return new List<Producer>
            {
                new Producer() 
                {
                    Name = "VW",
                    Models = new List<string>() { "Golf", "Passat", "Tuareg" }
                },
                new Producer()
                {
                    Name = "Audi",
                    Models = new List<string>() { "A2", "A4", "A6" }

                },
                new Producer()
                {
                    Name = "Skoda",
                    Models = new List<string>() { "Fabia", "Octavia", "Yeti" }
                }
            };
        }
    }
}