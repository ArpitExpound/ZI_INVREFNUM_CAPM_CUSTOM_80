@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'IRN Details'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUI_INVREFNUM as select from zei_invrefnum as a
                                               left outer join zew_ewaybill as b on b.docno = a.docno
                                                                                 and b.gjahr = a.doc_year   
                                                
{
    key a.bukrs as Bukrs,
    key a.docno as Docno,
    key a.doc_year as DocYear,
    key a.doc_type as DocType,
    key a.odn as Odn,
    key a.irn as Irn,
    key a.version as Version,
    a.bupla as Bupla,
    a.odn_date as OdnDate,
    a.ack_no as AckNo,
    a.ack_date as AckDate,
    a.irn_status as IrnStatus,
    a.cancel_date as CancelDate,
    a.ernam as Ernam,
    a.erdat as Erdat,
    a.erzet as Erzet,
    a.signed_inv as SignedInv,
    a.signed_qrcode as SignedQrcode,
    b.ebillno,
    b.ecan_dat,
    b.ecan_time
}
