using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Api.Models
{
    [Table("Clientes")]
    public class Client
    {
        [Key]
        public int ClientId { get; set; }

        [MaxLength(50, ErrorMessage = "O campo nome suporte apenas {1} caracteres")]
        public string Name{get; set; }

        [MaxLength(100, ErrorMessage = "O campo nome suporte apenas {1} caracteres")]
        public string Email { get; set; }

        public bool Status { get; set; }
    }
}
