@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'clnts'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_clnts_lib_0631
  as select from ztb_clnts_lib631
{
  key id_libros                    as IdLibros,
      //  key id_cliente as IdCliente
      count( distinct id_cliente ) as ventas
}
group by
  id_libros
