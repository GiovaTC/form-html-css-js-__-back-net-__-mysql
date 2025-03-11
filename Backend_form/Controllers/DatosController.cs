using Backend_form.Models;
using Backend_form.Services;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Backend_form.Controllers
{
    [Route("api/datos")]
    [ApiController]
    public class DatosController : ControllerBase
    {
        private readonly DatabaseService _dbService;

        public DatosController(DatabaseService dbService)
        {
            _dbService = dbService;
        }

        [HttpGet]
        public ActionResult<List<Dato>> Get() => _dbService.ObtenerDatos();

        [HttpPost]
        public IActionResult Post([FromBody] Dato dato)
        {
            _dbService.AgregarDato(dato);
            return Ok();
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Dato dato)
        {
            _dbService.ActualizarDato(id, dato);
            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _dbService.EliminarDato(id);
            return Ok();
        }
    }
}
