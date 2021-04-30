unit GoogleAnalyticsGlobal;

interface

uses
  Google.Controller.Analytics.Interfaces;

var _GoogleAnalytics: iControllerGoogleAnalytics;

implementation

uses
  Google.Controller.Analytics;

const
  GooglePropertyID =  'YOUR-UA-HERE';
  AppName = 'Empresa';
  AppLicense = 'Comercial';
  AppEdition = 'ERP';
  VersaoSistema = '1.0.0';

initialization
  _GoogleAnalytics := TControllerGoogleAnalytics
      .New(GooglePropertyID);

  _GoogleAnalytics.AppInfo
      .AppName(AppName)
      .AppVersion(VersaoSistema)
      .AppLicense(AppLicense)
      .AppEdition(AppEdition);

end.
