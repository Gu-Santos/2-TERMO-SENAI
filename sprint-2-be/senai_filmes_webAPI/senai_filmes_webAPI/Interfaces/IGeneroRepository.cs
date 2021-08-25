using senai_filmes_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_filmes_webAPI.Interfaces
{
    interface IGeneroRepository
    {
            List<GeneroDomain> ListarTodos();

            GeneroDomain BuscarPorId(int IDgenero);

            void Cadastrar(GeneroDomain novo_genero);

            void AtualizarID_Corpo(GeneroDomain genero_Att);

            void AtualizarID_URL(int IDgenero, GeneroDomain genero_Att);

            void Deletar(int IDgenero);
        
    }
}
