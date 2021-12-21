using Microsoft.EntityFrameworkCore;
using CRUDMVC.Models;

namespace CRUDMVC.Models
{
    public class Contexto : DbContext
    {
        public DbSet<Cliente> Clientes { get; set; }

        public DbSet<Destino> Destino { get; set; }

        public DbSet<Pacote> Pacote { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString: @"Server=DESKTOP-JHJ515G;Database=CRUDMVC;Integrated Security=True");
            
        }

    }
}
