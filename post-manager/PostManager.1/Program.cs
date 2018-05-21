using System;
using System.Linq;

namespace PostManager._1
{
    public class Program
    {
        static void Main(string[] args)
        {
            using (var db = new NonrthwindContext())
            {
                var categories = db.Categories.Take(10).ToList();

                Console.WriteLine("Categories:");
                categories.ForEach(category => Console.WriteLine($"{category.CategoryID}: {category.CategoryName}"));

                Console.WriteLine("Press any key to exit...");
                Console.ReadKey();
            }
        }
    }
}
