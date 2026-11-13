using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DisneyPlusLab.Migrations
{
    /// <inheritdoc />
    public partial class AddDestacadoYFechaRegistro : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Destacado",
                table: "Contenidos",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<DateTime>(
                name: "FechaRegistro",
                table: "Contenidos",
                type: "timestamp with time zone",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Destacado",
                table: "Contenidos");

            migrationBuilder.DropColumn(
                name: "FechaRegistro",
                table: "Contenidos");
        }
    }
}
