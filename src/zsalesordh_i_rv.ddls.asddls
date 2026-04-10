@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSALESORDH_I_RV
  provider contract transactional_interface
  as projection on ZSALESORDH_R_RV
{
  key HeaderUUID,
      HeaderID,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,
      Imageurl,  
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child ZSALESORDI_I_RV      
}
