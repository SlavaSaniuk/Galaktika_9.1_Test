.LinkForm 'PLATDOCS_CHANGE_CORR' Prototype is 'PLATDOCS'
.Group '������������� �������'
.NameInList '����� ����ᯮ����樨 � �஢�����'
.var
  l:Word
  first:Word
  last:Word
  max:Word
  i:Word
  j:Word
  k:Word
  Str:String
  Prim:String
  Arr: ARRAY [1..605] of Char
  tSchetO:String[21]
  tSubOsSch:String[21]
  tTblOs1:Word
  tTblOs2:Word
  tTblOs3:Word
  tTblOs4:Word
  tTblOs5:Word
  tTblOs6:Word
  tKAUOs1:Comp
  tKAUOs2:Comp
  tKAUOs3:Comp
  tKAUOs4:Comp
  tKAUOs5:Comp
  tKAUOs6:Comp
  tKodSPO:Comp
  tDBSchetO:String[20]
  pass:String[20]
.endvar
.Create         view T
as select *
from oborot
;
.fields
  OurTuneName
  NoDok
  DatOb2
  sumplatdoc
  dbSchetO
  SubOsSch
  KodSPO
  dbKAU
  krSchetK
  SubSchK
  KodSPK
  krKAU
  AvSumU
  NoAODoc
  VhProp
  SumObInVal+ObValut//  OborotNRec
  Prim//  T.oborot.cPlanSsch
  if(l=1,'�⮣�','')
  SumObValut+ItsValut
  SumObNDETotal+ndesimv
  Str
  Str
  Str
  if(�����ᠭ�_���� = '',�����ᠭ�_���������, �����ᠭ�_����)
  �����ᠭ�_���
  MainAccountantAbbrev
  PerformerNameAbbrev
  page_symb
.endfields
.begin
  if(Message('��������! ��� �㭪樮��� ����� ����ᯮ������ (��-��) �஢���� �� ����ࠢ��'+chr(13)
           + '�������� ���������?', Warning + okCancel) = cmCancel)
           {
              PLATDOCS_change_corr.fExit;
           };
  RunDialog('Get_Password', pass);
  if(pass != '123!@#')
  {
    Message('������ ��஫�');
    PLATDOCS_change_corr.fExit;
  }
