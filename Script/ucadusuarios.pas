unit ucadusuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ucad_padrao;

type

  { Tfrmcad_usuarios }

  Tfrmcad_usuarios = class(Tfrmcad_padrao)
    DBGrid1: TDBGrid;
  private

  public

  end;

var
  frmcad_usuarios: Tfrmcad_usuarios;

implementation

{$R *.lfm}

end.

