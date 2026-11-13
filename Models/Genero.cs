using System.ComponentModel.DataAnnotations;
 
namespace DisneyPlusLab.Models;

public class Genero
{
    public int Id {get; set;}

    [Required (ErrorMessage = "El nombre es obligatorio.")]
    [StringLength(60, MinimumLength = 2)]
    public String Nombre {get; set;} = string.Empty;

    public ICollection<Contenido> Contenidos {get; set;} = new List<Contenido>();
}