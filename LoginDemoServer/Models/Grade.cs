using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

[Keyless]
public partial class Grade
{
    public int Id { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime TestDate { get; set; }

    [StringLength(20)]
    public string Subject { get; set; } = null!;

    [Column("Grade")]
    public int Grade1 { get; set; }

    [StringLength(100)]
    public string Email { get; set; } = null!;

    [ForeignKey("Email")]
    public virtual User EmailNavigation { get; set; } = null!;
}
