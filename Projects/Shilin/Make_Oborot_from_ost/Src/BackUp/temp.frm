.LinkForm 'skl_for_oborot'  Prototype is 'NAL_ALL_GR'
.Group '000'
.NameInList '����稥 ��� ������ �஢���� (����������)'
.var
myorg1 :string
sImp, sVED : string
sNoDoc:string[20]
isFin:word;
.endvar
.create view T from kaureff imp, kaureff ved, katmc, katmol , persons, spkau where
((
NameMC == katmc.name

and 1411 == imp.coTable
and katmc.nrec == imp.crec
and 10261 == imp.wKAU
and 0001000000002BE6h == imp.cKAU

and 1411 ==ved.coTable
and katmc.nrec == ved.crec
and 10265 == ved.wKAU
and ved.cKAU == spkau.nrec

and Mol == katmol.name
and katmol.cpersons == persons.nrec

));
.fields
 myorg1
  DateToStr(dDate,'DD mon YYYY')
  GroupName 
  GroupCode 
  NameMC
  GroupCode
  CodeMC
  NameEd
  Podr
  Mol
 substr(Party,1,10)
  replace(Kol,'.',',')
  replace(Price1,'.',',')
  replace(Summa1,'.',',')

sNoDoc
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate,'DD/MM/YYYY')
  replace(Summa1,'.',',')
  substr(GroupCode,1,2)
  if(substr(GroupCode,3,2) = '09', '091',substr(GroupCode,3,2))
  T.persons.fio
  sImp
  Podr

sNoDoc
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate,'DD/MM/YYYY')
  replace(Summa1,'.',',')
  substr(GroupCode,1,2)
  sVed
  Podr




 replace(Groupitogo1,'.',',')          
 replace(itogo1,'.',',')
.endfields
.begin
myorg1:= sgettune('myorg')
  RunDialog('Get_NoDoc', sNoDoc, isFin);
end.
NoDocDataDocPSKodDateSummaDbDbSubDbKAU1DbKAU2DbPodrKrSoderzh
.{?internal; (isFin AND 1) != 1
��������� ������ ���ਠ���� 業���⥩
           �� ᪫���(-��) ^
                   (������������ 䨫����)
��                  ^
(���)
.{

.}
.{
.[H OVERWRITE
 ������������ ⮢�����.�������.���������ࠧ����������  ��� ��室����-����⭠� 業�,  �⮨����� � ����� 
��㯯����������७��(��� � ����. ⥫.)��業��, ��.
.]H
.}
.{
.{?internal; (isFin AND 1) != 1
^ ^
.}
.{CheckEnter
.{?internal;substr(NameMC,1,5)<>'�⮣�' 
.begin
if (T.getfirst katmc != tsOK)
{
  NameMC:='!!!�訡��!!!' + NameMC;
}
else
{
   if (T.getfirst imp = tsOK)
   {
       sImp:='������� ���'
   }
   else
   {
       sImp:=''
   }
   if (T.getfirst ved = tsOK)
   {
       if (T.getfirst spkau = tsOK)
      {
            sVED:=T.spkau.name
       }
       else sVED:='';
   }
   else
   {
       sVED:=''
   }



}
end.
^^@@@@@@@@@@@@@@@@@@@@@@@@@@^^^^&'&&&&&&&&&&&&&&.&&&'&&&&&&&&&&&&&&.&&&'&&&&&&&&&&&&&&.&&^^9^^^^^^^�������㦥��� ���⪨ �� ���
^^9^^010^^�������㦥��� ���⪨ �� ���
.}
.}
.{?internal; (isFin AND 1) != 1
 ����� �� ������  &'&&&&&&&&&&&&&&.&&
.}
.}                                                                                                                          
.}
.{?internal; (isFin AND 1) != 1
 ����� &'&&&&&&&&&&&&&&.&&
.}
.endform
