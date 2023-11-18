using back_hoteles.Interface;
using back_hoteles.Models;
using Dapper;
using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace back_hoteles.Repositories
{
    public class HotelRepository : Hotels_interface
    {
        private readonly MySQLConfiguration _connectionString;
        public HotelRepository(MySQLConfiguration connectionString) {
            _connectionString = connectionString;
        }

        protected MySqlConnection dbConnection()
        {
            return new MySqlConnection(_connectionString.ConnectionString);
        }
        public async Task<bool> DeleteHotel(Hotels hotels)
        {
            var db = dbConnection();
            var sql = @" DELETE FROM Hotels WHERE id = @id ";
            var result = await db.ExecuteAsync(sql, new { id = hotels.id});
            return result > 0;
        }

        public async Task<IEnumerable<Hotels>> GetAllHotels()
        {
            var db = dbConnection();
            var sql = @" SELECT * FROM hotels ";
            return await db.QueryAsync<Hotels>(sql, new { });
        }


        public async Task<IEnumerable<Hotels>> GetFilterHotels(string name_hotel)
        {
            var db = dbConnection();
            var sql = @"SELECT *
                FROM Hotels
                WHERE name_hotel LIKE @name_hotel
                   OR country LIKE @name_hotel;";

            return await db.QueryAsync<Hotels>(sql, new { name_hotel = $"%{name_hotel}%" });
        }

        public async Task<bool> InsertHotel(Hotels hotels)
        {
            var db = dbConnection();
            var sql = @" INSERT INTO Hotels (
id, 
name_hotel, 
addres_hotel, 
country, 
description_hotel,
phone_number,
email,
img,
stars)
VALUES
(
@id, 
@name_hotel, 
@addres_hotel, 
@country, 
@description_hotel,
@phone_number,
@email,
@img,
@stars
)";
            var result = await db.ExecuteAsync(sql, new 
            { hotels.id, hotels.name_hotel, hotels.addres_hotel, hotels.country, hotels.description_hotel, hotels.phone_number, hotels.email, hotels.img, hotels.stars });
            
            return result > 0;
        }

        public async Task<bool> UpdateHotel(Hotels hotels)
        {
            var db = dbConnection();
            var sql = @" UPDATE Hotels 
                         SET id = @id,
                             name_hotel = @name_hotel,
                             addres_hotel = @addres_hotel,
                             country = @country,
                             description_hotel = @description_hotel,
                             phone_number = @phone_number,
                             email = @email,
                             img = @img,
                             stars = @stars
                          WHERE id = @id";
            var result = await db.ExecuteAsync(sql, new
            { hotels.id, hotels.name_hotel, hotels.addres_hotel, hotels.country, hotels.description_hotel, hotels.phone_number, hotels.email, hotels.img, hotels.stars });

            return result > 0;
        }

        public Task<Hotels> GetFilterHotels(string name_hotel, int stars, string country)
        {
            throw new NotImplementedException();
        }
    }
}
