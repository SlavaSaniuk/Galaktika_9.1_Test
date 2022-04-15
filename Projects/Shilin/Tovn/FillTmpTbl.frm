//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - �����⨪�
// ���������� ⠡��� � ����� �� ����� ���⨯� TOVN
//******************************************************************************

//******************************************************************************
// ����-�ଠ, �믮������ ��� � ����묨 ���⨯�
.linkform 'FillTmpTbl' prototype is tovn
.NameInList '���㧪� ������ �� ���⨯� TOVN � FastReport'
.group 'FastReport'
.var
  recNakl     : TMPrnSoprNakl;
  recOrg      : TMPrnSoprOrg;
  recTTI      : TMPrnSoprTTI;
  recSpec     : TMPrnSoprSpNakl;
  recUsl      : TMPrnSoprUslNakl;
  recAttr     : TMPrnSoprAttr;
  recTTISp    : TMPrnSoprSpTTI;
#ifdef __PrnSoprFunMem__
  oPrnSoprFun : iPrnSoprFunMem;
#else
  oPrnSoprFun : iPrnSoprFun;
#end
.endvar
.create view MemTblSopr
from
  MPrnSoprNakl
, MPrnSoprOrg
, MPrnSoprTTI
, MPrnSoprSpNakl
, MPrnSoprUslNakl
, MPrnSoprAttr
, MPrnSoprSpTTI
;
!���⪠ ⠡��� � �����
.begin
  MemTblSopr.Delete All MPrnSoprNakl;
  MemTblSopr.Delete All MPrnSoprOrg;
  MemTblSopr.Delete All MPrnSoprTTI;
  MemTblSopr.Delete All MPrnSoprSpNakl;
  MemTblSopr.Delete All MPrnSoprUslNakl;
  MemTblSopr.Delete All MPrnSoprAttr;
  MemTblSopr.Delete All MPrnSoprSpTTI;
