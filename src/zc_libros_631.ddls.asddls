@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED }
@Metadata.allowExtensions: true


define view entity zc_libros_631
  as select from ztb_libros_0631 as libros
    inner join   ztb_catego_0631 as categoria on libros.bi_categ = categoria.bi_categ
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
      libros.formato   as Formato,
      libros.url       as Url,
      _Clientes

}
