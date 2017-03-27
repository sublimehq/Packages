/// SYNTAX TEST "Packages/C#/C#.sublime-syntax"

    class Test {
        void Main() {
            List<Book> books = new List<Book>() {
///                                             ^ meta.braces punctuation.section.braces.begin
              new Book { Title = "LINQ in Action" },
              new Book { Title = "LINQ for Fun" },
              new Book { Title = "Extreme LINQ" } };
///                                              ^^ meta.instance
///                                              ^ - meta.instance meta.instance
///                                               ^ meta.braces punctuation.section.braces.end

            var titles =
              books
                .Where(book => book.Title.Contains("Action"))
                .Select(book => book.Title);
            titles.Dump();

            var results = from book in books
///                       ^^^^ keyword.other.sql
///                                 ^^ keyword.other.sql
                       let titlelen = book.Title.Length
///                    ^^^ keyword.other.sql
                       select new { book.Title, titlelen }.Dump();
///                    ^^^^^^ keyword.other.sql
            results.Dump();

            results = (from book in books
///                    ^^^^ keyword.other.sql
///                              ^^ keyword.other.sql
                       let title = book.Title
///                    ^^^ keyword.other.sql
                       orderby title.Length descending
///                    ^^^^^^^ keyword.other.sql
///                                         ^^^^^^^^^^ keyword.other.sql
                       select new { title, title.Length }).Dump();
///                    ^^^^^^ keyword.other.sql

            var innerJoinQuery =
                       from category in categories
///                    ^^^^ keyword.other.sql
///                                  ^^ keyword.other.sql
                       join prod in products on category.ID equals prod.CategoryID
///                    ^^^^ keyword.other.sql
///                              ^^ keyword.other.sql
///                                          ^^ keyword.other.sql
///                                                         ^^^^^^ keyword.other.sql
                       select new { ProductName = prod.Name, Category = category.Name };

            var studentQuery1 =
                       from student in students
///                    ^^^^ keyword.other.sql
///                                 ^^ keyword.other.sql
                       group student by student.Last[0] into letterGroup;
///                    ^^^^^ keyword.other.sql
///                                  ^^ keyword.other.sql
///                                                     ^^^^ keyword.other.sql
        }
    }
