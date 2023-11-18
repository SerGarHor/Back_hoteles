using back_hoteles.Models;

namespace back_hoteles.Interface
{
    public interface Hotels_interface
    {
        Task<IEnumerable<Hotels>> GetAllHotels();
        Task<IEnumerable<Hotels>> GetFilterHotels(string name_hotel);
        Task<bool> InsertHotel(Hotels hotels);
        Task<bool> UpdateHotel(Hotels hotels);
        Task<bool> DeleteHotel(Hotels hotels);

    }
}
