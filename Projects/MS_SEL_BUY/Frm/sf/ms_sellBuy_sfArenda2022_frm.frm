.LinkForm 'ms_sellBuy_sfArenda2022_frm' Prototype is 'PRBDOC'
.Group '���ॢ訥 ��� (�।����� �த��)'
.Group '���ॢ訥 ��� (�த���)'
.Group '��� ��ᮯ��짮��⥫�'
.NameInList '2022 ��� (�७��)'
.f 'NUL'
.var
  NrecOS:Comp
  oAiExt:iExtAttr
  oKatOrgAttr:KatOrgAttr
  PatchShablon:String
  NameOrg:String
  boRunReport:Boolean
  iRowStart:Integer
  iNpp:Integer
  FormulaCalc:String
  datNezemnal:Date
  totalSumBezNds:Double
  totalNDS:Double
  totalSumSNds:Double
  sumNDSmy:Double
  ColumnRecordUsl_3_7:String
  ColumnPrintUsl:String
  ColumnRecordUsl_2:String
  ColumnRecordUsl_8:String
  KodTarif:String
  sNDov:String
  sDDov:String
  sFIO:String
  sIOF:String
  sFullName:String
  sDolzh:String
  PersNRec:Comp
  rate_code_by_service:String
  executor_position:String
  executor_name:String
  executor_sname:String
  executor_fname:String
  executor_pname:String
  executor_tel:String
  executor_tel_last_nums:String
.endvar
.Create     view AppArenda
from
  BaseDoc
 ,StepDoc
 ,SpStep
 ,Katorg
 ,KatUsl
 ,SpDocNal
 ,KatBank KatBankKontr
 ,Nezemnal
 ,ListPar
 ,Katpodr
 ,Kattar
 ,TRSTV
 ,tuneval, tuneval tuneval_fio, persons, appointments, catalogs
where
((
    BaseDocNrec      == BaseDoc.nRec

and Basedoc.nrec     == StepDoc.cBasedoc

and StepDoc.nrec     == Spstep.cstepdoc

and SpStep.nrec      == SpDocNal.CSPDOC
and word(1201)       == SpDocNal.tipDoc

and Basedoc.corg     == Katorg.nrec

and Basedoc.Cdogovor == Dogovor.nrec

and Dogovor.CCURPODR == Katpodr.nrec

and SpStep.cmcusl    == KatUsl.nrec

and Basedoc.cBank    == KatBankKontr.nrec

// ������� �ᯮ���⥫� �� ���ਯ��� ���짮��⥫�:
and 184h == tuneval.ctune
and BaseDoc.descr == tuneval.strval
and 1 == tuneval_fio.obj
and tuneval.cuser == tuneval_fio.cuser
and 0001000000003EE1h == tuneval_fio.ctune
and tuneval_fio.compval == persons.nrec

// ������� ��������� �ᯮ���⥫�:
and persons.appointcur == appointments.nrec
and appointments.post  == catalogs.nrec
));
.fields
.endfields
.begin
PatchShablon:=StartPathName+'Xls\MS_RES\ms_sell_buy\ms_sf_arenda_2022.xltm';
boRunReport:=true;
if(not ExistFile(StartPathName+'Xls\MS_RES\ms_sell_buy\ms_sf_arenda_2022.xltm'))
  {
    message('�� ��� '+PatchShablon+' 蠡��� �� �����㦥�! ���� �� �㤥� ��ନ஢��!');
    boRunReport:=false;
  }