end.
.{
��
�� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                                       �࣠��������
��
                                            ������������� ������� � @@@@@@@@@
                                                ��  @@@@@@@@@@@@@@@@@@@
                                        �� �㬬� �� ���㬥����� &~&&&&&&&&&&&&.&&
�� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                       �������      ��                  �                     ���।��     ��                  �          �         �         �              �
 �����������������������������������������������������������������������������������������������������Ĵ          �         �         �              �
 ������������- �������� �������-���         ����ꥪ���           �������������-�� ������ �������-���         ����ꥪ���          ���������⢮��� ����������� ����室�� ��� �    ���㬬���     �         ��      ���������
     �������� ������� ���ࠧ�.���     ���������᪮����       �    �������� ������� ���ࠧ�.���     ���������᪮����      �          �������७�����  ���㬬���  �              �            ��  ����஢������
     �     �             �         �������            �    �     �             �         �������           �          �         ������㬥�����              �
 ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

.{CheckEnter PLATDOCSCYCLEDOCRASH
.}
.{CheckEnter DOCVALCURS
.}
.{
.begin
  Prim:='';
  if(T.getfirst oborot where ((OborotNRec == oborot.nrec))= tsOK)
  {
        tSchetO := oborot.scheto;
        tSubOsSch:=oborot.SubOsSch;
        tTblOs1 := oborot.TblOs[1];
        tTblOs2 := oborot.TblOs[2];
        tTblOs3 := oborot.TblOs[3];
        tTblOs4 := oborot.TblOs[4];
        tTblOs5 := oborot.TblOs[5];
        tTblOs6 := oborot.TblOs[6];
        tKAUOs1 := oborot.KAUOs[1];
        tKAUOs2 := oborot.KAUOs[2];
        tKAUOs3 := oborot.KAUOs[3];
        tKAUOs4 := oborot.KAUOs[4];
        tKAUOs5 := oborot.KAUOs[5];
        tKAUOs6 := oborot.KAUOs[6];
        tKodSPO := oborot.kodspo;
        tDBSchetO:=oborot.DBSchetO;

        oborot.scheto  :=oborot.schetk;
        oborot.SubOsSch:=oborot.subschk;
        oborot.TblOs[1]:=oborot.tblks[1];
        oborot.TblOs[2]:=oborot.tblks[2];
        oborot.TblOs[3]:=oborot.tblks[3];
        oborot.TblOs[4]:=oborot.tblks[4];
        oborot.TblOs[5]:=oborot.tblks[5];
        oborot.TblOs[6]:=oborot.tblks[6];
        oborot.KAUOs[1]:=oborot.kauks[1];
        oborot.KAUOs[2]:=oborot.kauks[2];
        oborot.KAUOs[3]:=oborot.kauks[3];
        oborot.KAUOs[4]:=oborot.kauks[4];
        oborot.KAUOs[5]:=oborot.kauks[5];
        oborot.KAUOs[6]:=oborot.kauks[6];
        oborot.kodspo  :=oborot.kodspk;
        oborot.DBSchetO:=oborot.krschetk;

        oborot.schetk  := tSchetO;
        oborot.subschk := tSubOsSch;
        oborot.tblks[1]:= tTblOs1;
        oborot.tblks[2]:= tTblOs2;
        oborot.tblks[3]:= tTblOs3;
        oborot.tblks[4]:= tTblOs4;
        oborot.tblks[5]:= tTblOs5;
        oborot.tblks[6]:= tTblOs6;
        oborot.kauks[1]:= tKAUOs1;
        oborot.kauks[2]:= tKAUOs2;
        oborot.kauks[3]:= tKAUOs3;
        oborot.kauks[4]:= tKAUOs4;
        oborot.kauks[5]:= tKAUOs5;
        oborot.kauks[6]:= tKAUOs6;
        oborot.kodspk  := tKodSPO;
        oborot.krschetk:= tDBSchetO;

        if(update current oborot != tsOK)
        {
          Prim:='�訡�� ����䨪�樨 �஢����';
        }
  }
  else
  {
    Prim:='��� �஢���� ��� �訡�� ����樮��஢����';
  }
  if (Prim = '') Prim:='OK';
end.
  @@@ @@@@@ @#@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@ @@@@ @@@@@ @#@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@ &#&&&&&&&& @~@@@@@@@@    @  &#&&&&&&&&&&&&&&  ��^��
.}
.begin
 l:= 0;
end.
.{
.{?internal;(ObValut <> ndesimv)
.begin
 l:= l + 1;
end.
  @@@@@                                                                                                                             &#&&&&&&&&&&&&&&
.}
.}
.{?internal;(ObValut = ndesimv)
  �⮣�                                                                                                                             &#&&&&&&&&&&&&&&
.}
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
�� ����ঠ��� ����樨��

.begin
 j := 1;

 for (i:=1; i <= length(NamePl1); i:=i+1)
 {
   Arr[j] := Chr(Substr(NamePl1, i, 1));
   Inc(j);
 }
 if length(NamePl1) <> 0
 {
   Arr[j] := ' ';
   Inc(j);
 }
 for (i:=1; i <= length(NamePl2); i:=i+1)
 {
   Arr[j] := Chr(Substr(NamePl2, i, 1));
   Inc(j);
 }
 if length(NamePl2) <> 0
 {
   Arr[j] := ' ';
   Inc(j);
 }
 for (i:=1; i <= length(NamePl3); i:=i+1)
 {
   Arr[j] := Chr(Substr(NamePl3, i, 1));
   Inc(j);
 }
 if length(NamePl3) <> 0
 {
   Arr[j] := ' ';
   Inc(j);
 }
 for (i:=1; i <= length(NamePl4); i:=i+1)
 {
   Arr[j] := Chr(Substr(NamePl4, i, 1));
   Inc(j);
 }
 if length(NamePl4) <> 0
 {
   Arr[j] := ' ';
   Inc(j);
 }
 for (i:=1; i <= length(NamePl5); i:=i+1)
 {
   Arr[j] := Chr(Substr(NamePl5, i, 1));
   Inc(j);
 }
 if length(NamePl5) <> 0
 {
   Arr[j] := ' ';
   Inc(j);
 }
 for (i:=1; i <= length(DetaliPl); i:=i+1)
 {
   Arr[j] := Chr(Substr(DetaliPl, i, 1));
   Inc(j);
 }

 max := j - 1;
 first := 1;

 if (max > 252)
   last := 252;
 else
   last := max;

 k := 0;
end.

.{?internal;(max DIV 252) >= k
.begin
 Str := '';
 k := k + 1;

 for (i := first; i <= last; i := i + 1)
   str := str + Arr[i];

 first := last + 1;

 if (max - last) > 252
   last := first + 252;
 else
   last := first + max - last;
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{?internal;(max DIV 252) >= k
.begin
 Str := '';
 k := k + 1;

 for (i := first; i <= last; i := i + 1)
   str := str + Arr[i];

 first := last + 1;

 if (max - last) > 252
   last := first + 252;
 else
   last := first + max - last;
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{?internal;(max DIV 252) >= k
.begin
 Str := '';
 k := k + 1;

 for (i := first; i <= last; i := i + 1)
   str := str + Arr[i];

 first := last + 1;

 if (max - last) > 252
   last := first + 252;
 else
   last := first + max - last;
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}



.{
.{
.{
.}
.}
.}
.{CheckEnter PLATDOCSCYCLEVKASSU
.{CheckEnter PLATDOCSCYCLEMEMO1
.}
.}
.{CheckEnter PLATDOCSCYCLEIZKASSY
.{CheckEnter PLATDOCSCYCLEMEMO2
.}
.}
.if EXISTFEESIGNERS_PLATDOCS
.{CheckEnter FEESIGNERSCYCLE_PLATDOCS
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.else
�� ������ ��壠��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� �ᯮ���⥫� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.end
.if DELIMITERPLAT
��-----------------------------------------------------------------------------------------------------------��
.else
.end
.if PAGESYMBOL
^
.else
.end
.}
.endform
