namespace SuperMarket.EntityCodeFirst
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EntityContext : DbContext
    {
        public EntityContext()
            : base("name=EntityContext")
        {
        }

        public virtual DbSet<Departments> Departments { get; set; }
        public virtual DbSet<Position> Position { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductOnDepartments> ProductOnDepartments { get; set; }
        public virtual DbSet<SllingProducts> SllingProducts { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Departments>()
                .HasMany(e => e.ProductOnDepartments)
                .WithRequired(e => e.Departments)
                .HasForeignKey(e => e.IdDepartments)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Position>()
                .HasMany(e => e.Staff)
                .WithRequired(e => e.Position)
                .HasForeignKey(e => e.IdPosition)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Product>()
                .HasMany(e => e.ProductOnDepartments)
                .WithRequired(e => e.Product)
                .HasForeignKey(e => e.IdProduct)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SllingProducts>()
                .HasMany(e => e.ProductOnDepartments)
                .WithRequired(e => e.SllingProducts)
                .HasForeignKey(e => e.IdProduct)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Staff>()
                .HasMany(e => e.SllingProducts)
                .WithRequired(e => e.Staff)
                .HasForeignKey(e => e.IdStaff)
                .WillCascadeOnDelete(false);
        }
    }
}
