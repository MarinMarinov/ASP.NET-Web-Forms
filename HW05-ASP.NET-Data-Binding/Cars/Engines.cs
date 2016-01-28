using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cars
{
    public class Engines
    {
        public static IEnumerable<string> GetEngines()
        {
            return new List<string>{ "V8", "Hibride", "V4", "Diesel", "Electric" };
        }
    }
}