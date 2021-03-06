unit GoogleAnalyticsExports;

interface

uses Google.Controller.Analytics.Interfaces;

type
    TGoogleAnalyticsExports = class
    end;

    procedure EventExports(ACategory, AAction, ALabel: String; AValue: Integer = 0);
    exports EventExports;

    function PageViewExports(ADocumentHostName, APage, ATitle: String): IControllerGoogleAnalytics;
    exports PageViewExports;

    function StartSessionExports: IControllerGoogleAnalytics;
    exports StartSessionExports;

    function EndSessionExports: IControllerGoogleAnalytics;
    exports EndSessionExports;




implementation

uses GoogleAnalyticsGlobal;


procedure EventExports(ACategory, AAction, ALabel: String; AValue: Integer = 0);
begin
    _GoogleAnalytics
        .Event(ACategory,
            AAction,
                ALabel,
                    AValue);
end;

function PageViewExports(ADocumentHostName, APage, ATitle: String): IControllerGoogleAnalytics;
begin
    _GoogleAnalytics
        .PageView(ADocumentHostName,
            APage,
                ATitle);
end;

function StartSessionExports;
begin
    _GoogleAnalytics.StartSession;
end;

function EndSessionExports;
begin
    _GoogleAnalytics.EndSession;
end;


end.
