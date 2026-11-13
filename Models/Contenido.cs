using System.ComponentModel.DataAnnotations;
 
namespace DisneyPlusLab.Models;
 
public class Contenido
{
    public int Id { get; set; }
 
    [Required(ErrorMessage = "El título es obligatorio.")]
    [StringLength(150, MinimumLength = 2)]
    public string Titulo { get; set; } = string.Empty;
 
    [StringLength(800)]
    public string? Descripcion { get; set; }
 
    [Required]
    [StringLength(30)]
    public string Tipo { get; set; } = string.Empty;
 
    [DataType(DataType.Date)]
    public DateOnly FechaEstreno { get; set; }
 
    [Range(1, 600)]
    public int DuracionMinutos { get; set; }
 
    [StringLength(10)]
    public string? Clasificacion { get; set; }
 
    public bool Disponible { get; set; } = true;
 
    public DateTime FechaCreacionUtc { get; set; } = DateTime.UtcNow;
}