end.
.{
.begin


//******************************************************************************
! �ନ஢���� MPrnSoprNakl
  ClearAdvRecord(recNakl);

  recNakl.KatSoprNRec        := ���������_�४;
  recNakl.UNN                := unn_inn;
  recNakl.KolSpSopr          := ������⢮_SpSopr;
  recNakl.TypeParentDoc      := ⨯_த�⥫�᪮��_���㬥��;
  recNakl.LicPost            := ��業���_���⠢騪;
  recNakl.LicGrouzOtp        := ��業���_��㧮��ࠢ�⥫�;
  recNakl.LicGrouzPol        := ��業���_��㧮�����⥫�;
  recNakl.LicPol             := ��業���_�����⥫�;
  recNakl.LicPlat            := ��業���_���⥫�騪;
  recNakl.LicZakPlat         := ��業���_�����稪_���⥫�騪;
  recNakl.grotp_gl_name      := ��㧮��ࠢ�⥫�_��������_��_������;
  recNakl.grpol_gl_name      := ��㧮�����⥫�_��������_��_������;
  recNakl.PriceList          := �३��࠭▥�;
  recNakl.Director           := ��४��;
  recNakl.DirectorTabNom     := ��४��_������;
  recNakl.DirectorApp        := ��४��_���������;
  recNakl.GBuhName           := ������_��壠���;
  recNakl.GbuhNom            := ������_��壠���_������;
  recNakl.GbuhApp            := ������_��壠���_���������;
  recNakl.KatSopr_NSopr      := �����;
  recNakl.KatSopr_Descr      := ���������;
  recNakl.KatSopr_DescNum    := �����_�_���ਯ�஬;
  recNakl.KatSopr_UserField  := �������짮��⥫�;
  recNakl.Dogovor_NoDoc      := �����_�������;
  recNakl.Dogovor_dDoc       := ���_�������;
  recNakl.Dogovor_NoDoc_Ext  := �����_�������_Ext;
  recNakl.KatSopr_dSopr      := ���;
  recNakl.Day_KatSopr_dSopr  := ��⠄���;
  recNakl.Mon_KatSopr_dSopr  := ��⠌����;
  recNakl.Year_KatSopr_dSopr := ��⠃��;
  recNakl.KatSopr_dOpr       := ���_���㧪�;
  recNakl.KatSopr_nDover     := ����������;
  recNakl.KatSopr_dDover     := ��⠄����;
  recNakl.KatSopr_sDover     := ��������;
  recNakl.DovFIO_Name        := ������;
  recNakl.DovFIO_Post        := �����殄��������;
  recNakl.DovFIO_PasSer      := �����殏�ᯑ���;
  recNakl.DovFIO_PasNumb     := �����殏�ᯍ����;
  recNakl.DovFIO_WhereVid    := �����殏�ᯃ��;
  recNakl.DovFIO_DatVid      := �����殏�ᯊ����;
  recNakl.DoverOrgName       := �ࣄ����;
  recNakl.KatSopr_Name       := ������_���������;
  recNakl.KatPodr_Name       := �����;
  recNakl.KatPodr_Addr       := �����_����;
  recNakl.KatPodrTo_Name     := �����_���;
  recNakl.KatPodrTo_Addr     := �����_���_����;
  recNakl.KatMol_Name        := ���;
  recNakl.MolTabNom          := ���_������;
  recNakl.MolApp             := ������������;
  recNakl.SkladBoss          := ������㪮����⥫�;
  recNakl.KatMolTo_Name      := ���_���;
  recNakl.MolPolTabNom       := ���_���_������;
  recNakl.MolPolApp          := ������������_���;
  recNakl.SkladBossPol       := ������㪮����⥫�_���;
  recNakl.TXO_Name           := ������_���;
  recNakl.Class_OsnOtp       := �᭮�����_���᪠;
  recNakl.Class_CelPriobr    := ����_�ਮ��⥭��;
  recNakl.SchFact_NRec       := �甠��_����;
  recNakl.SchFact_Num        := �甠��_�����;
  recNakl.BaseDoc_NoDoc      := �᭮�����;
  recNakl.BaseDoc_DDoc       := ��⠎᭮�����;
  recNakl.KatNazna_Name      := �����祭��;
  recNakl.NZakaz_NoDoc       := ���龜���������;
  recNakl.NZakaz_DDoc        := ���龜�������;
  recNakl.NakSymbol          := ���������;
  recNakl.NacSymbol          := ��摨����;
  recNakl.ValSymbol          := ���������;
  recNakl.CurseSpis          := ����_ᯨᠭ��;
  recNakl.Attr_SdalOptApp    := ᤠ�_��ࠢ�⥫�_���������;
  recNakl.Attr_SdalOptFIO    := ᤠ�_��ࠢ�⥫�;
  recNakl.Attr_OptRazApp     := ����_ࠧ�訫_���������;
  recNakl.Attr_OptRazFIO     := ����_ࠧ�訫;
  recNakl.Attr_OptRazApp2    := ����_ࠧ�訫_���������2;
  recNakl.Attr_OptRazFIO2    := ����_ࠧ�訫2;
  recNakl.Attr_OptRazApp3    := ����_ࠧ�訫_���������3;
  recNakl.Attr_OptRazFIO3    := ����_ࠧ�訫3;
  recNakl.Attr_Driver        := ����⥫�;
  recNakl.Attr_Forw          := �ᯥ����;
  recNakl.Attr_MyAuto        := ᮡ�⢥���_�࠭ᯮ��;
  recNakl.Attr_AutoName      := ��⮯।���⨥_����;
  recNakl.MetLoad_Name       := ���_�㭪�_��⮤_2;
  recNakl.Attr_Auto          := ��⮬�����;
  recNakl.Attr_MetTrans      := ᯮᮡ_�࠭ᯮ��஢��;
  recNakl.Attr_KolEzd        := ������⢮_�����;
  recNakl.TranspUsl1         := �࠭ᯮ�⭠�_��㣠_1;
  recNakl.TranspUsl2         := �࠭ᯮ�⭠�_��㣠_2;
  recNakl.KatSopr_cVal       := �����_�४;


//******************************************************************************
! �ନ஢���� MPrnSoprTTI
  ClearAdvRecord(recTTI);
  recTTI.KatSoprNRec         := recNakl.KatSoprNRec;
  recTTI.MarKod              := ���_�������_���;
  recTTI.MarName             := ���_�������_���;
  recTTI.MarSpKod            := ���_�������_���ᮡ�࠭_���;
  recTTI.MarSpName           := ���_�������_���ᮡ�࠭_���;
  recTTI.MarRasst            := ���_�������_�����;
  recTTI.MarSpeed            := ���_�������_�������;
  recTTI.SpeedKod            := ���_�������_���;
  recTTI.SpeedName           := ���_�������_���;
  recTTI.SpeedMin            := ���_�������_���;
  recTTI.SpeedMax            := ���_�������_����;
  recTTI.Speed               := ���_�������;
  recTTI.BasisKod            := ���_�����_���;
  recTTI.BasisName           := ���_�����_���;
  recTTI.SpOtgrKod           := ���_���ᮡ���_���;
  recTTI.SpOtgrName          := ���_���ᮡ���_���;
  recTTI.SpOtgrBasisKod      := ���_���ᮡ���_�����_���;
  recTTI.SpOtgrBasisName     := ���_���ᮡ���_�����_���;
  recTTI.SpTransKod          := ���_���ᮡ���_���ᮡ�࠭_���;
  recTTI.SpTransName         := ���_���ᮡ���_���ᮡ�࠭_���;
  recTTI.PunktRNormRazgr     := ���_�㭪�_��ଠ⨢_�����;
  recTTI.PunktRNormMar       := ���_�㭪�_�����_�������;
  recTTI.PunktRName          := ���_�㭪�_���;
  recTTI.PunktRRasst         := ���_�㭪�_�����;
  recTTI.PunktRCountryKod    := ���_�㭪�_������_���;
  recTTI.PunktRCountryName   := ���_�㭪�_������_���;
  recTTI.PunktRCountryNal    := ���_�㭪�_������_������;
  recTTI.PunktRSityKod       := ���_�㭪�_�����_���;
  recTTI.PunktRSityName      := ���_�㭪�_�����_���;
  recTTI.PunktRSityTel       := ���_�㭪�_�����_���;
  recTTI.PunktRSCountryKod   := ���_�㭪�_�����_������_���;
  recTTI.PunktRSCountryName  := ���_�㭪�_�����_������_���;
  recTTI.PunktRSCountryNal   := ���_�㭪�_�����_������_������;
  recTTI.PunktRAddr          := ���_�㭪�_����;
  recTTI.PunktRDateIn        := ���_�㭪�_���_�;
  recTTI.PunktRTimeIn        := ���_�㭪�_�६�_�;
  recTTI.PunktRDateOut       := ���_�㭪�_���_��;
  recTTI.PunktRTimeOut       := ���_�㭪�_�६�_��;
  recTTI.PunktRMet           := ���_�㭪�_��⮤;
  recTTI.PunktRDopName       := ���_�㭪�_���_���;
  recTTI.PunktRDopKol        := ���_�㭪�_���_�����;
  recTTI.PunktRDopTime       := ���_�㭪�_���_�६�;
  recTTI.PunktPNormRazgr     := ���_�㭪�_��ଠ⨢_����;
  recTTI.PunktPNormMar       := ���_�㭪�_�����_�������;
  recTTI.PunktPName          := ���_�㭪�_���;
  recTTI.PunktPRasst         := ���_�㭪�_�����;
  recTTI.PunktPCountryKod    := ���_�㭪�_������_���;
  recTTI.PunktPCountryName   := ���_�㭪�_������_���;
  recTTI.PunktPCountryNal    := ���_�㭪�_������_������;
  recTTI.PunktPSityKod       := ���_�㭪�_�����_���;
  recTTI.PunktPSityName      := ���_�㭪�_�����_���;
  recTTI.PunktPSityTel       := ���_�㭪�_�����_���;
  recTTI.PunktPSCountryKod   := ���_�㭪�_�����_������_���;
  recTTI.PunktPSCountryName  := ���_�㭪�_�����_������_���;
  recTTI.PunktPSCountryNal   := ���_�㭪�_�����_������_������;
  recTTI.PunktPAddr          := ���_�㭪�_����;
  recTTI.PunktPDateIn        := ���_�㭪�_���_�;
  recTTI.PunktPTimeIn        := ���_�㭪�_�६�_�;
  recTTI.PunktPDateOut       := ���_�㭪�_���_��;
  recTTI.PunktPTimeOut       := ���_�㭪�_�६�_��;
  recTTI.PunktPMet           := ���_�㭪�_��⮤;
  recTTI.PunktPDopName       := ���_�㭪�_���_���;
  recTTI.PunktPDopKol        := ���_�㭪�_���_�����;
  recTTI.PunktPDopTime       := ���_�㭪�_���_�६�;
  recTTI.Summa               := ���_�㬬�;
  recTTI.Val                 := ���_�����;
  recTTI.Putlst_Kformpl      := ���_�����_���;
  recTTI.Putlst_NPL          := ���_�����_�����;
  recTTI.Putlst_Nseria       := ���_�����_����;
  recTTI.Putlst_Nomer        := ���_�����_��፮���;
  recTTI.Putlst_DatPl        := ���_�����_��⠂뤠�;
  recTTI.Putlst_ExitDn       := ���_�����_��⠂륧��;
  recTTI.Putlst_ReturnDn     := ���_�����_��⠂�����;
  recTTI.TTNDoc_sPList       := ���_�����_�����;
  recTTI.KnDriver_TABN       := ���_����⥫�_������;
  recTTI.KnDriver_Name       := ���_����⥫�_���;
  recTTI.KnDriver_Klassv     := ���_����⥫�_�����;
  recTTI.KnDriver_KatgA      := ���_����⥫�_���A;
  recTTI.KnDriver_KatgB      := ���_����⥫�_���B;
  recTTI.KnDriver_KatgC      := ���_����⥫�_���C;
  recTTI.KnDriver_KatgD      := ���_����⥫�_���D;
  recTTI.KnDriver_KatgE      := ���_����⥫�_���E;
  recTTI.KnDriver_StagVd     := ���_����⥫�_�⠦;
  recTTI.KnDriver_Nudov      := ���_����⥫�_����������;
  recTTI.KnForwarder_TABN    := ���_��ᯥ����_������;
  recTTI.KnForwarder_Name    := ���_��ᯥ����_���;
  recTTI.KnForwarder_Klassv  := ���_��ᯥ����_�����;
  recTTI.KnForwarder_KatgA   := ���_��ᯥ����_���A;
  recTTI.KnForwarder_KatgB   := ���_��ᯥ����_���B;
  recTTI.KnForwarder_KatgC   := ���_��ᯥ����_���C;
  recTTI.KnForwarder_KatgD   := ���_��ᯥ����_���D;
  recTTI.KnForwarder_KatgE   := ���_��ᯥ����_���E;
  recTTI.KnForwarder_StagVd  := ���_��ᯥ����_�⠦;
  recTTI.KnForwarder_Nudov   := ���_��ᯥ����_����������;
  recTTI.Transp_Nomer        := ���_���_�����;
  recTTI.Transp_Marka        := ���_���_��ઠ;
  recTTI.Transp_Volume       := ���_���_��ꥬ�;
  recTTI.Transp_Passport     := ���_���_�������;
  recTTI.Transp_nPassp       := ���_���_������;
  recTTI.Transp_INNUM        := ���_���_��������;
  recTTI.Transp_Godv         := ���_���_��⠂��᪠;
  recTTI.Transp_GarNom       := ���_���_�������ࠦ;
  recTTI.Transp_Nomdvig      := ���_���_����������⥫�;
  recTTI.Transp_Nomchas      := ���_���_���������;
  recTTI.Transp_ForceLs      := ���_���_��魮��싑;
  recTTI.Transp_NomKuz       := ���_���_������㧮�;
  recTTI.Transp_GruzPod      := ���_���_���;
  recTTI.Transp_Weight       := ���_���_���;
  recTTI.Transp1_Nomer       := ���_��楯1_�����;
  recTTI.Transp1_Marka       := ���_��楯1_��ઠ;
  recTTI.Transp1_Volume      := ���_��楯1_��ꥬ�;
  recTTI.Transp1_Passport    := ���_��楯1_�������;
  recTTI.Transp1_nPassp      := ���_��楯1_������;
  recTTI.Transp1_INNUM       := ���_��楯1_��������;
  recTTI.Transp1_Godv        := ���_��楯1_��⠂��᪠;
  recTTI.Transp1_GarNom      := ���_��楯1_�������ࠦ;
  recTTI.Transp1_Nomdvig     := ���_��楯1_����������⥫�;
  recTTI.Transp1_Nomchas     := ���_��楯1_���������;
  recTTI.Transp1_ForceLs     := ���_��楯1_��魮��싑;
  recTTI.Transp1_NomKuz      := ���_��楯1_������㧮�;
  recTTI.Transp1_GruzPod     := ���_��楯1_���;
  recTTI.Transp1_Weight      := ���_��楯1_���;
  recTTI.Transp2_Nomer       := ���_��楯2_�����;
  recTTI.Transp2_Marka       := ���_��楯2_��ઠ;
  recTTI.Transp2_Volume      := ���_��楯2_��ꥬ�;
  recTTI.Transp2_Passport    := ���_��楯2_�������;
  recTTI.Transp2_nPassp      := ���_��楯2_������;
  recTTI.Transp2_INNUM       := ���_��楯2_��������;
  recTTI.Transp2_Godv        := ���_��楯2_��⠂��᪠;
  recTTI.Transp2_GarNom      := ���_��楯2_�������ࠦ;
  recTTI.Transp2_Nomdvig     := ���_��楯2_����������⥫�;
  recTTI.Transp2_Nomchas     := ���_��楯2_���������;
  recTTI.Transp2_ForceLs     := ���_��楯2_��魮��싑;
  recTTI.Transp2_NomKuz      := ���_��楯2_������㧮�;
  recTTI.Transp2_GruzPod     := ���_��楯2_���;
  recTTI.Transp2_Weight      := ���_��楯2_���;
  recTTI.Transp3_Nomer       := ���_��楯3_�����;
  recTTI.Transp3_Marka       := ���_��楯3_��ઠ;
  recTTI.Transp3_Volume      := ���_��楯3_��ꥬ�;
  recTTI.Transp3_Passport    := ���_��楯3_�������;
  recTTI.Transp3_nPassp      := ���_��楯3_������;
  recTTI.Transp3_INNUM       := ���_��楯3_��������;
  recTTI.Transp3_Godv        := ���_��楯3_��⠂��᪠;
  recTTI.Transp3_GarNom      := ���_��楯3_�������ࠦ;
  recTTI.Transp3_Nomdvig     := ���_��楯3_����������⥫�;
  recTTI.Transp3_Nomchas     := ���_��楯3_���������;
  recTTI.Transp3_ForceLs     := ���_��楯3_��魮��싑;
  recTTI.Transp3_NomKuz      := ���_��楯3_������㧮�;
  recTTI.Transp3_GruzPod     := ���_��楯3_���;
  recTTI.Transp3_Weight      := ���_��楯3_���;

  MemTblSopr.MPrnSoprTTI.Buffer := recTTI;
  MemTblSopr.Insert Current MPrnSoprTTI;

//------------------------------------------------------------------------------
! ��ਡ��� KatSopr
  ClearAdvRecord(recAttr);
  recAttr.KatSoprNRec         := recNakl.KatSoprNRec;
  recAttr.SpSoprNRec          := 0;
  recAttr.wTable              := coKatSopr;
  recAttr.AttrVal[1]          := ���1_���;
  recAttr.AttrVal[2]          := ���2_���;
  recAttr.AttrVal[3]          := ���3_���;
  recAttr.AttrVal[4]          := ���4_���;
  recAttr.AttrVal[5]          := ���5_���;
  recAttr.AttrVal[6]          := ���6_���;
  recAttr.AttrVal[7]          := ���7_���;
  recAttr.AttrVal[8]          := ���8_���;
  recAttr.AttrVal[9]          := ���9_���;
  recAttr.AttrVal[10]         := ���10_���;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;
  MemTblSopr.Insert Current MPrnSoprAttr;

//------------------------------------------------------------------------------
! ��ਡ��� KatOrg
  ClearAdvRecord(recAttr);
  recAttr.KatSoprNRec         := recNakl.KatSoprNRec;
  recAttr.SpSoprNRec          := 0;
  recAttr.wTable              := coKatOrg;
  recAttr.AttrVal[1]          := ���1_���;
  recAttr.AttrVal[2]          := ���2_���;
  recAttr.AttrVal[3]          := ���3_���;
  recAttr.AttrVal[4]          := ���4_���;
  recAttr.AttrVal[5]          := ���5_���;
  recAttr.AttrVal[6]          := ���6_���;
  recAttr.AttrVal[7]          := ���7_���;
  recAttr.AttrVal[8]          := ���8_���;
  recAttr.AttrVal[9]          := ���9_���;
  recAttr.AttrVal[10]         := ���10_���;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;
  MemTblSopr.Insert Current MPrnSoprAttr;


//------------------------------------------------------------------------------
! ��ਡ��� TTNDOC
  ClearAdvRecord(recAttr);
  recAttr.KatSoprNRec         := recNakl.KatSoprNRec;
  recAttr.SpSoprNRec          := 0;
  recAttr.wTable              := coTtnDoc;
  recAttr.AttrVal[1]          := ���1_��;
  recAttr.AttrVal[2]          := ���2_��;
  recAttr.AttrVal[3]          := ���3_��;
  recAttr.AttrVal[4]          := ���4_��;
  recAttr.AttrVal[5]          := ���5_��;
  recAttr.AttrVal[6]          := ���6_��;
  recAttr.AttrVal[7]          := ���7_��;
  recAttr.AttrVal[8]          := ���8_��;
  recAttr.AttrVal[9]          := ���9_��;
  recAttr.AttrVal[10]         := ���10_��;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;
  MemTblSopr.Insert Current MPrnSoprAttr;


//------------------------------------------------------------------------------
! �ନ஢���� MPrnSoprOrg
! ���⠢騪 - 1
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 1;
  recOrg.KatOrg_Name         := ���⠢騪;
  recOrg.KatOrg_TipOrg       := ���⠢騪���;
  recOrg.KatOrg_Addr         := ���⠢騪_����;
  recOrg.KatOrg_OKPO         := ���⠢騪_����;
  recOrg.KatOrg_OKONH        := ���⠢騪_�����;
  recOrg.KatOrg_TEL          := ���⠢騪_���;
  recOrg.KatOrg_CONTAKT      := ���⠢騪_���∭�;
  recOrg.KatOrg_EMAIL        := ���⠢騪_Email;
  recOrg.PodrInfo_OKATO      := ���⠢騪_OKATO;
  recOrg.PodrInfo_KBK        := ���⠢騪_KBK;
  recOrg.PodrInfo_OGRN       := ���⠢騪_OGRN;
  recOrg.PodrInfo_REGNO      := ���⠢騪_������_�_��;
  recOrg.PodrInfo_POlE3      := ���⠢騪_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ���⠢騪_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ���⠢騪_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ���⠢騪_���_���⥫쭮��;
  recOrg.KatState_KOD        := ���⠢騪_�������_���;
  recOrg.KatState_Name       := ���⠢騪_������_���;
  recOrg.KatState_IsNal      := ���⠢騪_������_������;
  recOrg.KatCity_KOD         := ���⠢騪_�����_���;
  recOrg.KatCity_Name        := ���⠢騪_�����_���;
  recOrg.KatCity_TEL         := ���⠢騪_�����_���;
  recOrg.KatStateS_KOD       := ���⠢騪_�����_������_���;
  recOrg.KatStateS_Name      := ���⠢騪_�����_������_���;
  recOrg.KatStateS_IsNal     := ���⠢騪_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ���⠢騪_����������;
  recOrg.KatOrg_UNN          := ���⠢騪���;
  recOrg.KatOrg_KODPLAT      := ���⠢騪���;
  recOrg.KatB_Name           := ���⠢騪_����_���;
  recOrg.KatB_Remark         := ���⠢騪_����_������਩;
  recOrg.KatB_Addr           := ���⠢騪_����_����;
  recOrg.KatB_MFO1           := ���⠢騪_����_��;
  recOrg.KatB_MFO2           := ���⠢騪_����_���;
  recOrg.KatB_Schet1         := ���⠢騪_����_���;
  recOrg.KatB_Schet2         := ���⠢騪_����_���_���;
  recOrg.KatB_Schet3         := ���⠢騪_����_���_����;
  recOrg.KatB_TipSchet       := ���⠢騪_����_���_���;
  recOrg.KatB_Aktiv          := ���⠢騪_����_���_���;
  recOrg.KatOrg_UrAddr       := ���⠢騪_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;

//******************************************************************************
! ��㧮��ࠢ�⥫� - 2
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 2;
  recOrg.KatOrg_Name         := ��㧮��ࠢ�⥫�;
  recOrg.KatOrg_TipOrg       := ��㧮��ࠢ�⥫슮�;
  recOrg.KatOrg_Addr         := ��㧮��ࠢ�⥫�_����;
  recOrg.KatOrg_OKPO         := ��㧮��ࠢ�⥫�_����;
  recOrg.KatOrg_OKONH        := ��㧮��ࠢ�⥫�_�����;
  recOrg.KatOrg_TEL          := ��㧮��ࠢ�⥫�_���;
  recOrg.KatOrg_CONTAKT      := ��㧮��ࠢ�⥫�_���∭�;
  recOrg.KatOrg_EMAIL        := ��㧮��ࠢ�⥫�_Email;
  recOrg.PodrInfo_OKATO      := ��㧮��ࠢ�⥫�_OKATO;
  recOrg.PodrInfo_KBK        := ��㧮��ࠢ�⥫�_KBK;
  recOrg.PodrInfo_OGRN       := ��㧮��ࠢ�⥫�_OGRN;
  recOrg.PodrInfo_REGNO      := ��㧮��ࠢ�⥫�_������_�_��;
  recOrg.PodrInfo_POlE3      := ��㧮��ࠢ�⥫�_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ��㧮��ࠢ�⥫�_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ��㧮��ࠢ�⥫�_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ��㧮��ࠢ�⥫�_���_���⥫쭮��;
  recOrg.KatState_KOD        := ��㧮��ࠢ�⥫�_�������_���;
  recOrg.KatState_Name       := ��㧮��ࠢ�⥫�_������_���;
  recOrg.KatState_IsNal      := ��㧮��ࠢ�⥫�_������_������;
  recOrg.KatCity_KOD         := ��㧮��ࠢ�⥫�_�����_���;
  recOrg.KatCity_Name        := ��㧮��ࠢ�⥫�_�����_���;
  recOrg.KatCity_TEL         := ��㧮��ࠢ�⥫�_�����_���;
  recOrg.KatStateS_KOD       := ��㧮��ࠢ�⥫�_�����_������_���;
  recOrg.KatStateS_Name      := ��㧮��ࠢ�⥫�_�����_������_���;
  recOrg.KatStateS_IsNal     := ��㧮��ࠢ�⥫�_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ��㧮��ࠢ�⥫�_����������;
  recOrg.KatOrg_UNN          := oPrnSoprFun.GetOrgUNN(��㧮��ࠢ�⥫�, ��㧮��ࠢ�⥫쓍�, ���⠢騪���);
  recOrg.KatOrg_KODPLAT      := ��㧮��ࠢ�⥫슏�;
  recOrg.KatB_Name           := ��㧮��ࠢ�⥫�_����_���;
  recOrg.KatB_Remark         := ��㧮��ࠢ�⥫�_����_������਩;
  recOrg.KatB_Addr           := ��㧮��ࠢ�⥫�_����_����;
  recOrg.KatB_MFO1           := ��㧮��ࠢ�⥫�_����_��;
  recOrg.KatB_MFO2           := ��㧮��ࠢ�⥫�_����_���;
  recOrg.KatB_Schet1         := ��㧮��ࠢ�⥫�_����_���;
  recOrg.KatB_Schet2         := ��㧮��ࠢ�⥫�_����_���_���;
  recOrg.KatB_Schet3         := ��㧮��ࠢ�⥫�_����_���_����;
  recOrg.KatB_TipSchet       := ��㧮��ࠢ�⥫�_����_���_���;
  recOrg.KatB_Aktiv          := ��㧮��ࠢ�⥫�_����_���_���;
  recOrg.KatOrg_UrAddr       := ��㧮��ࠢ�⥫�_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;


//******************************************************************************
! ��㧮�����⥫� - 3
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 3;
  recOrg.KatOrg_Name         := ��㧮�����⥫�;
  recOrg.KatOrg_TipOrg       := ��㧮�����⥫슮�;
  recOrg.KatOrg_Addr         := ��㧮�����⥫�_����;
  recOrg.KatOrg_OKPO         := ��㧮�����⥫�_����;
  recOrg.KatOrg_OKONH        := ��㧮�����⥫�_�����;
  recOrg.KatOrg_TEL          := ��㧮�����⥫�_���;
  recOrg.KatOrg_CONTAKT      := ��㧮�����⥫�_���∭�;
  recOrg.KatOrg_EMAIL        := ��㧮�����⥫�_Email;
  recOrg.PodrInfo_OKATO      := ��㧮�����⥫�_OKATO;
  recOrg.PodrInfo_KBK        := ��㧮�����⥫�_KBK;
  recOrg.PodrInfo_OGRN       := ��㧮�����⥫�_OGRN;
  recOrg.PodrInfo_REGNO      := ��㧮�����⥫�_������_�_��;
  recOrg.PodrInfo_POlE3      := ��㧮�����⥫�_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ��㧮�����⥫�_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ��㧮�����⥫�_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ��㧮�����⥫�_���_���⥫쭮��;
  recOrg.KatState_KOD        := ��㧮�����⥫�_�������_���;
  recOrg.KatState_Name       := ��㧮�����⥫�_������_���;
  recOrg.KatState_IsNal      := ��㧮�����⥫�_������_������;
  recOrg.KatCity_KOD         := ��㧮�����⥫�_�����_���;
  recOrg.KatCity_Name        := ��㧮�����⥫�_�����_���;
  recOrg.KatCity_TEL         := ��㧮�����⥫�_�����_���;
  recOrg.KatStateS_KOD       := ��㧮�����⥫�_�����_������_���;
  recOrg.KatStateS_Name      := ��㧮�����⥫�_�����_������_���;
  recOrg.KatStateS_IsNal     := ��㧮�����⥫�_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ��㧮�����⥫�_����������;
  recOrg.KatOrg_UNN          := oPrnSoprFun.GetOrgUNN(��㧮�����⥫�, ��㧮�����⥫쓍�, ���⠢騪���);
  recOrg.KatOrg_KODPLAT      := ��㧮�����⥫슏�;
  recOrg.KatB_Name           := ��㧮�����⥫�_����_���;
  recOrg.KatB_Remark         := ��㧮�����⥫�_����_������਩;
  recOrg.KatB_Addr           := ��㧮�����⥫�_����_����;
  recOrg.KatB_MFO1           := ��㧮�����⥫�_����_��;
  recOrg.KatB_MFO2           := ��㧮�����⥫�_����_���;
  recOrg.KatB_Schet1         := ��㧮�����⥫�_����_���;
  recOrg.KatB_Schet2         := ��㧮�����⥫�_����_���_���;
  recOrg.KatB_Schet3         := ��㧮�����⥫�_����_���_����;
  recOrg.KatB_TipSchet       := ��㧮�����⥫�_����_���_���;
  recOrg.KatB_Aktiv          := ��㧮�����⥫�_����_���_���;
  recOrg.KatOrg_UrAddr       := ��㧮�����⥫�_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;

//******************************************************************************
! �����⥫� - 4
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 4;
  recOrg.KatOrg_Name         := �����⥫�;
  recOrg.KatOrg_TipOrg       := �����⥫슮�;
  recOrg.KatOrg_Addr         := �����⥫�_����;
  recOrg.KatOrg_OKPO         := �����⥫�_����;
  recOrg.KatOrg_OKONH        := �����⥫�_�����;
  recOrg.KatOrg_TEL          := �����⥫�_���;
  recOrg.KatOrg_CONTAKT      := �����⥫�_���∭�;
  recOrg.KatOrg_EMAIL        := �����⥫�_Email;
  recOrg.PodrInfo_OKATO      := �����⥫�_OKATO;
  recOrg.PodrInfo_KBK        := �����⥫�_KBK;
  recOrg.PodrInfo_OGRN       := �����⥫�_OGRN;
  recOrg.PodrInfo_REGNO      := �����⥫�_������_�_��;
  recOrg.PodrInfo_POlE3      := �����⥫�_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := �����⥫�_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := �����⥫�_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := �����⥫�_���_���⥫쭮��;
  recOrg.KatState_KOD        := �����⥫�_�������_���;
  recOrg.KatState_Name       := �����⥫�_������_���;
  recOrg.KatState_IsNal      := �����⥫�_������_������;
  recOrg.KatCity_KOD         := �����⥫�_�����_���;
  recOrg.KatCity_Name        := �����⥫�_�����_���;
  recOrg.KatCity_TEL         := �����⥫�_�����_���;
  recOrg.KatStateS_KOD       := �����⥫�_�����_������_���;
  recOrg.KatStateS_Name      := �����⥫�_�����_������_���;
  recOrg.KatStateS_IsNal     := �����⥫�_�����_������_������;
  recOrg.KatOrg_CorpoIn      := �����⥫�_����������;
  recOrg.KatOrg_UNN          := �����⥫쓍�;
  recOrg.KatOrg_KODPLAT      := �����⥫슏�;
  recOrg.KatB_Name           := �����⥫�_����_���;
  recOrg.KatB_Remark         := �����⥫�_����_������਩;
  recOrg.KatB_Addr           := �����⥫�_����_����;
  recOrg.KatB_MFO1           := �����⥫�_����_��;
  recOrg.KatB_MFO2           := �����⥫�_����_���;
  recOrg.KatB_Schet1         := �����⥫�_����_���;
  recOrg.KatB_Schet2         := �����⥫�_����_���_���;
  recOrg.KatB_Schet3         := �����⥫�_����_���_����;
  recOrg.KatB_TipSchet       := �����⥫�_����_���_���;
  recOrg.KatB_Aktiv          := �����⥫�_����_���_���;
  recOrg.KatOrg_UrAddr       := �����⥫�_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;

//******************************************************************************
! ���⥫�騪 - 5
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 5;
  recOrg.KatOrg_Name         := ���⥫�騪;
  recOrg.KatOrg_TipOrg       := ���⥫�騪���;
  recOrg.KatOrg_Addr         := ���⥫�騪_����;
  recOrg.KatOrg_OKPO         := ���⥫�騪_����;
  recOrg.KatOrg_OKONH        := ���⥫�騪_�����;
  recOrg.KatOrg_TEL          := ���⥫�騪_���;
  recOrg.KatOrg_CONTAKT      := ���⥫�騪_���∭�;
  recOrg.KatOrg_EMAIL        := ���⥫�騪_Email;
  recOrg.PodrInfo_OKATO      := ���⥫�騪_OKATO;
  recOrg.PodrInfo_KBK        := ���⥫�騪_KBK;
  recOrg.PodrInfo_OGRN       := ���⥫�騪_OGRN;
  recOrg.PodrInfo_REGNO      := ���⥫�騪_������_�_��;
  recOrg.PodrInfo_POlE3      := ���⥫�騪_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ���⥫�騪_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ���⥫�騪_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ���⥫�騪_���_���⥫쭮��;
  recOrg.KatState_KOD        := ���⥫�騪_�������_���;
  recOrg.KatState_Name       := ���⥫�騪_������_���;
  recOrg.KatState_IsNal      := ���⥫�騪_������_������;
  recOrg.KatCity_KOD         := ���⥫�騪_�����_���;
  recOrg.KatCity_Name        := ���⥫�騪_�����_���;
  recOrg.KatCity_TEL         := ���⥫�騪_�����_���;
  recOrg.KatStateS_KOD       := ���⥫�騪_�����_������_���;
  recOrg.KatStateS_Name      := ���⥫�騪_�����_������_���;
  recOrg.KatStateS_IsNal     := ���⥫�騪_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ���⥫�騪_����������;
  recOrg.KatOrg_UNN          := ���⥫�騪���;
  recOrg.KatOrg_KODPLAT      := ���⥫�騪���;
  recOrg.KatB_Name           := ���⥫�騪_����_���;
  recOrg.KatB_Remark         := ���⥫�騪_����_������਩;
  recOrg.KatB_Addr           := ���⥫�騪_����_����;
  recOrg.KatB_MFO1           := ���⥫�騪_����_��;
  recOrg.KatB_MFO2           := ���⥫�騪_����_���;
  recOrg.KatB_Schet1         := ���⥫�騪_����_���;
  recOrg.KatB_Schet2         := ���⥫�騪_����_���_���;
  recOrg.KatB_Schet3         := ���⥫�騪_����_���_����;
  recOrg.KatB_TipSchet       := ���⥫�騪_����_���_���;
  recOrg.KatB_Aktiv          := ���⥫�騪_����_���_���;
  recOrg.KatOrg_UrAddr       := ���⥫�騪_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;


//******************************************************************************
! �����稪_���⥫�騪 - 6
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 6;
  recOrg.KatOrg_Name         := �����稪_���⥫�騪;
  recOrg.KatOrg_TipOrg       := �����稪_���⥫�騪���;
  recOrg.KatOrg_Addr         := �����稪_���⥫�騪_����;
  recOrg.KatOrg_OKPO         := �����稪_���⥫�騪_����;
  recOrg.KatOrg_OKONH        := �����稪_���⥫�騪_�����;
  recOrg.KatOrg_TEL          := �����稪_���⥫�騪_���;
  recOrg.KatOrg_CONTAKT      := �����稪_���⥫�騪_���∭�;
  recOrg.KatOrg_EMAIL        := �����稪_���⥫�騪_Email;
  recOrg.PodrInfo_OKATO      := �����稪_���⥫�騪_OKATO;
  recOrg.PodrInfo_KBK        := �����稪_���⥫�騪_KBK;
  recOrg.PodrInfo_OGRN       := �����稪_���⥫�騪_OGRN;
  recOrg.PodrInfo_REGNO      := �����稪_���⥫�騪_������_�_��;
  recOrg.PodrInfo_POlE3      := �����稪_���⥫�騪_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := �����稪_���⥫�騪_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := �����稪_���⥫�騪_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := �����稪_���⥫�騪_���_���⥫쭮��;
  recOrg.KatState_KOD        := �����稪_���⥫�騪_�������_���;
  recOrg.KatState_Name       := �����稪_���⥫�騪_������_���;
  recOrg.KatState_IsNal      := �����稪_���⥫�騪_������_������;
  recOrg.KatCity_KOD         := �����稪_���⥫�騪_�����_���;
  recOrg.KatCity_Name        := �����稪_���⥫�騪_�����_���;
  recOrg.KatCity_TEL         := �����稪_���⥫�騪_�����_���;
  recOrg.KatStateS_KOD       := �����稪_���⥫�騪_�����_������_���;
  recOrg.KatStateS_Name      := �����稪_���⥫�騪_�����_������_���;
  recOrg.KatStateS_IsNal     := �����稪_���⥫�騪_�����_������_������;
  recOrg.KatOrg_CorpoIn      := �����稪_���⥫�騪_����������;
  recOrg.KatOrg_UNN          := oPrnSoprFun.GetOrgUNN(�����稪_���⥫�騪, �����稪_���⥫�騪���, ���⠢騪���);
  recOrg.KatOrg_KODPLAT      := �����稪_���⥫�騪���;
  recOrg.KatB_Name           := �����稪_���⥫�騪;
  recOrg.KatB_Remark         := �����稪_���⥫�騪_����_������਩;
  recOrg.KatB_Addr           := �����稪_���⥫�騪_����_����;
  recOrg.KatB_MFO1           := �����稪_���⥫�騪_����_��;
  recOrg.KatB_MFO2           := �����稪_���⥫�騪_����_���;
  recOrg.KatB_Schet1         := �����稪_���⥫�騪_����_���;
  recOrg.KatB_Schet2         := �����稪_���⥫�騪_����_���_���;
  recOrg.KatB_Schet3         := �����稪_���⥫�騪_����_���_����;
  recOrg.KatB_TipSchet       := �����稪_���⥫�騪_����_���_���;
  recOrg.KatB_Aktiv          := �����稪_���⥫�騪_����_���_���;
  recOrg.KatOrg_UrAddr       := �����稪_���⥫�騪_������;

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;


//******************************************************************************
! ���_��⮎� - 7
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 7;
  recOrg.KatOrg_Name         := ���_��⮎�_���;
  recOrg.KatOrg_TipOrg       := ���_��⮎�_���;
  recOrg.KatOrg_Addr         := ���_��⮎�_����;
  recOrg.KatOrg_OKPO         := ���_��⮎�_����;
  recOrg.KatOrg_OKONH        := ���_��⮎�_�����;
  recOrg.KatOrg_TEL          := ���_��⮎�_���;
  recOrg.KatOrg_CONTAKT      := ���_��⮎�_���∭�;
  recOrg.KatOrg_EMAIL        := ���_��⮎�_Email;
  recOrg.PodrInfo_OKATO      := ���_��⮎�_OKATO;
  recOrg.PodrInfo_KBK        := ���_��⮎�_KBK;
  recOrg.PodrInfo_OGRN       := ���_��⮎�_OGRN;
  recOrg.PodrInfo_REGNO      := ���_��⮎�_������_�_��;
  recOrg.PodrInfo_POlE3      := ���_��⮎�_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ���_��⮎�_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ���_��⮎�_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ���_��⮎�_���_���⥫쭮��;
  recOrg.KatState_KOD        := ���_��⮎�_������_���;
  recOrg.KatState_Name       := ���_��⮎�_������_���;
  recOrg.KatState_IsNal      := ���_��⮎�_������_������;
  recOrg.KatCity_KOD         := ���_��⮎�_�����_���;
  recOrg.KatCity_Name        := ���_��⮎�_�����_���;
  recOrg.KatCity_TEL         := ���_��⮎�_�����_���;
  recOrg.KatStateS_KOD       := ���_��⮎�_�����_������_���;
  recOrg.KatStateS_Name      := ���_��⮎�_�����_������_���;
  recOrg.KatStateS_IsNal     := ���_��⮎�_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ���_��⮎�_����������;
  recOrg.KatOrg_UNN          := ���_��⮎�_���;
  recOrg.KatOrg_KODPLAT      := ���_��⮎�_���;
  recOrg.KatB_Name           := ���_��⮎�_����_���;
  recOrg.KatB_Remark         := ���_��⮎�_����_�������਩;
  recOrg.KatB_Addr           := ���_��⮎�_����_����;
  recOrg.KatB_MFO1           := ���_��⮎�_����_��;
  recOrg.KatB_MFO2           := ���_��⮎�_����_���;
  recOrg.KatB_Schet1         := ���_��⮎�_����_���;
  recOrg.KatB_Schet2         := ���_��⮎�_����_���_���;
  recOrg.KatB_Schet3         := ���_��⮎�_����_���_����;
  recOrg.KatB_TipSchet       := ���_��⮎�_����_���_���;
  recOrg.KatB_Aktiv          := ���_��⮎�_����_���_���;
  recOrg.KatOrg_UrAddr       := '';

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;



//******************************************************************************
! ���_�㭪�_�� - 8
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 8;
  recOrg.KatOrg_Name         := ���_�㭪�_��_���;
  recOrg.KatOrg_TipOrg       := ���_�㭪�_��_���;
  recOrg.KatOrg_Addr         := ���_�㭪�_��_����;
  recOrg.KatOrg_OKPO         := ���_�㭪�_��_����;
  recOrg.KatOrg_OKONH        := ���_�㭪�_��_�����;
  recOrg.KatOrg_TEL          := ���_�㭪�_��_���;
  recOrg.KatOrg_CONTAKT      := ���_�㭪�_��_���∭�;
  recOrg.KatOrg_EMAIL        := ���_�㭪�_��_Email;
  recOrg.PodrInfo_OKATO      := ���_�㭪�_��_OKATO;
  recOrg.PodrInfo_KBK        := ���_�㭪�_��_KBK;
  recOrg.PodrInfo_OGRN       := ���_�㭪�_��_OGRN;
  recOrg.PodrInfo_REGNO      := ���_�㭪�_��_������_�_��;
  recOrg.PodrInfo_POlE3      := ���_�㭪�_��_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ���_�㭪�_��_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ���_�㭪�_��_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ���_�㭪�_��_���_���⥫쭮��;
  recOrg.KatState_KOD        := ���_�㭪�_��_������_���;
  recOrg.KatState_Name       := ���_�㭪�_��_������_���;
  recOrg.KatState_IsNal      := ���_�㭪�_��_������_������;
  recOrg.KatCity_KOD         := ���_�㭪�_��_�����_���;
  recOrg.KatCity_Name        := ���_�㭪�_��_�����_���;
  recOrg.KatCity_TEL         := ���_�㭪�_��_�����_���;
  recOrg.KatStateS_KOD       := ���_�㭪�_��_�����_������_���;
  recOrg.KatStateS_Name      := ���_�㭪�_��_�����_������_���;
  recOrg.KatStateS_IsNal     := ���_�㭪�_��_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ���_�㭪�_��_����������;
  recOrg.KatOrg_UNN          := ���_�㭪�_��_���;
  recOrg.KatOrg_KODPLAT      := ���_�㭪�_��_���;
  recOrg.KatB_Name           := ���_�㭪�_��_����_���;
  recOrg.KatB_Remark         := ���_�㭪�_��_����_�������਩;
  recOrg.KatB_Addr           := ���_�㭪�_��_����_����;
  recOrg.KatB_MFO1           := ���_�㭪�_��_����_��;
  recOrg.KatB_MFO2           := ���_�㭪�_��_����_���;
  recOrg.KatB_Schet1         := ���_�㭪�_��_����_���;
  recOrg.KatB_Schet2         := ���_�㭪�_��_����_���_���;
  recOrg.KatB_Schet3         := ���_�㭪�_��_����_���_����;
  recOrg.KatB_TipSchet       := ���_�㭪�_��_����_���_���;
  recOrg.KatB_Aktiv          := ���_�㭪�_��_����_���_���;
  recOrg.KatOrg_UrAddr       := '';

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;


//******************************************************************************
! ���_�㭪�_�� - 9
  ClearAdvRecord(recOrg);
  recOrg.KatSoprNRec         := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec          := 0;
  recOrg.PrOrg               := 9;
  recOrg.KatOrg_Name         := ���_�㭪�_��_���;
  recOrg.KatOrg_TipOrg       := ���_�㭪�_��_���;
  recOrg.KatOrg_Addr         := ���_�㭪�_��_����;
  recOrg.KatOrg_OKPO         := ���_�㭪�_��_����;
  recOrg.KatOrg_OKONH        := ���_�㭪�_��_�����;
  recOrg.KatOrg_TEL          := ���_�㭪�_��_���;
  recOrg.KatOrg_CONTAKT      := ���_�㭪�_��_���∭�;
  recOrg.KatOrg_EMAIL        := ���_�㭪�_��_Email;
  recOrg.PodrInfo_OKATO      := ���_�㭪�_��_OKATO;
  recOrg.PodrInfo_KBK        := ���_�㭪�_��_KBK;
  recOrg.PodrInfo_OGRN       := ���_�㭪�_��_OGRN;
  recOrg.PodrInfo_REGNO      := ���_�㭪�_��_������_�_��;
  recOrg.PodrInfo_POlE3      := ���_�㭪�_��_������_���客�⥫�;
  recOrg.PodrInfo_INSNA      := ���_�㭪�_��_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name       := ���_�㭪�_��_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD       := ���_�㭪�_��_���_���⥫쭮��;
  recOrg.KatState_KOD        := ���_�㭪�_��_������_���;
  recOrg.KatState_Name       := ���_�㭪�_��_������_���;
  recOrg.KatState_IsNal      := ���_�㭪�_��_������_������;
  recOrg.KatCity_KOD         := ���_�㭪�_��_�����_���;
  recOrg.KatCity_Name        := ���_�㭪�_��_�����_���;
  recOrg.KatCity_TEL         := ���_�㭪�_��_�����_���;
  recOrg.KatStateS_KOD       := ���_�㭪�_��_�����_������_���;
  recOrg.KatStateS_Name      := ���_�㭪�_��_�����_������_���;
  recOrg.KatStateS_IsNal     := ���_�㭪�_��_�����_������_������;
  recOrg.KatOrg_CorpoIn      := ���_�㭪�_��_����������;
  recOrg.KatOrg_UNN          := ���_�㭪�_��_���;
  recOrg.KatOrg_KODPLAT      := ���_�㭪�_��_���;
  recOrg.KatB_Name           := ���_�㭪�_��_����_���;
  recOrg.KatB_Remark         := ���_�㭪�_��_����_�������਩;
  recOrg.KatB_Addr           := ���_�㭪�_��_����_����;
  recOrg.KatB_MFO1           := ���_�㭪�_��_����_��;
  recOrg.KatB_MFO2           := ���_�㭪�_��_����_���;
  recOrg.KatB_Schet1         := ���_�㭪�_��_����_���;
  recOrg.KatB_Schet2         := ���_�㭪�_��_����_���_���;
  recOrg.KatB_Schet3         := ���_�㭪�_��_����_���_����;
  recOrg.KatB_TipSchet       := ���_�㭪�_��_����_���_���;
  recOrg.KatB_Aktiv          := ���_�㭪�_��_����_���_���;
  recOrg.KatOrg_UrAddr       := '';

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;
  MemTblSopr.Insert Current MPrnSoprOrg;
end.
.if tovn01
.end
.if tovn02
.end
.{
.begin
//******************************************************************************
! �ନ஢���� MPrnSoprSpNakl
! ����䨪���
  ClearAdvRecord(recSpec);
  recSpec.KatSoprNRec         := recNakl.KatSoprNRec;
  recSpec.SpSoprNRec          := ᯥ�䨪��_�४;
  recSpec.PrMc                := �ਧ���_��;
  recSpec.Npp                 := �����_��;
  recSpec.NVEND               := �����;
  recSpec.ResName             := ������_�࠭����;
  recSpec.GroupKod            := ���_��㯯�;
  recSpec.GroupName           := ��������_��㯯�;
#ifdef _TOVN_DEI
  recSpec.MCFullName          := ����������;
#end
  recSpec.MCKod               := �����;
  recSpec.MCName              := ��������;
  recSpec.DopInfo             := �������⥫쭠�_���ଠ��;
  recSpec.GrouzKod            := �����㧠;
  recSpec.GrouzClass          := ������㧠;
  recSpec.StroyObj            := ��ꥪ�_��ந⥫��⢠;
  recSpec.StZatr              := �����_�����;
  recSpec.ExciseMark          := ��樧��_��ન;
  recSpec.CustomSolution      := ⠬������_ࠧ�襭��;
  recSpec.CountryIn           := ��࠭�_�����;
  recSpec.GigienReg           := 㤮��_��ᣨ����_ॣ����樨;
  recSpec.RNakl               := P���������;
  recSpec.Descr               := ���ਯ��_ୠ�������;
  recSpec.RDescr              := ����������_�_���ਯ�஬;
  recSpec.KoefGodn            := �����樥��_�������;
  recSpec.VhodProc            := �室_��業�;
  recSpec.IshodProc           := ��室_��業�;
  recSpec.StrSkidka           := ������_��������_c�ப�;
  recSpec.ZavCena             := �����_����;
  recSpec.ZavCenaOtp          := �����_����_��;
  recSpec.ZavCenaNak          := �����_�������;
  recSpec.ZavCenaNakOtp       := �����_�������_��;
  recSpec.ZavCenaVal          := �����_�������;
  recSpec.ZavCenaValOtp       := �����_�������_��;
  recSpec.GrMKol              := ���_��������_����;
  recSpec.GrMEd               := ��_���������_��������_����;
  recSpec.GrMKoef             := �����������_��������_����;
  recSpec.KolOneGrM           := KolOneGrM;
  recSpec.McPrim              := KatMC_�ਬ�砭��;
  recSpec.McNote              := �ਬ��;
  recSpec.OtpEd               := �⯅�;
  recSpec.OtpEdKod            := �⯅�_���;
  recSpec.MaxProcNac          := �����捠業��;
  recSpec.MassaMC             := ���᠌�;
  recSpec.MassaTar            := ���᠒��댖;
  recSpec.MCVolume            := ��ꥬ��;
  recSpec.MCSizeX             := SizeX;
  recSpec.MCSizeY             := SizeY;
  recSpec.MCSizeZ             := SizeZ;
  recSpec.UthEd               := �煤;
  recSpec.KolDO               := �����;
  recSpec.KolF                := ����;
  recSpec.StrKolF             := ���_����;
  recSpec.KolOpl              := ������;
  recSpec.ProcUb              := ��擡;
  recSpec.KolUth              := �����;
  recSpec.KolVes              := ������;
  recSpec.KolOb               := �����;
  recSpec.KolBrak             := �ࠪ;
  recSpec.KolBoy              := ���;
  recSpec.CNak                := ����;
  recSpec.CNac                := ����;
  recSpec.CVal                := ����;
  recSpec.CNakUth             := ������;
  recSpec.CNacUth             := �����;
  recSpec.CValUth             := ������;
  recSpec.StNak               := �⍠�;
  recSpec.StOpl               := �⎯�;
  recSpec.StNac               := �⍠�;
  recSpec.StVal               := �₠�;
  recSpec.Nalog1              := �����1�;
  recSpec.Nalog1V             := �����1�;
  recSpec.Nalog2              := �����2�;
  recSpec.Nalog2V             := �����2�;
  recSpec.Nalog3              := �����3�;
  recSpec.Nalog3V             := �����3�;
  recSpec.Nalog4              := �����4�;
  recSpec.Nalog4V             := �����4�;
  recSpec.Nalog5              := �����5�;
  recSpec.Nalog5V             := �����5�;
  recSpec.Nalog6              := �����6�;
  recSpec.Nalog6V             := �����6�;
  recSpec.NalogOth            := �����_��稥_�;
  recSpec.NalogOthV           := �����_��稥_�;
  recSpec.CNakBN              := ������;
  recSpec.CNacBN              := ���恍;
  recSpec.CValBN              := ������;
  recSpec.CNakBNUth           := ��������;
  recSpec.CNacBNUth           := ���恍��;
  recSpec.CValBNUth           := ��������;
  recSpec.CNakSN              := ������;
  recSpec.CNacSN              := ���摍;
  recSpec.CValSN              := ������;
  recSpec.CNakSNUth           := ��������;
  recSpec.CNacSNUth           := ���摍��;
  recSpec.CValSNUth           := ��������;
  recSpec.PrNDS               := �ਧ������;
  recSpec.StNDS               := �⠢��_��ࢮ��_������;
  recSpec.CNDSNak             := �������;
  recSpec.CExciseNak          := ���樧���;
  recSpec.CProdNak            := ���த���;
  recSpec.CNalNak             := �������;
  recSpec.CNDSNac             := �������;
  recSpec.CExciseNac          := ���樧���;
  recSpec.CNProdNac           := ���த���;
  recSpec.CNalNac             := �������;
  recSpec.CNDSVal             := �������;
  recSpec.CExiseVal           := ���樧���;
  recSpec.CNProdVal           := ���த���;
  recSpec.CNalVal             := �������;
  recSpec.StNakBN             := �⍠���;
  recSpec.StNacBN0            := �⍠恍0;
  recSpec.StValBN             := �₠���;
  recSpec.StNakSN             := �⍠���;
  recSpec.StNacSN0            := �⍠摍0;
  recSpec.StValSN             := �₠���;
  recSpec.StNDSNak            := �⍄����;
  recSpec.StExciseNak         := �‪樧���;
  recSpec.StNProdNak          := �⍏த���;
  recSpec.StNalNak            := �⍀����;
  recSpec.StNDSNac0           := �⍄����0;
  recSpec.StExciseNac         := �‪樧���;
  recSpec.StNProdNac          := �⍏த���;
  recSpec.StNalNac            := �⍀����;
  recSpec.StNDSVal            := �⍄����;
  recSpec.StExciseVal         := �‪樧���;
  recSpec.StNProdVal          := �⍏த���;
  recSpec.StNalVal            := �⍀����;
  recSpec.CenaDO              := ������;
  recSpec.SummaDO             := �㬬���;
  recSpec.Kol_DO              := ���_��;
  recSpec.Kol_DOOpl           := ���_��_���;
  recSpec.ProcNDS             := �����;
  recSpec.ProcExcise          := ����樧;
  recSpec.ProcNProd           := ����த;
  recSpec.ProcNal             := �����;
  recSpec.Volume              := ��ꥬ;
  recSpec.Plotn               := ���⭮���;
  recSpec.Temper              := ���������;
  recSpec.GroupParty          := ��㯯�_���⨨;
  recSpec.PartyName           := �����;
  recSpec.PartyPrim           := KatParty_�ਬ�砭��;
  recSpec.PartyZavCena        := ����_����⮢�⥫�;
  recSpec.PartyZavCenaV       := ����_����⮢�⥫����;
  recSpec.GrouzDoc            := �_��㧮�_᫥�_���;
  recSpec.GrouzDocDop         := �_��㧮�_᫥�_���_���;
  recSpec.GrouzDocDop2        := �_��㧮�_᫥�_���_���2;
  recSpec.CertNomer           := �����_���䨪��;
  recSpec.CertDate            := ���_���䨪��;
  recSpec.CertWho             := �⮢뤠�_���䨪��;
  recSpec.PartyOrg            := �ந�����⥫�_���⨨;
  recSpec.PartyCountry        := ��࠭�_�ந�����⥫�_���⨨;
  recSpec.PartyAttr           := ��ਡ��_���⨨_��᫮;
  recSpec.PartyDateAnaliz     := ���_�������;
  recSpec.PartyNumAnaliz      := �����_�������;
  recSpec.PartyVal            := �����_���⨨;
  recSpec.PartyKodVal         := ���������_���⨨;
  recSpec.PartySrokGodn       := �ப_�������;
  recSpec.PartyTimeCreate     := �६�_ᮧ�����;
  recSpec.PartyTimeGodn       := �६�_�������;
  recSpec.CenaOrd             := ����_�थ�_���;
  recSpec.CenaOrdVal          := ����_�थ�_���;
  recSpec.AltEd               := ����ୠ⨢���_������_��������;
  recSpec.AltEd2              := ����ୠ⨢���_������_ᮮ⭮襭��;
#ifdef _TOVN_DEI
  recSpec.DEIName             := ���_����;
  recSpec.DEIKol              := ���_���;
  recSpec.DEICena             := ���_����;
! ����� ᯥ�䨪�樨 ��� ���
  recSpec.MCFullName2         := ����������2;
#end
  recSpec.MCName2             := ��������2;
  recSpec.MCKod2              := �����2;
  recSpec.MCVolume2           := ��ꥬ2;
  recSpec.MCPlot2             := ���⭮���2;
  recSpec.KolF2               := ����2;
  recSpec.KolBrak2            := �ࠪ2;
  recSpec.KolBoy2             := ���2;
  recSpec.CNac2               := ����2;
  recSpec.CNDSNac2            := �������2;
  recSpec.CNDSVal2            := �������2;
  recSpec.ProcNDS2            := �����2;
  recSpec.CExciseNac2         := ���樧���2;
  recSpec.CExciseVal2         := ���樧���2;
  recSpec.ProcExise2          := ����樧2;
  recSpec.CNProdNac2          := ���த���2;
  recSpec.CNProdVal2          := ���த���2;
  recSpec.ProcNProd2          := ����த2;
  recSpec.StNac2              := �⍠�2;
  recSpec.StNavOpl2           := �⍠掯�2;
  recSpec.StNacBN2            := �⍠恍2;
  recSpec.StNacBNOpl2         := �⍠恍���2;
  recSpec.StNacSN2            := �⍠�C�2;
  recSpec.StNacSNOpl2         := �⍠�C����2;
  recSpec.StNalNac2           := �⍠����2;
  recSpec.MassaMC2            := ���᠌�2;
  recSpec.MassaTar2           := ���᠒��댖2;
  recSpec.KolUth2             := �����2;
  recSpec.KolOpl2             := ������2;
  recSpec.OtpEdAbbr2          := �⯅�����2;
  recSpec.SpOprVes2           := ���ᮡ������2;
  recSpec.CertNomer2          := �����_���䨪��2;
  recSpec.CertDate2           := ���_���䨪��2;
  recSpec.CertWho2            := �⮢뤠�_���䨪��2;
  recSpec.GigienReg2          := 㤮��_��ᣨ����_ॣ����樨2;
  recSpec.CustomSolution2     := ⠬������_ࠧ�襭��2;
  recSpec.ExciseMarkNode      := ��樧��_��ન_㧥�;
  recSpec.ExciseMark1         := ��樧��_��ન1;
  recSpec.ExciseMark2         := ��樧��_��ન2;
  recSpec.ExciseMark3         := ��樧��_��ન3;
  recSpec.ExciseMark4         := ��樧��_��ન4;
  recSpec.ExciseMark5         := ��樧��_��ન5;
  recSpec.ExciseMark6         := ��樧��_��ન6;
  recSpec.ExciseMark7         := ��樧��_��ન7;
  recSpec.ExciseMark8         := ��樧��_��ન8;
  recSpec.ExciseMark9         := ��樧��_��ન9;
  recSpec.ExciseMark10        := ��樧��_��ન10;
#ifdef _TOVN_DEI
  recSpec.DEIName2            := ���2_����;
  recSpec.DEIKol2             := ���2_���;
  recSpec.DEICena2            := ���2_����;
#end
  recSpec.sPrim               := sPrimechanie;
  recSpec.sPrimV              := sPrimechanieV;

  MemTblSopr.MPrnSoprSpNakl.Buffer := recSpec;
  MemTblSopr.Insert Current MPrnSoprSpNakl;

//------------------------------------------------------------------------------
! ��ਡ��� SpSopr
  ClearAdvRecord(recAttr);
  recAttr.KatSoprNRec         := 0;
  recAttr.SpSoprNRec          := recSpec.SpSoprNRec ;
  recAttr.wTable              := coSpSopr;
  recAttr.AttrVal[1]          := ���1_��;
  recAttr.AttrVal[2]          := ���2_��;
  recAttr.AttrVal[3]          := ���3_��;
  recAttr.AttrVal[4]          := ���4_��;
  recAttr.AttrVal[5]          := ���5_��;
  recAttr.AttrVal[6]          := ���6_��;
  recAttr.AttrVal[7]          := ���7_��;
  recAttr.AttrVal[8]          := ���8_��;
  recAttr.AttrVal[9]          := ���9_��;
  recAttr.AttrVal[10]         := ���10_��;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;
  MemTblSopr.Insert Current MPrnSoprAttr;

//------------------------------------------------------------------------------
! ��ਡ��� KatMc
  ClearAdvRecord(recAttr);
  recAttr.KatSoprNRec         := 0;
  recAttr.SpSoprNRec          := recSpec.SpSoprNRec ;
  recAttr.wTable              := coKatMc;
  recAttr.AttrVal[1]          := ���1_��;
  recAttr.AttrVal[2]          := ���2_��;
  recAttr.AttrVal[3]          := ���3_��;
  recAttr.AttrVal[4]          := ���4_��;
  recAttr.AttrVal[5]          := ���5_��;
  recAttr.AttrVal[6]          := ���6_��;
  recAttr.AttrVal[7]          := ���7_��;
  recAttr.AttrVal[8]          := ���8_��;
  recAttr.AttrVal[9]          := ���9_��;
  recAttr.AttrVal[10]         := ���10_��;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;

  MemTblSopr.Insert Current MPrnSoprAttr;


//------------------------------------------------------------------------------
! ��ਡ��� KatParty
  ClearAdvRecord(recAttr);

  recAttr.KatSoprNRec := 0;
  recAttr.SpSoprNRec  := recSpec.SpSoprNRec;
  recAttr.wTable      := coKatParty;
  recAttr.AttrVal[1]  := ���1_���;
  recAttr.AttrVal[2]  := ���2_���;
  recAttr.AttrVal[3]  := ���3_���;
  recAttr.AttrVal[4]  := ���4_���;
  recAttr.AttrVal[5]  := ���5_���;
  recAttr.AttrVal[6]  := ���6_���;
  recAttr.AttrVal[7]  := ���7_���;
  recAttr.AttrVal[8]  := ���8_���;
  recAttr.AttrVal[9]  := ���9_���;
  recAttr.AttrVal[10] := ���10_���;

  MemTblSopr.MPrnSoprAttr.Buffer := recAttr;

  MemTblSopr.Insert Current MPrnSoprAttr;

//------------------------------------------------------------------------------
!��ନ஢���� MPrnSoprSpTTI
  ClearAdvRecord(recTTISp);

  recTTISp.SpSoprNRec         := recSpec.SpSoprNRec;
  recTTISp.PunktRDateIn       := �����_�㭪�_���_�;
  recTTISp.PunktRTimeIn       := �����_�㭪�_�६�_�;
  recTTISp.PunktRDateOut      := �����_�㭪�_���_��;
  recTTISp.PunktRTimeOut      := �����_�㭪�_�६�_��;
  recTTISp.PunktRDopName      := �����_�㭪�_���_���;
  recTTISp.PunktRDopKol       := �����_�㭪�_���_�����;
  recTTISp.PunktRDopTime      := �����_�㭪�_���_�६�;
  recTTISp.PunktPDateIn       := �����_�㭪�_���_�;
  recTTISp.PunktPTimeIn       := �����_�㭪�_�६�_�;
  recTTISp.PunktPDateOut      := �����_�㭪�_���_��;
  recTTISp.PunktPTimeOut      := �����_�㭪�_�६�_��;
  recTTISp.PunktPDopName      := �����_�㭪�_���_���;
  recTTISp.PunktPDopKol       := �����_�㭪�_���_�����;
  recTTISp.PunktPDopTime      := �����_�㭪�_���_�६�;
  recTTISp.PunktRCountryNal   := �����_��ଠ����㧪�;
  recTTISp.PunktRSityKod      := �����_��ଠ�����㧪�;
  recTTISp.PunktRSityName     := ���⭆�_����������_���;
  recTTISp.PunktRSityTel      := ���⭆�_����������_�����;
  recTTISp.PunktRSCountryKod  := ���⭆�_������_�����;
  recTTISp.PunktRSCountryName := ���⭆�_������;
  recTTISp.PunktRSCountryNal  := ���⭆�_������_���;
  recTTISp.PunktRAddr         := ���⭆�_�����;
  recTTISp.ZhDOprVes          := ���⭆�_���ᮡ������;
  recTTISp.ZhDNetto           := ���⭆�_��፥��;
  recTTISp.ZhDBrutto          := ���⭆�_�������;
  recTTISp.ZhDResOtgr         := ���⭆�_�����㧪�;

  MemTblSopr.MPrnSoprSpTTI.Buffer := recTTISp;

  MemTblSopr.Insert Current MPrnSoprSpTTI;

//******************************************************************************
! ���㭪�_�� - 10
  ClearAdvRecord(recOrg);

  recOrg.KatSoprNRec     := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec      := recSpec.SpSoprNRec;
  recOrg.PrOrg           := 10;
  recOrg.KatOrg_Name     := �����_�㭪�_��_���;
  recOrg.KatOrg_TipOrg   := �����_�㭪�_��_���;
  recOrg.KatOrg_Addr     := �����_�㭪�_��_����;
  recOrg.KatOrg_OKPO     := �����_�㭪�_��_����;
  recOrg.KatOrg_OKONH    := �����_�㭪�_��_�����;
  recOrg.KatOrg_TEL      := �����_�㭪�_��_���;
  recOrg.KatOrg_CONTAKT  := �����_�㭪�_��_���∭�;
  recOrg.KatOrg_EMAIL    := �����_�㭪�_��_Email;
  recOrg.PodrInfo_OKATO  := �����_�㭪�_��_OKATO;
  recOrg.PodrInfo_KBK    := �����_�㭪�_��_KBK;
  recOrg.PodrInfo_OGRN   := �����_�㭪�_��_OGRN;
  recOrg.PodrInfo_REGNO  := �����_�㭪�_��_������_�_��;
  recOrg.PodrInfo_POlE3  := �����_�㭪�_��_������_���客�⥫�;
  recOrg.PodrInfo_INSNA  := �����_�㭪�_��_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name   := �����_�㭪�_��_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD   := �����_�㭪�_��_���_���⥫쭮��;
  recOrg.KatState_KOD    := �����_�㭪�_��_������_���;
  recOrg.KatState_Name   := �����_�㭪�_��_������_���;
  recOrg.KatState_IsNal  := �����_�㭪�_��_������_������;
  recOrg.KatCity_KOD     := �����_�㭪�_��_�����_���;
  recOrg.KatCity_Name    := �����_�㭪�_��_�����_���;
  recOrg.KatCity_TEL     := �����_�㭪�_��_�����_���;
  recOrg.KatStateS_KOD   := �����_�㭪�_��_�����_������_���;
  recOrg.KatStateS_Name  := �����_�㭪�_��_�����_������_���;
  recOrg.KatStateS_IsNal := �����_�㭪�_��_�����_������_������;
  recOrg.KatOrg_CorpoIn  := �����_�㭪�_��_����������;
  recOrg.KatOrg_UNN      := �����_�㭪�_��_���;
  recOrg.KatOrg_KODPLAT  := �����_�㭪�_��_���;
  recOrg.KatB_Name       := �����_�㭪�_��_����_���;
  recOrg.KatB_Remark     := �����_�㭪�_��_����_�������਩;
  recOrg.KatB_Addr       := �����_�㭪�_��_����_����;
  recOrg.KatB_MFO1       := �����_�㭪�_��_����_��;
  recOrg.KatB_MFO2       := �����_�㭪�_��_����_���;
  recOrg.KatB_Schet1     := �����_�㭪�_��_����_���;
  recOrg.KatB_Schet2     := �����_�㭪�_��_����_���_���;
  recOrg.KatB_Schet3     := �����_�㭪�_��_����_���_����;
  recOrg.KatB_TipSchet   := �����_�㭪�_��_����_���_���;
  recOrg.KatB_Aktiv      := �����_�㭪�_��_����_���_���;
  recOrg.KatOrg_UrAddr   := '';

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;

  MemTblSopr.Insert Current MPrnSoprOrg;

//******************************************************************************
! ���㭪�_�� - 11
  ClearAdvRecord(recOrg);

  recOrg.KatSoprNRec     := recNakl.KatSoprNRec;
  recOrg.SpSoprNRec      := recSpec.SpSoprNRec;
  recOrg.PrOrg           := 11;
  recOrg.KatOrg_Name     := �����_�㭪�_��_���;
  recOrg.KatOrg_TipOrg   := �����_�㭪�_��_���;
  recOrg.KatOrg_Addr     := �����_�㭪�_��_����;
  recOrg.KatOrg_OKPO     := �����_�㭪�_��_����;
  recOrg.KatOrg_OKONH    := �����_�㭪�_��_�����;
  recOrg.KatOrg_TEL      := �����_�㭪�_��_���;
  recOrg.KatOrg_CONTAKT  := �����_�㭪�_��_���∭�;
  recOrg.KatOrg_EMAIL    := �����_�㭪�_��_Email;
  recOrg.PodrInfo_OKATO  := �����_�㭪�_��_OKATO;
  recOrg.PodrInfo_KBK    := �����_�㭪�_��_KBK;
  recOrg.PodrInfo_OGRN   := �����_�㭪�_��_OGRN;
  recOrg.PodrInfo_REGNO  := �����_�㭪�_��_������_�_��;
  recOrg.PodrInfo_POlE3  := �����_�㭪�_��_������_���客�⥫�;
  recOrg.PodrInfo_INSNA  := �����_�㭪�_��_�࣠�_�ᯮ��_�����;
  recOrg.FormSobs_Name   := �����_�㭪�_��_��ଠ_����⢥�����;
  recOrg.FormSobs_VidD   := �����_�㭪�_��_���_���⥫쭮��;
  recOrg.KatState_KOD    := �����_�㭪�_��_������_���;
  recOrg.KatState_Name   := �����_�㭪�_��_������_���;
  recOrg.KatState_IsNal  := �����_�㭪�_��_������_������;
  recOrg.KatCity_KOD     := �����_�㭪�_��_�����_���;
  recOrg.KatCity_Name    := �����_�㭪�_��_�����_���;
  recOrg.KatCity_TEL     := �����_�㭪�_��_�����_���;
  recOrg.KatStateS_KOD   := �����_�㭪�_��_�����_������_���;
  recOrg.KatStateS_Name  := �����_�㭪�_��_�����_������_���;
  recOrg.KatStateS_IsNal := �����_�㭪�_��_�����_������_������;
  recOrg.KatOrg_CorpoIn  := �����_�㭪�_��_����������;
  recOrg.KatOrg_UNN      := �����_�㭪�_��_���;
  recOrg.KatOrg_KODPLAT  := �����_�㭪�_��_���;
  recOrg.KatB_Name       := �����_�㭪�_��_����_���;
  recOrg.KatB_Remark     := �����_�㭪�_��_����_�������਩;
  recOrg.KatB_Addr       := �����_�㭪�_��_����_����;
  recOrg.KatB_MFO1       := �����_�㭪�_��_����_��;
  recOrg.KatB_MFO2       := �����_�㭪�_��_����_���;
  recOrg.KatB_Schet1     := �����_�㭪�_��_����_���;
  recOrg.KatB_Schet2     := �����_�㭪�_��_����_���_���;
  recOrg.KatB_Schet3     := �����_�㭪�_��_����_���_����;
  recOrg.KatB_TipSchet   := �����_�㭪�_��_����_���_���;
  recOrg.KatB_Aktiv      := �����_�㭪�_��_����_���_���;
  recOrg.KatOrg_UrAddr   := '';

  MemTblSopr.MPrnSoprOrg.Buffer := recOrg;

  MemTblSopr.Insert Current MPrnSoprOrg;
end.
.}
.{ CHECKENTER TOVNUSL
.begin
//******************************************************************************
! �ନ஢���� MPrnSoprNakl
  ClearAdvRecord(recUsl);

  recUsl.KatSoprNRec := recNakl.KatSoprNRec;
  recUsl.SpSoprNRec  := ᯥ�䨪��_�४;
  recUsl.UslName     := ����������㣨;
  recUsl.UslKod      := �����㣨;
  recUsl.OtpEd       := �⯅������㣨;
  recUsl.UthEd       := �煤�����㣨;
  recUsl.KoefOtpEd   := �����㣨;
  recUsl.KolD        := ������㣨;
  recUsl.KolF        := ������㣨;
  recUsl.Cena        := ������㣨;
  recUsl.CenaVal     := ���������㣨;
  recUsl.Nalog1      := �_�����1�;
  recUsl.NalogV1     := �_�����1�;
  recUsl.Nalog2      := �_�����2�;
  recUsl.NalogV2     := �_�����2�;
  recUsl.Nalog3      := �_�����3�;
  recUsl.NalogV3     := �_�����3�;
  recUsl.Nalog4      := �_�����4�;
  recUsl.NalogV4     := �_�����4�;
  recUsl.Nalog5      := �_�����5�;
  recUsl.NalogV5     := �_�����5�;
  recUsl.Nalog6      := �_�����6�;
  recUsl.NalogV6     := �_�����6�;
  recUsl.NalogOth    := �_�����_��稥_�;
  recUsl.NalogOthV   := �_�����_��稥_�;
  recUsl.CNakBN      := �_������;
  recUsl.CNacBN      := �_���恍;
  recUsl.CValBN      := �_������;
  recUsl.CNakBNUth   := �_��������;
  recUsl.CNacBNUth   := �_���恍��;
  recUsl.CValBNUth   := �_��������;
  recUsl.CNakSN      := �_������;
  recUsl.CNacSN      := �_���摍;
  recUsl.CValSN      := �_������;
  recUsl.CNakSNUth   := �_��������;
  recUsl.CNacSNUth   := �_���摍��;
  recUsl.CValSNUth   := �_��������;
  recUsl.StNDS       := �_�⠢��_��ࢮ��_������;
  recUsl.CNDSNak     := �_�������;
  recUsl.CExciseNak  := �_���樧���;
  recUsl.CNProdNak   := �_���த���;
  recUsl.CNalNak     := �_�������;
  recUsl.CNDSNac     := �_�������;
  recUsl.CExciseNac  := �_���樧���;
  recUsl.CNProdNac   := �_���த���;
  recUsl.CNalNac     := �_�������;
  recUsl.CNDSVal     := �_�������;
  recUsl.CExciseVal  := �_���樧���;
  recUsl.CNProdVal   := �_���த���;
  recUsl.CNalVal     := �_�������;
  recUsl.CStNakBN    := �_�⍠���;
  recUsl.StNacBN     := �_�⍠恍;
  recUsl.StValBN     := �_�₠���;
  recUsl.StNakSN     := �_�⍠���;
  recUsl.StNacSN     := �_�⍠摍;
  recUsl.StValSN     := �_�₠���;
  recUsl.StNDSNak    := �_�⍄����;
  recUsl.StExciseNak := �_�‪樧���;
  recUsl.StNProdNak  := �_�⍏த���;
  recUsl.StNalNak    := �_�⍀����;
  recUsl.StNDSNac    := �_�⍄����;
  recUsl.StExciseNac := �_�‪樧���;
  recUsl.StNProdNac  := �_�⍏த���;
  recUsl.StNalNac    := �_�⍀����;
  recUsl.StNDSVal    := �_�⍄����;
  recUsl.StExciseVal := �_�‪樧���;
  recUsl.StNProdVal  := �_�⍏த���;
  recUsl.StNalVal    := �_�⍀����;
  recUsl.ProcNDS     := �_�����;
  recUsl.ProcExcise  := �_����樧;
  recUsl.ProcNProd   := �_����த;
  recUsl.ProcNal     := �_�����;
  recUsl.PartyName   := �_�����;
  recUsl.StroyObj    := �_��ꥪ�_��ந⥫��⢠;
  recUsl.StZatr      := �_�����_�����;

  MemTblSopr.MPrnSoprUslNakl.Buffer := recUsl;

  MemTblSopr.Insert Current MPrnSoprUslNakl;
end.
.}
.begin
//******************************************************************************
! �த������� �ନ஢���� MPrnSoprNakl
  recNakl.StrAstNakSN1   := ���_��⍠���1;
  recNakl.bNalProd       := bNalProd;
  recNakl.bFixGrMC       := bFixGrMC;
  recNakl.bAutoGrM       := bAutoGrM;
  recNakl.TaraVoz        := TaraVoz;
  recNakl.ANaim          := �������������;
  recNakl.StrANaim       := ���_�������������;
  recNakl.AKolF          := �����;
  recNakl.StrAKolf       := ���_�����;
  recNakl.AKolUth        := ������;
  recNakl.StrAKolUth     := ���_������;
  recNakl.AKolVes        := �������;
  recNakl.StrAKolVes     := ���_�������;
  recNakl.AKolOb         := ������;
  recNakl.StrAKolOb      := ���_������;
  recNakl.AStNak         := ��⍠�;
  recNakl.StrAStNak      := ���_��⍠�;
  recNakl.AStOpl         := ��⎯�;
  recNakl.StrAStOpl      := ���_��⎯�;
  recNakl.AStNac         := ��⍠�;
  recNakl.StrAStNac      := ���_��⍠�;
  recNakl.AStNacSDost    := ��⍠摄���;
  recNakl.StrAStNacSDost := ���_��⍠摄���;
  recNakl.AStVal         := ��₠�;
  recNakl.StrAStVal      := ���_��₠�;
  recNakl.AStNakBN       := ��⍠���;
  recNakl.StrAStNakBN    := ���_��⍠���;
  recNakl.AStNacBN0      := ��⍠恍0;
  recNakl.StrAStNacBN    := ���_��⍠恍;
  recNakl.AStValBN       := ��₠���;
  recNakl.StrAStValBN    := ���_��₠���;
  recNakl.AStNakSN       := ��⍠���;
  recNakl.StrAStNakSN    := ���_��⍠���;
  recNakl.AStNacSN0      := ��⍠摍0;
  recNakl.StrAStNacSN    := ���_��⍠摍;
  recNakl.AStValSN       := ��₠���;
  recNakl.StrAStValSN    := ���_��₠���;
  recNakl.ANDSNak        := �������;
  recNakl.StrANDSNak     := ���_�������;
  recNakl.AEciseNak      := ���樧���;
  recNakl.StrAEciseNak   := ���_���樧���;
  recNakl.ANProdNak      := ���த���;
  recNakl.StrANProdNak   := ���_���த���;
  recNakl.ANalNak        := �������;
  recNakl.StrANalNak     := ���_�������;
  recNakl.ANDSNac0       := �������0;
  recNakl.StrANDSNac     := ���_�������;
  recNakl.AEciseNac      := ���樧���;
  recNakl.StrAEciseNac   := ���_���樧���;
  recNakl.ANProdNac      := ���த���;
  recNakl.StrANProdNac   := ���_���த���;
  recNakl.ANalNac        := �������;
  recNakl.StrANalNac     := ���_�������;
  recNakl.ANDSVal        := �������;
  recNakl.StrANDSVal     := ���_�������;
  recNakl.AEciseVal      := ���樧���;
  recNakl.StrAEciseVal   := ���_���樧���;
  recNakl.ANProdVal      := ���த���;
  recNakl.StrANProdVal   := ���_���த���;
  recNakl.ANalVal        := �������;
  recNakl.StrANalVal     := ���_�������;
  recNakl.APrNDS         := ������;
  recNakl.APrEcise       := �����樧;
  recNakl.APrNProd       := �����த;
  recNakl.APrNal         := ������;
  recNakl.Signer1        := �����ᠭ�1;
  recNakl.SignerApp1     := �����ᠭ�_���������1;
  recNakl.Signer2        := �����ᠭ�2;
  recNakl.SignerApp2     := �����ᠭ�_���������2;
  recNakl.Signer3        := �����ᠭ�3;
  recNakl.SignerApp3     := �����ᠭ�_���������3;
  recNakl.Signer4        := �����ᠭ�4;
  recNakl.SignerApp4     := �����ᠭ�_���������4;
  recNakl.Signer5        := �����ᠭ�5;
  recNakl.SignerApp5     := �����ᠭ�_���������5;
  recNakl.AllDoc1        := ��_���㬥���1;
  recNakl.AllDoc2        := ��_���㬥���2;
  recNakl.AllDoc3        := ��_���㬥���3;
  recNakl.AllDoc4        := ��_���㬥���4;
  recNakl.AllDoc5        := ��_���㬥���5;
  recNakl.AllCert1       := ��_���䨪���1;
  recNakl.AllCert2       := ��_���䨪���2;
  recNakl.AllCert3       := ��_���䨪���3;
  recNakl.AllCert4       := ��_���䨪���4;
  recNakl.AllCert5       := ��_���䨪���5;
  recNakl.sPrice         := ��_�ࠩ᫨���;
  recNakl.SpSymbol       := ᯥ�ᨬ���;

  MemTblSopr.MPrnSoprNakl.Buffer := recNakl;

  MemTblSopr.Insert Current MPrnSoprNakl;
end.
.{
.}
.}
.begin
  RunInterFace('PrnTovnForFastRep');
end.
.endform
