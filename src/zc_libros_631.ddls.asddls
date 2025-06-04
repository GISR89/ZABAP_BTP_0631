@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED 
    }
@Metadata.allowExtensions: true

define view entity zc_libros_631
  as select from ztb_libros_0631 as libros
    inner join   ztb_catego_0631 as categoria on libros.bi_categ = categoria.bi_categ
    left outer join zc_clnts_lib_0631 as Ventas on Ventas.IdLibros = libros.id_libros
  association [0..*] to zc_clientes_0631 as _Clientes on _Clientes.IDLibros = $projection.IdLibros
{
  key libros.id_libros as IdLibros,
      libros.bi_categ  as BiCateg,
      libros.titulo    as Titulo,
      libros.autor     as Autor,
      libros.editorial as Editorial,
      libros.idioma    as Idioma,
      libros.paginas   as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      libros.precio    as Precio,
      libros.moneda    as Moneda,
      
      case
       when Ventas.ventas < 1 then 0
       when Ventas.ventas = 1 then 1
       when Ventas.ventas = 2 then 2
       when Ventas.ventas > 2 then 3
       else 0
       end                   as Ventas,
      categoria.descripcion as Descripcion,
      
      libros.formato   as Formato,
      libros.url       as Url,
      _Clientes

}
