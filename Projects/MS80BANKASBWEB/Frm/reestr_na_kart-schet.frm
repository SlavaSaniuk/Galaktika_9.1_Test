.LinkForm 'MS  REESBVIP_02' Prototype is 'REESBVIP'
.Group '������� �� ����᫥��� � ᡥࡠ��'
.NameInList 'MS  ॥��� �� ����-���'
.p 60
.var
  KolList:Integer
  SumList1:Double
  St1:String
  OtGod:Word
  OtDay:String
  OtMon:String
  ItogSumma1:Double
  ItSt1:String
  ItSumSt1:String
  SummaStr1:String
  SummaStr2:String
  SummaStr3:String
  cur_per:String
  delimit:String
.endvar
.fields
  DatForm
  DatForm
  ���뎯���
  Rab_Bknm
  Rab_Name
  XarName
  Mes
  God
  Npp
  Nom_lsh
  FIO
  cur_per
  KolList
  St1
  SummaStr2
  SummaStr3
  ��_�।
  ��_���
  KolList
  ItSumSt1
  SummaStr2
  SummaStr3
  'true':'s'
.endfields
.begin
  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      0: delimit := '.';
      2: delimit := '-';
      else
        delimit  := '=';
    end;
end.
.{
��� 䠩��: zarpl.txt   ������:       ���: @@@@@@@@@@  �६�:
 ���: @@@@@@@@@@
              � � � � � �    N _____ �� "____"________________  ����
�ਫ������ � ���⥦���� ����祭�� N _____ �� "____"________________ ����
.{
.[H OVERWRITE
.begin
 KolList:=KolList+1
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
����᫥��� � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ࠡ�稬 � �㦠騬  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           �� ^ ����� &&&& �.
���������������������������������������������������������������������������
 N �     �����      �             ������� �.�.           ��㬬� ��� ����.
�/�� ��楢��� ��� �                                    ��� ���.���(��)
���������������������������������������������������������������������������
.]H
.{
.begin
 SumList1  := SumList1+Double(Sum_Per)
       ItogSumma1:= ItogSumma1+Double(Sum_Per)
      if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
     else
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
end.
&&&�@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&
.}
.[F OVERWRITE
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, SumList1);
end.
���������������������������������������������������������������������������
 �⮣� �� ����� &&&:                                 &#'&&&&&&&&&&&&&&&&&&&
.begin
  //�㬬� �ய���� �� �����
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(0,SumList1);
  if length(SummaStr1) > 83
   {
    SummaStr2:= GetPartStr(SummaStr1,83);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,83);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,83);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            (�㬬� �� ����� �ய����)
   ��. �।����� ^
                                                      _______________
                                                         (�������)
   ��. ��壠���    ^
                                                      _______________
                                                         (�������)
.begin
 SumList1:=0
end.
.]F
.}
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
 ���-�� ���⮢ &&&        ����� � ������������       &'&&&&&&&&&&&&&&&&&&&&
.begin
  //�㬬� �ய���� � ����᫥���
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(0,ItogSum_Reestr1);
  if length(SummaStr1) > 83
   {
    SummaStr2:= GetPartStr(SummaStr1,83);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,83);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,83);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               (�㬬� �ய����)
.begin
  KolList:= 0
end.

.if BRPAGE
^
.else
.end
.}

.endform
