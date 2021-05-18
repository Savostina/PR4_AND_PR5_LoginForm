namespace SuperMarket.EntityCodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SllingProducts
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SllingProducts()
        {
            ProductOnDepartments = new HashSet<ProductOnDepartments>();
        }

        public int Id { get; set; }

        public int IdStaff { get; set; }

        public int IdProduct { get; set; }

        public DateTime DateSlling { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductOnDepartments> ProductOnDepartments { get; set; }

        public virtual Staff Staff { get; set; }
    }
}
