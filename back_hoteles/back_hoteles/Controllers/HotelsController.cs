using back_hoteles.Interface;
using back_hoteles.Models;
using back_hoteles.Repositories;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace back_hoteles.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelsController : ControllerBase
    {
        private readonly Hotels_interface _hotelRepository;

        public HotelsController(Hotels_interface hotelRepository)
        {
            _hotelRepository = hotelRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllHotels()
        {
            return Ok(await _hotelRepository.GetAllHotels());
        }

        [HttpGet("{name_hotel}")]
        public async Task<IActionResult> GetFilterHotels(string name_hotel)
        {
            return Ok(await _hotelRepository.GetFilterHotels(name_hotel));
        }

        [HttpPost]
        public async Task<IActionResult> InsertHotel([FromBody] Hotels hotel)
        {
            if (hotel == null)
            {
                return BadRequest();
            }

            if (!ModelState.IsValid) {
                return BadRequest(ModelState);
            }

            var created = await _hotelRepository.InsertHotel(hotel);
            return Created("Created", created);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateHotel([FromBody] Hotels hotel)
        {
            if (hotel == null)
            {
                return BadRequest();
            }

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            await _hotelRepository.UpdateHotel(hotel);
            return NoContent();
        }

        [HttpDelete]
        public async Task<IActionResult> DeleteHotel(int id)
        {
            await _hotelRepository.DeleteHotel(new Hotels { id = id });
            return NoContent();
        }
    }
}
