using System;

namespace CRUDMVC.Models
{
    public class Pacote
    {
        public int Id { get; set; }
        public int Id_cliente { get; set; }
        public int Id_destino { get; set; }
        public DateTime DataCompra { get; set; }
        public DateTime DataViagem { get; set; }
        public Double Preco { get; set; } 

    }
}
