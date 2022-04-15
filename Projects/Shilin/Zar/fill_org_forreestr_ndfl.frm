.LinkForm 'REESBVIP_01_FILL_ORG' Prototype is 'REESBVIP'
.Group '������� �� ����᫥��� � ᡥࡠ��'
.NameInList '���������� �࣠����樨-�����⥫� ����'
.p 60
.var
  KolList:Integer
  SumList1:Double
  ItogSumma1:Double
  SummaStr1:String
  SummaStr2:String
  SummaStr3:String
  sOrg:String
  sBank:String
  sSchet:string
.endvar
.Create       view T
from
   sbban (readonly),
   spplban,
   lstab (readonly),
   katorg (readonly),
   katbank (readonly)
where
((
   sbbannrec == sbban.nrec

   and SpplbannRec == spplban.nrec

   and spplban.clsch == lstab.clschet
   and Year(dGetTune('UP.DATOTCH')) == lstab.yearn
   and Month(dGetTune('UP.DATOTCH')) == lstab.mesn

   and lstab.KauExtr[3] == katorg.nrec

   and katorg.nrec == katbank.corg
   and 1 == katbank.aktiv
))
;
.fields
  XarName
  ReesName
  Rab_Name
  Rab_Schet
  Rab_OKPO
  Rab_Bknm
  Rab_Mfo
  Mes
  God
  Npp//  Nom_lsh
  sOrg
  sBank
  sSchet
  FIO
  GetStrSummaExt(true, true, Sum_Per)
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
  ����_��
  ��_�।
  ����_���
  trim(GlavBuh_SignDoc)
  ��_���
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
  'true':'s'
.endfields
.begin
  KolList := 0;
  SumList1 := 0;
  ItogSumma1 := 0;
  sOrg:='';
end.
.{
.{
.[H OVERWRITE
.begin
  KolList:=KolList+1
end.
�� �।���⨥ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�� �����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�� ������ ��� �����⥫� ^ ��� �����⥫� ^��
�� ���� ^��
�� ��� ��� ����� ^ �� ^ ����� &&&& �.��
���������� �ந�室�� �� �᭮����� 3-�� �஢�� �����⨪� � ��楢�� ��� �
�������� "�⭥ᥭ�� �����"
���������������������������������������������������������������������������������������������������������������������������������������������������������������
�� �  �       �࣠������            �            ����              �            ���             �          �������, ���, ����⢮        �     �㬬���
���/� �                              �                              �                             �                                        �  ����᫥�����
���������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.begin
 if(t.getfirst sbban = tsOK) {};
 if (InStr('�����',LoCase(t.sbban.name)) = 0 and InStr('���',LoCase(t.sbban.name)) = 0)
 {
   Message('���� �� ॥��஢ �� �ਭ������� ����᫥��� ����室���� ������.'''#13'� �������� ॥��� ������ ���� ᫮�� "����室��" ��� "����"'''#13'������ �⬥����');
   REESBVIP_01_fill_org.fExit;
 }
end.
.{
.begin
  SumList1 := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
  if ((t.getfirst spplban = tsOK) and (t.getfirst lstab = tsOK) and (t.getfirst katorg = tsOK))
  {
    sOrg:=t.katorg.name
    if (t.getfirst katbank = tsOK)
    {
      sBank:=t.katbank.name;
      sSchet:=t.katbank.SCHET1;
      t.spplban.cpol := katorg.nrec;
      t.spplban.cbankpol := katbank.nrec;
      t.update current spplban;
    }
    else
    {
      sBank:='!!!�訡��. ��� ����� �� 㬮�砭��.';
      sSchet:='';
    }
  }
  else
  {
    sOrg:='!!!�訡��. �஢���� �ਢ離� 3-�� �஢�� �����⨪� � ��楢�� ���.'
  }
end.
��&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&��
.}
.[F OVERWRITE
���������������������������������������������������������������������������������������������������������������������������������������������������������������
�� �⮣� �� ����� &&&:                                                                                                                    &#'&&&&&&&&&&&&&&&&��
.begin
  //�㬬� �ய���� �� �����
  SummaStr2 := '';
  SummaStr3 := '';
  SummaStr1 := DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
  }
end.
�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                             (�㬬� �� ����� �ய����)��
��  @@@@@@@@@@@@@@@@@@ ^��
��                                                 _______________��
��                                                    (�������)��
��  @@@@@@@@@@@@@@@@@@ ^ ^��
��                                                 _______________��
��                                                    (�������)��
.begin
 SumList1:=0 
end.
.]F
.}
�� ���-�� ���⮢ &&&                     ����� � ������������               &'&&&&&&&&&&&&&&&&&&��
.begin
  //�㬬� �ய���� �ᥣ� � ����᫥���
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
    SummaStr2:= SummaStr1;
    SummaStr3:= '';
  }
end.
�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                             (�㬬� �ய����)��
.begin
  KolList:= 0
end.
.if BRPAGE
^
.else
.end
.}
.endform
