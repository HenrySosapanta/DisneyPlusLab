using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace DisneyPlusLab.Migrations
{
    /// <inheritdoc />
    public partial class AddGenero : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "GeneroId",
                table: "Contenidos",
                type: "integer",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Genero",
                columns: table => new
                {
                    Id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    Nombre = table.Column<string>(type: "character varying(60)", maxLength: 60, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Genero", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Contenidos_GeneroId",
                table: "Contenidos",
                column: "GeneroId");

            migrationBuilder.AddForeignKey(
                name: "FK_Contenidos_Genero_GeneroId",
                table: "Contenidos",
                column: "GeneroId",
                principalTable: "Genero",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Contenidos_Genero_GeneroId",
                table: "Contenidos");

            migrationBuilder.DropTable(
                name: "Genero");

            migrationBuilder.DropIndex(
                name: "IX_Contenidos_GeneroId",
                table: "Contenidos");

            migrationBuilder.DropColumn(
                name: "GeneroId",
                table: "Contenidos");
        }
    }
}
