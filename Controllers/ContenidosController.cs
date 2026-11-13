using DisneyPlusLab.Data;
using DisneyPlusLab.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
 
namespace DisneyPlusLab.Controllers;
 
public class ContenidosController : Controller
{
    private readonly ApplicationDbContext _context;
 
    public ContenidosController(ApplicationDbContext context)
    {
        _context = context;
    }
 
    public async Task<IActionResult> Index()
    {
        var contenidos = await _context.Contenidos
            .OrderByDescending(c => c.FechaEstreno)
            .ToListAsync();
 
        return View(contenidos);
    }
 
    public IActionResult Create()
    {
        return View();
    }
 
    [HttpPost]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Create(Contenido contenido)
    {
        if (!ModelState.IsValid)
            return View(contenido);
 
        contenido.FechaCreacionUtc = DateTime.UtcNow;
 
        _context.Contenidos.Add(contenido);
        await _context.SaveChangesAsync();
 
        return RedirectToAction(nameof(Index));
    }
}