OpenMessageLog(GetDefaultUserPath+'CreateProtokolArenda.log',mfLog2Stream+mfNoTimeStamp);
RunInterface('MS_Shilin::GetPodpis', sNDov, sDDov, sFIO, sIOF, sDolzh, sFullName, persNRec);
end.
.{
.begin
NameOrg:='';
totalSumBezNds:=0;
totalNDS:=0;
totalSumSNds:=0;
iRowStart:=22;
iNpp:=0;
if(boRunReport)
  {
  if(xlCreateExcelWithTemplate(PatchShablon,true))
   {
     if(AppArenda.getfirst BaseDoc=tsok)
      {
       xlSetCellStringValue(AppArenda.BASEDOC.NODOC,3,4,3,5);
       xlSetCellStringValue(day(AppArenda.BASEDOC.DDOC),3,7,3,7);
       xlSetCellStringValue(datetostr(AppArenda.BASEDOC.DDOC,'Mon'),3,8,3,9);
       xlSetCellStringValue(Year(AppArenda.BASEDOC.DDOC)+' ����',3,10,3,10);

       if(AppArenda.getfirst Katorg =tsok)
         {
           NameOrg:=AppArenda.Katorg.Name;

           xlSetCellStringValue(AppArenda.Katorg.Name,11,2,11,9);
           xlSetCellStringValue(oKatOrgAttr.GetPostAddr(AppArenda.Katorg.nrec),12,2,12,9);
         }

       writeMessageLog('��ࠡ�⠭� �� ����� '+AppArenda.BaseDoc.NODOC+' �� '+AppArenda.basedoc.DFORM+' ����ࠣ��� '+NameOrg+'!');

       if(AppArenda.getfirst KatBankKontr = tsok)
         {
           xlSetCellStringValue('�/ ��� � '+AppArenda.KatBankKontr.SCHET1+' � '+AppArenda.KatBankKontr.Addr,13,2,13,9);
           xlSetCellStringValue(AppArenda.KatBankKontr.Name+', ��� '+AppArenda.KatBankKontr.MFO1+', ��� '+AppArenda.Katorg.UNN,14,2,14,9);
         }

       if(AppArenda.getfirst Dogovor =tsok)
         {
           xlSetCellStringValue('���. '+AppArenda.Dogovor.NODOC_EXT+' �� '+AppArenda.Dogovor.DDOC+' �.',17,2,17,8);

           if(AppArenda.getfirst Katpodr =tsok)
           {
             xlSetCellStringValue('�७�㥬� ��ꥪ� ��室����: '+AppArenda.Katpodr.Name,19,1,19,13);
           }
         }
       //xlSetCellStringValue(datetostr(AppArenda.BASEDOC.DDOC,'month'),18,6,18,7);
       //xlSetCellStringValue(Year(AppArenda.BASEDOC.DDOC)+' ����',18,8,18,8);
       xlSetCellStringValue(datetostr(Sub_Months(date(1,Month(AppArenda.BASEDOC.DDOC),Year(AppArenda.BASEDOC.DDOC)),1),'month'),18,6,18,7);
       xlSetCellStringValue(Year(Sub_Months(date(1,Month(AppArenda.BASEDOC.DDOC),Year(AppArenda.BASEDOC.DDOC)),1))+' ����',18,8,18,8);

       //Sub_Months(date(1,Month(AppArenda.BASEDOC.DDOC),Year(AppArenda.BASEDOC.DDOC)),1)

       if(AppArenda.getfirst StepDoc=tsok)
         {
           AppArenda._loop SpStep
             {
               datNezemnal:=date(0,0,0);
               NrecOS:=0;
               FormulaCalc:='';
               sumNDSmy:=0;
               ColumnRecordUsl_3_7:='';
               ColumnRecordUsl_2:='';
               ColumnRecordUsl_8:='';
               ColumnPrintUsl:='';
               KodTarif:='';
               if(AppArenda.getfirst KatUsl = tsok)
                 {
                   if(iNpp<>0)
                     {
                       xlinsertRange(-4121,iRowStart,1,iRowStart,13);
                     }

                   xlSetCellStringValue(AppArenda.KatUsl.name,iRowStart,1,iRowStart,1);

                   NrecOS:=oAiExt.coGetAttr(coSpStep,SpStep.nrec,'��');
                   //datNezemnal:=date(1,Month(AppArenda.BASEDOC.DDOC),Year(AppArenda.BASEDOC.DDOC))
                   datNezemnal:=Sub_Months(date(1,Month(AppArenda.BASEDOC.DDOC),Year(AppArenda.BASEDOC.DDOC)),1);

                   ColumnRecordUsl_2:=oAiExt.sGetAttr(coKatUsl,KatUsl.nrec,'�甠��_�������_2');

                   if(length(ColumnRecordUsl_2)<>0)
                     {
                        if(AppArenda.getfirst ListPar where((ColumnRecordUsl_2 == ListPar.KATPARID
                                                        and  coSpStep          == ListPar.WTABLE
                                                        and  SpStep.nrec       == ListPar.CDoc )) = tsok)
                          {
                             xlSetCellStringValue(AppArenda.ListPar.Value,iRowStart,2,iRowStart,2);
                          }
                     }

                   // **** �⮫��� 8 (����) ****
                   // *** ��� ��� �� ��㣥 ***
                   rate_code_by_service := oAiExt.sGetAttr(coSpStep,SpStep.nrec,'��� ���');
                   ColumnRecordUsl_8:=oAiExt.sGetAttr(coKatUsl,KatUsl.nrec,'�甠��_�������_8');
                   if(length(rate_code_by_service)<>0){
                       writeMessageLog('��� ��� �� ��㣥: ' +rate_code_by_service);
                          if(AppArenda.getfirst KatTar where ((rate_code_by_service == Kattar.ID))=tsok){
                              writeMessageLog('��� ��� �� KatTer: ' +KatTar.nrec);
                                   if(AppArenda.getfirst TRSTV where ((Kattar.nrec ==  TRSTV.CKATTAR and datNezemnal >>= TRSTV.DOWND(noindex) and datNezemnal <<= TRSTV.UPD(noindex)))=tsok){
                                        xlSetCellNumberValue(doubletostr(AppArenda.TRSTV.STAVKA,'666.88888'),iRowStart,8,iRowStart,8);
                   // *** ��� ��� �� ���ࠧ������� ***
                   }}}else if(substr(ColumnRecordUsl_8,1,5)='����'){
                       if(AppArenda.getfirst Dogovor=tsok){
                           if(AppArenda.getfirst Katpodr =tsok){
                              writeMessageLog('��� ��� �� ���ࠧ�������: ' +ColumnRecordUsl_8);
                              KodTarif:=oAiExt.sGetAttr(coKatpodr,Katpodr.nrec,ColumnRecordUsl_8);
                              if(AppArenda.getfirst KatTar where ((KodTarif == Kattar.ID))=tsok){
                                   if(AppArenda.getfirst TRSTV where ((Kattar.nrec ==  TRSTV.CKATTAR and datNezemnal >>= TRSTV.DOWND(noindex) and datNezemnal <<= TRSTV.UPD(noindex)))=tsok){
                                        xlSetCellNumberValue(doubletostr(AppArenda.TRSTV.STAVKA,'666.88888'),iRowStart,8,iRowStart,8);
                   // *** ��� ��� �� ������ �७���� ***
                   }}}}}else {
                      if(length(ColumnRecordUsl_8)<>0) {
                          if(getfirst Nezemnal where((ColumnRecordUsl_8 == NezemNal.param and NrecOS == NezemNal.cOS and datNezemnal == NezemNal.DataN))= tsok) {
                              xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,8,iRowStart,8);
                   }}}
                   // **** ����� �⮫�� 8 (����) ****

                   ColumnRecordUsl_3_7:=oAiExt.sGetAttr(coKatUsl,KatUsl.nrec,'�甠��_���冷��������_3_7');

                   while (instr(';',ColumnRecordUsl_3_7)<>0 and length(ColumnRecordUsl_3_7)<>0)
                     {
                       ColumnPrintUsl:=substr(ColumnRecordUsl_3_7,1,instr(';',ColumnRecordUsl_3_7)-1);
                       case ColumnPrintUsl of
                        '3':
                           {
                             if(AppArenda.getfirst Nezemnal where (( '��������採�_祫' == NezemNal.param     //'��銮�������_祫' == NezemNal.param
                                                    and    NrecOS            == NezemNal.cOS
                                                    and    datNezemnal       == NezemNal.DataN))= tsok)
                               {
                                  xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,3,iRowStart,3);
                               }
                           }
                        '4':
                           {
                             if(AppArenda.getfirst Nezemnal where (('��������_m2' == NezemNal.param
                                                    and    NrecOS            == NezemNal.cOS
                                                    and    datNezemnal       == NezemNal.DataN))= tsok)
                               {
                                  xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,4,iRowStart,4);
                               }
                           }
                        '5':
                           {
                             if(AppArenda.getfirst Nezemnal where (('�����⎡鏮��_�2' == NezemNal.param
                                                    and    NrecOS            == NezemNal.cOS
                                                    and    datNezemnal       == NezemNal.DataN))= tsok)
                               {
                                  xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,5,iRowStart,5);
                               }
                           }
                        '6':
                           {
                             case KATUSL.KOD of
                              '033002':
                                   {
                                   if(AppArenda.getfirst Nezemnal where (('��_����魎��_���' == NezemNal.param
                                                                    and    NrecOS            == NezemNal.cOS
                                                                    and    datNezemnal       == NezemNal.DataN))= tsok)
                                          {
                                             xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,6,iRowStart,6);
                                          }
                                   }
                              else
                                   {
                                   if(AppArenda.getfirst Nezemnal where (('����魎��_���' == NezemNal.param
                                                                 and    NrecOS            == NezemNal.cOS
                                                                 and    datNezemnal       == NezemNal.DataN))= tsok)
                                          {
                                             xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,6,iRowStart,6);
                                          }
                                   }
                              end;
                           }
                        '7':
                           {
                             if(AppArenda.getfirst Nezemnal where (('����魌��⎏_���' == NezemNal.param
                                                    and    NrecOS            == NezemNal.cOS
                                                    and    datNezemnal       == NezemNal.DataN))= tsok)
                               {
                                  xlSetCellNumberValue(AppArenda.NezemNal.KOEF3,iRowStart,7,iRowStart,7);
                               }
                           }
                       end;
                       ColumnPrintUsl:='';
                       ColumnRecordUsl_3_7:=substr(ColumnRecordUsl_3_7,instr(';',ColumnRecordUsl_3_7)+1,length(ColumnRecordUsl_3_7)-instr(';',ColumnRecordUsl_3_7));
                     }

                   FormulaCalc:=oAiExt.sGetAttr(coKatUsl,KatUsl.nrec,'�甠��_���冷������');

                   xlSetCellStringValue(FormulaCalc,iRowStart,9,iRowStart,9);

                   xlSetCellNumberValue(Round(AppArenda.SPSTEP.PRICE*AppArenda.SPSTEP.KOLSKL,2),iRowStart,10,iRowStart,10);
                   if(AppArenda.getfirst SpdocNal = tsok)
                     {
                     if (AppArenda.SPDOCNAL.NALOG<>0)
                     {
                       xlSetCellStringValue(doubletostr(AppArenda.SPDOCNAL.NALOG,'666')+'%',iRowStart,11,iRowStart,11);    //�뢮�
                       sumNDSmy:=Round(AppArenda.SPDOCNAL.SUMNAL,2);
                       xlSetCellNumberValue(sumNDSmy,iRowStart,12,iRowStart,12);    //�뢮�
                     }
                     else
                     {
                       xlSetCellStringValue(' ',iRowStart,11,iRowStart,11);    //�뢮�
                       //sumNDSmy:=Round(AppArenda.SPDOCNAL.SUMNAL,2);
                       //xlSetCellNumberValue(' ',iRowStart,12,iRowStart,12);    //�뢮�
                       xlSetCellStringValue(' ',iRowStart,12,iRowStart,12);    //�뢮�
                     }

                     }
                   xlSetCellNumberValue(Round(AppArenda.SPSTEP.PRICE*AppArenda.SPSTEP.KOLSKL,2)+sumNDSmy,iRowStart,13,iRowStart,13);    //�뢮�

                   totalSumBezNds+=Round(AppArenda.SPSTEP.PRICE*AppArenda.SPSTEP.KOLSKL,2);
                   totalNDS+=sumNDSmy;
                   totalSumSNds+=Round(AppArenda.SPSTEP.PRICE*AppArenda.SPSTEP.KOLSKL,2)+sumNDSmy;
                   iRowStart++;
                   iNpp++;
                 }
             }
           xlSetCellNumberValue(totalSumBezNds,iRowStart,10,iRowStart,10);
           xlSetCellNumberValue(totalNDS,iRowStart,12,iRowStart,12);
           xlSetCellNumberValue(totalSumSNds,iRowStart,13,iRowStart,13);

           iRowStart:=iRowStart+2;
           xlSetCellStringValue(DoubleToString(comp(0),totalNDS),iRowStart,2,iRowStart,13);
           iRowStart:=iRowStart+2;
           xlSetCellStringValue(DoubleToString(comp(0),totalSumSNds),iRowStart,1,iRowStart,13);
         }
        writeMessageLog(' ');
      }
      iRowStart:=iRowStart+2;
      xlSetCellStringValue(sDolzh,iRowStart,1,iRowStart,1);

      iRowStart:=iRowStart+1;
      xlSetCellStringValue(sIOF,iRowStart,2,iRowStart,2);

      // **** ��� � ��������� �ᯮ���⥫�: ****
      // ���������
      if(AppArenda.getfirst Catalogs = tsok) {
          executor_position := Catalogs.name;
          writeMessageLog('��������� �ᯮ���⥫�: ' +executor_position);
          iRowStart:=iRowStart+3;
          xlSetCellStringValue(executor_position,iRowStart,1,iRowStart,1);
      }

      // ������� �.�.
      if(AppArenda.getfirst Persons = tsok) {
          executor_name := Persons.fio;
          executor_sname := substr(executor_name,1,(Instr(' ',executor_name))-1);
          executor_name:=substr(executor_name,Instr(' ', executor_name)+1,Length(executor_name)- Instr(' ', executor_name)+1);
          executor_fname := substr(executor_name,1,1)+'.';
          executor_name:=substr(executor_name,Instr(' ', executor_name)+1,Length(executor_name)- Instr(' ', executor_name)+1);
          executor_pname := substr(executor_name,1,1)+'.';
          executor_name:= executor_fname +executor_pname +' ' +executor_sname;
          writeMessageLog('�ᯮ���⥫�: ' +executor_name);
          iRowStart:=iRowStart+1;
          xlSetCellStringValue(executor_name,iRowStart,2,iRowStart,2);
      }
          
      // ����䮭 (269XXXX)
      if(AppArenda.getfirst Tuneval = tsok) {
        executor_tel_last_nums := trim(sGetTuneEx('USER.REMARK', UserOfficeFilial(Tuneval.cuser), Tuneval.cuser));
        executor_tel := '���. ' +'8(017) ' +'269-' +executor_tel_last_nums;
        writeMessageLog('����䮭: ' +executor_tel);
        iRowStart:=iRowStart+1;
        xlSetCellStringValue(executor_tel,iRowStart,1,iRowStart,1);
      }


      xlKillExcel;
    }
  }
end.
.{CheckEnter ISBASEFIN
.}
.{CheckEnter ISEXCLASS
.}
.{CheckEnter ISGROUP
.}
.{
.}
.if DELIMITER
.else
.end
.}
.begin
  CloseMessageLog;
  processText(GetDefaultUserPath+'CreateProtokolArenda.log',vfEscable+vfMacroSize,'��� �ନ஢���� ��� �७��');
end.
.endform
