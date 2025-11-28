@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'plant data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PLANT as select from I_Plant as Plant
    left outer join I_Address_2 as Addr
      on Plant.AddressID = Addr.AddressID
{
  key Plant.Plant,
      Plant.PlantName,
      Plant.ValuationArea,
      Plant.PlantCustomer,
      Plant.PlantSupplier,
      Plant.FactoryCalendar,
      Plant.DefaultPurchasingOrganization,
      Plant.SalesOrganization,
      Plant.AddressID,
      Plant.PlantCategory,
      Plant.DistributionChannel,
      Plant.Division,
      Plant.Language,
      Plant.IsMarkedForArchiving,
      Plant.BusinessPlace,

  /* Address fields from I_Address_2 */
      Addr.StreetName,
      Addr.HouseNumber,
      Addr.CityName,
      Addr.PostalCode,
      Addr.Country,
      Addr.Region,
      Addr.OrganizationName1,
      Addr.AddresseeFullName
}
