using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_filmes_webAPI.Interfaces
{
    interface IFilmesRepository
    {
        List<FilmesDomain> ListarTodos();

        FilmesDomain BuscarPorID(int IDfilme);

        void Cadastro(FilmesDomain novo_filme);

        void att_IDCorpo(FilmesDomain filme_att);

        void att_URL(int IDfilme, FilmesDomain filme_atualizado);

        void Delete(int IDfilme);
    }
}
