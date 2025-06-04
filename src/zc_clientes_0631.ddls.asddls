@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED   
}
@Metadata.allowExtensions: true 
define view entity zc_clientes_0631 
     as select from ztb_clientes_631 as clientes
     inner join ztb_clnts_lib631 as clnts on clnts.id_cliente = clientes.id_cliente
{
    key clnts.id_libros as IDLibros,
    key clientes.id_cliente as IdCliente,
    key clientes.tipo_acceso as Acceso,
    clientes.nombre as Nombre,
    clientes.apellido as Apellido,
    clientes.email as Email,
    clientes.url as Url
}
