.LinkForm 'PLATDOCS_NPS' Prototype is 'PLATDOCS'
.Group '������������� �������'
.NameInList '��७�� �஢���� �� �� 2021 as is'
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
  pass : string[20]
.endvar
.Create      view T
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
  if(Message('��������! ��� �㭪樮��� ������� �஢���� �� ����ࠢ�� � ���� ���� ��⮢ 2021 ����'+chr(13)
           + '�������� ����஢����?', Warning + okCancel) = cmCancel)
           {
              PLATDOCS_NPS.fExit;
           };
  RunDialog('Get_Password', pass);
  if(pass != '123!@#')
  {
    Message('������ ��஫�');
    PLATDOCS_NPS.fExit;
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
����������! ��易⥫쭮 �஢���� ᮮ⢥��⢨� ��ନ஢����� �஢����
������� ����� ��⮢ 2021 ����!!! �஢���� ��७������ as is (���� � ����)
�� ����୮� ����᪥ �஢�ઠ �� ����稥 �஢���� �� ������ �� �� �஢������!
����쪮 ࠧ ������� - �⮫쪮 ࠧ ᪮�������.
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
��.begin
  Prim:='';
  if(T.getfirst oborot where ((OborotNRec == oborot.nrec))= tsOK)
  {
    if(T.oborot.cPlanSsch != 281474976710921)
    {
      Prim:='��३��� �� �� 2012 ����!';
    }
    else
    {
        oborot.nrec      := comp(0);
        oborot.cPlanSSch :=100000000010Bh;
        oborot.scheto := '9'+SubStr(t.oborot.scheto,2,(length(t.oborot.scheto)-1));
        oborot.schetk := '9'+SubStr(t.oborot.schetk,2,(length(t.oborot.schetk)-1));
        if(insert current oborot != tsOK)
        {
          Prim:='�訡�� ��⠢�� �஢����';
        }
     }
  }
  else
  {
    Prim:='��� �஢���� ��� �訡�� ����樮��஢����';
  }
  if (Prim = '') Prim:='OK';
end.��
��  @@@ @@@@@ @#@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@ @@@@ @@@@@ @#@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@ &#&&&&&&&& @~@@@@@@@@    @  &#&&&&&&&&&&&&&&  ��^��
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
