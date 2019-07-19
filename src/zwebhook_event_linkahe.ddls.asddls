@AbapCatalog.sqlViewName: 'ZWHOOK_LINK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'webhook event linkage'
define view zwebhook_event_linkage as select from swfdevtyp as t
inner join swfdevena as a on a.objcateg = t.objcateg and a.objtype = t.objtype and a.event = t.event and a.rectype = t.rectype
inner join zevent_link_url as e on e.objcateg = t.objcateg and e.objtype = t.objtype and e.event = t.event and e.rectype = t.rectype {
    t.objcateg,
    t.objtype,
    t.event,
    t.rectype,
    t.recmode,
    t.recclass,
    t.typelink,
    a.enabled,
    e.callback_url
} 
 