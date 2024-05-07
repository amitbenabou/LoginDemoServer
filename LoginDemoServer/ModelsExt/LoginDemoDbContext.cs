using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

public partial class LoginDemoDbContext : DbContext
{
    public Models.User GetUSerFromDB(string email)
    {
        Models.User user = this.Users.Where(u => u.Email == email).FirstOrDefault();
        return user;
    }
    public ICollection<Grade> GetUserGrades (string email)
    {
        User u = GetUSerFromDB(email);
        List<Grade> grades = this.Grades.Where(g => g.Email == email).ToList();
        foreach (Grade grade in grades)
        {
            u.Grades.Add(grade);  
        }
        return u.Grades ;
    }
}

