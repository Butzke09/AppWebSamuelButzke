using AppWebSamuelButzke.Configs;
using AppWebSamuelButzke.Model;
using MySql.Data.MySqlClient;

namespace AppWebSamuelButzke.DAO
{
    public class ProcessoDAO
    {
        private readonly Conexao _conexao;

        public ProcessoDAO(Conexao conexao)
        {
            _conexao = conexao;
        }

        public List<Processo> Listar()
        {
            var lista = new List<Processo>();

            using var conexao = _conexao.GetConnection();
            using var comando = new MySqlCommand(
                "SELECT id_pro, numero_pro, data_pro, interessado_pro, assunto_pro, descricao_pro, situacao_pro FROM processos;",
                conexao);
            using var leitor = comando.ExecuteReader();

            while (leitor.Read())
            {
                lista.Add(MapearProcesso(leitor));
            }

            return lista;
        }

        private static Processo MapearProcesso(MySqlDataReader leitor)
        {
            return new Processo
            {
                Id = leitor.GetInt32("id_pro"),
                Numero = DAOHelper.GetString(leitor, "numero_pro"),
                Data = DAOHelper.GetDateTime(leitor, "data_pro"),
                Interessado = DAOHelper.GetString(leitor, "interessado_pro"),
                Assunto = DAOHelper.GetString(leitor, "assunto_pro"),
                Descricao = DAOHelper.GetString(leitor, "descricao_pro"),
                Situacao = DAOHelper.GetString(leitor, "situacao_pro")
            };
        }
    }
}