//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _7eam_Sondeo_web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class municipio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public municipio()
        {
            this.sondeo = new HashSet<sondeo>();
        }
    
        public string id_municipio { get; set; }
        public Nullable<int> id_depto { get; set; }
        public string municipio1 { get; set; }
        public string area { get; set; }
        public string localidad { get; set; }
    
        public virtual departamento departamento { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sondeo> sondeo { get; set; }
    }
}
