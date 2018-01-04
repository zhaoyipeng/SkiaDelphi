unit SKColorSpace;

interface

uses
  SKMatrix;

type
	SKColorSpacePrimaries = packed record
  private
		fRX, fRY: Single;
		fGX, fGY: Single;
		fBX, fBY: Single;
		fWX, fWY: Single;

		constructor Create(rx, ry, gx, gy, bx, by, wx, wy: Single);
		property RX: Single read fRX write fRX;
		property RY: Single read fRY write fRY;
		property GX: Single read fGX write fGX;
		property GY: Single read fGY write fGY;
		property BX: Single read fBX write fBX;
		property BY: Single read fBY write fBY;
		property WX: Single read fWX write fWX;
		property WY: Single read fWY write fWY;

		function ToXyzD50 (toXyzD50: SKMatrix44 ): boolean; overload;
		function ToXyzD50: SKMatrix44; overload;
  end;

	SKColorSpaceTransferFn = packed record
  private
		fG: Single;
		fA: Single;
		fB: Single;
		fC: Single;
		fD: Single;
		fE: Single;
		fF: Single;

		constructor Create (g, a, b, c, d, e, f: Single);
		property G: Single read fG write fG;
    property A: Single read fA write fA;
    property B: Single read fB write fB;
    property C: Single read fC write fC;
    property D: Single read fD write fD;
    property E: Single read fE write fE;
    property F: Single read fF write fF;

    function Invert: SKColorSpaceTransferFn;
  end;
implementation

uses
  SkiaApi;

{ SKColorSpaceTransferFn }

constructor SKColorSpaceTransferFn.Create(g, a, b, c, d, e, f: Single);
begin
  fG := g;
  fA := a;
  fB := b;
  fC := c;
  fD := d;
  fE := e;
  fF := f;
end;

function SKColorSpaceTransferFn.Invert: SKColorSpaceTransferFn;
begin
  SkiaApi.sk_colorspace_transfer_fn_invert (Self, Result);
end;

{ SKColorSpacePrimaries }

constructor SKColorSpacePrimaries.Create(rx, ry, gx, gy, bx, by, wx,
  wy: Single);
begin

end;

function SKColorSpacePrimaries.ToXyzD50(toXyzD50: SKMatrix44): boolean;
begin

end;

function SKColorSpacePrimaries.ToXyzD50: SKMatrix44;
begin

end;

end.
