using DisneyPlusLab.Models;
using Microsoft.EntityFrameworkCore;
 
namespace DisneyPlusLab.Data;
 
public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(
        DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }
 
    public DbSet<Contenido> Contenidos => Set<Contenido>();
}