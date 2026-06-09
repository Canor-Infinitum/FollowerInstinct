unit FollowerInstinct_FFI;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// FFI Declarations
function instinct_calculate_omega(n: PtrUInt): QWord; cdecl; external 'followerinstinct.dll';
function instinct_ecc_decode(received: Byte; out output: Byte): Boolean; cdecl; external 'followerinstinct.dll';
function instinct_render_voxels(x_size, y_size, z_level: Integer; out_buf: PChar; out_max: DWord): DWord; cdecl; external 'followerinstinct.dll';
function instinct_correlate_oeis(
  project_info_ptr: PChar; project_info_len: DWord;
  db_info_ptr: PChar; db_info_len: DWord;
  out_buf: PChar; out_max: DWord
): DWord; cdecl; external 'followerinstinct.dll';

implementation

end.
