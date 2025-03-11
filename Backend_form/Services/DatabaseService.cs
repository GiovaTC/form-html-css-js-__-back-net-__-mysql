using Backend_form.Models;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;

namespace Backend_form.Services
{
    public class DatabaseService
    {
        private readonly string _connectionString;

        public DatabaseService(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public List<Dato> ObtenerDatos()
        {
            List<Dato> datos = new();
            using MySqlConnection conn = new(_connectionString);
            conn.Open();
            string query = "SELECT * FROM datos";
            using MySqlCommand cmd = new(query, conn);
            using MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                datos.Add(new Dato
                {
                    Id = reader.GetInt32(0),
                    Col1 = reader.GetString(1),
                    Col2 = reader.GetString(2),
                    Col3 = reader.GetString(3),
                    Col4 = reader.GetString(4),
                    Col5 = reader.GetString(5),
                    Col6 = reader.GetString(6),
                    Col7 = reader.GetString(7),
                    Col8 = reader.GetString(8),
                    Col9 = reader.GetString(9),
                    Col10 = reader.GetString(10)
                });
            }
            return datos;
        }

        public void AgregarDato(Dato dato)
        {
            using MySqlConnection conn = new(_connectionString);
            conn.Open();
            string query = "INSERT INTO datos (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10) VALUES (@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9, @c10)";
            using MySqlCommand cmd = new(query, conn);
            cmd.Parameters.AddWithValue("@c1", dato.Col1);
            cmd.Parameters.AddWithValue("@c2", dato.Col2);
            cmd.Parameters.AddWithValue("@c3", dato.Col3);
            cmd.Parameters.AddWithValue("@c4", dato.Col4);
            cmd.Parameters.AddWithValue("@c5", dato.Col5);
            cmd.Parameters.AddWithValue("@c6", dato.Col6);
            cmd.Parameters.AddWithValue("@c7", dato.Col7);
            cmd.Parameters.AddWithValue("@c8", dato.Col8);
            cmd.Parameters.AddWithValue("@c9", dato.Col9);
            cmd.Parameters.AddWithValue("@c10", dato.Col10);
            cmd.ExecuteNonQuery();
        }

        public void ActualizarDato(int id, Dato dato)
        {
            using MySqlConnection conn = new(_connectionString);
            conn.Open();
            string query = "UPDATE datos SET col1=@c1, col2=@c2, col3=@c3, col4=@c4, col5=@c5, col6=@c6, col7=@c7, col8=@c8, col9=@c9, col10=@c10 WHERE id=@id";
            using MySqlCommand cmd = new(query, conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@c1", dato.Col1);
            cmd.Parameters.AddWithValue("@c2", dato.Col2);
            cmd.Parameters.AddWithValue("@c3", dato.Col3);
            cmd.Parameters.AddWithValue("@c4", dato.Col4);
            cmd.Parameters.AddWithValue("@c5", dato.Col5);
            cmd.Parameters.AddWithValue("@c6", dato.Col6);
            cmd.Parameters.AddWithValue("@c7", dato.Col7);
            cmd.Parameters.AddWithValue("@c8", dato.Col8);
            cmd.Parameters.AddWithValue("@c9", dato.Col9);
            cmd.Parameters.AddWithValue("@c10", dato.Col10);
            cmd.ExecuteNonQuery();
        }

        public void EliminarDato(int id)
        {
            using MySqlConnection conn = new(_connectionString);
            conn.Open();
            string query = "DELETE FROM datos WHERE id=@id";
            using MySqlCommand cmd = new(query, conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
        }
    }
}
