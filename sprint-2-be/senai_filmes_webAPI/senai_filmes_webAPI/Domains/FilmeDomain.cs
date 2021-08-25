using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_filmes_webAPI.Domains
{
    public class FilmeDomain
    {
        public int IDfilme { get; set; }
        public int IDgenero { get; set; }
        public string Titulo_filme { get; set; }
    }
}
