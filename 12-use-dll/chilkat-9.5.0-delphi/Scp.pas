unit Scp;

interface

type

HCkTask = Pointer;
HCkScp = Pointer;
HCkSsh = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkScp_Create: HCkScp; stdcall;
procedure CkScp_Dispose(handle: HCkScp); stdcall;
function CkScp_getAbortCurrent(objHandle: HCkScp): wordbool; stdcall;

procedure CkScp_putAbortCurrent(objHandle: HCkScp; newPropVal: wordbool); stdcall;

procedure CkScp_getDebugLogFilePath(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putDebugLogFilePath(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__debugLogFilePath(objHandle: HCkScp): PWideChar; stdcall;

function CkScp_getHeartbeatMs(objHandle: HCkScp): Integer; stdcall;

procedure CkScp_putHeartbeatMs(objHandle: HCkScp; newPropVal: Integer); stdcall;

procedure CkScp_getLastErrorHtml(objHandle: HCkScp; outPropVal: HCkString); stdcall;

function CkScp__lastErrorHtml(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getLastErrorText(objHandle: HCkScp; outPropVal: HCkString); stdcall;

function CkScp__lastErrorText(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getLastErrorXml(objHandle: HCkScp; outPropVal: HCkString); stdcall;

function CkScp__lastErrorXml(objHandle: HCkScp): PWideChar; stdcall;

function CkScp_getLastMethodSuccess(objHandle: HCkScp): wordbool; stdcall;

procedure CkScp_putLastMethodSuccess(objHandle: HCkScp; newPropVal: wordbool); stdcall;

function CkScp_getPercentDoneScale(objHandle: HCkScp): Integer; stdcall;

procedure CkScp_putPercentDoneScale(objHandle: HCkScp; newPropVal: Integer); stdcall;

procedure CkScp_getSyncedFiles(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putSyncedFiles(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__syncedFiles(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getSyncMustMatch(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putSyncMustMatch(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__syncMustMatch(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getSyncMustMatchDir(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putSyncMustMatchDir(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__syncMustMatchDir(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getSyncMustNotMatch(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putSyncMustNotMatch(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__syncMustNotMatch(objHandle: HCkScp): PWideChar; stdcall;

procedure CkScp_getSyncMustNotMatchDir(objHandle: HCkScp; outPropVal: HCkString); stdcall;

procedure CkScp_putSyncMustNotMatchDir(objHandle: HCkScp; newPropVal: PWideChar); stdcall;

function CkScp__syncMustNotMatchDir(objHandle: HCkScp): PWideChar; stdcall;

function CkScp_getVerboseLogging(objHandle: HCkScp): wordbool; stdcall;

procedure CkScp_putVerboseLogging(objHandle: HCkScp; newPropVal: wordbool); stdcall;

procedure CkScp_getVersion(objHandle: HCkScp; outPropVal: HCkString); stdcall;

function CkScp__version(objHandle: HCkScp): PWideChar; stdcall;

function CkScp_DownloadBinary(objHandle: HCkScp; remotePath: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkScp_DownloadBinaryAsync(objHandle: HCkScp; remotePath: PWideChar): HCkTask; stdcall;

function CkScp_DownloadBinaryEncoded(objHandle: HCkScp; remotePath: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkScp__downloadBinaryEncoded(objHandle: HCkScp; remotePath: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkScp_DownloadBinaryEncodedAsync(objHandle: HCkScp; remotePath: PWideChar; encoding: PWideChar): HCkTask; stdcall;

function CkScp_DownloadFile(objHandle: HCkScp; remotePath: PWideChar; localPath: PWideChar): wordbool; stdcall;

function CkScp_DownloadFileAsync(objHandle: HCkScp; remotePath: PWideChar; localPath: PWideChar): HCkTask; stdcall;

function CkScp_DownloadString(objHandle: HCkScp; remotePath: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkScp__downloadString(objHandle: HCkScp; remotePath: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkScp_DownloadStringAsync(objHandle: HCkScp; remotePath: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkScp_SaveLastError(objHandle: HCkScp; path: PWideChar): wordbool; stdcall;

function CkScp_SyncTreeDownload(objHandle: HCkScp; remoteRoot: PWideChar; localRoot: PWideChar; mode: Integer; bRecurse: wordbool): wordbool; stdcall;

function CkScp_SyncTreeDownloadAsync(objHandle: HCkScp; remoteRoot: PWideChar; localRoot: PWideChar; mode: Integer; bRecurse: wordbool): HCkTask; stdcall;

function CkScp_SyncTreeUpload(objHandle: HCkScp; localBaseDir: PWideChar; remoteBaseDir: PWideChar; mode: Integer; bRecurse: wordbool): wordbool; stdcall;

function CkScp_SyncTreeUploadAsync(objHandle: HCkScp; localBaseDir: PWideChar; remoteBaseDir: PWideChar; mode: Integer; bRecurse: wordbool): HCkTask; stdcall;

function CkScp_UploadBinary(objHandle: HCkScp; remotePath: PWideChar; binData: HCkByteData): wordbool; stdcall;

function CkScp_UploadBinaryAsync(objHandle: HCkScp; remotePath: PWideChar; binData: HCkByteData): HCkTask; stdcall;

function CkScp_UploadBinaryEncoded(objHandle: HCkScp; remotePath: PWideChar; encodedData: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkScp_UploadBinaryEncodedAsync(objHandle: HCkScp; remotePath: PWideChar; encodedData: PWideChar; encoding: PWideChar): HCkTask; stdcall;

function CkScp_UploadFile(objHandle: HCkScp; localPath: PWideChar; remotePath: PWideChar): wordbool; stdcall;

function CkScp_UploadFileAsync(objHandle: HCkScp; localPath: PWideChar; remotePath: PWideChar): HCkTask; stdcall;

function CkScp_UploadString(objHandle: HCkScp; remotePath: PWideChar; textData: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkScp_UploadStringAsync(objHandle: HCkScp; remotePath: PWideChar; textData: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkScp_UseSsh(objHandle: HCkScp; sshConnection: HCkSsh): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkScp_Create; external DLLName;
procedure CkScp_Dispose; external DLLName;
function CkScp_getAbortCurrent; external DLLName;
procedure CkScp_putAbortCurrent; external DLLName;
procedure CkScp_getDebugLogFilePath; external DLLName;
procedure CkScp_putDebugLogFilePath; external DLLName;
function CkScp__debugLogFilePath; external DLLName;
function CkScp_getHeartbeatMs; external DLLName;
procedure CkScp_putHeartbeatMs; external DLLName;
procedure CkScp_getLastErrorHtml; external DLLName;
function CkScp__lastErrorHtml; external DLLName;
procedure CkScp_getLastErrorText; external DLLName;
function CkScp__lastErrorText; external DLLName;
procedure CkScp_getLastErrorXml; external DLLName;
function CkScp__lastErrorXml; external DLLName;
function CkScp_getLastMethodSuccess; external DLLName;
procedure CkScp_putLastMethodSuccess; external DLLName;
function CkScp_getPercentDoneScale; external DLLName;
procedure CkScp_putPercentDoneScale; external DLLName;
procedure CkScp_getSyncedFiles; external DLLName;
procedure CkScp_putSyncedFiles; external DLLName;
function CkScp__syncedFiles; external DLLName;
procedure CkScp_getSyncMustMatch; external DLLName;
procedure CkScp_putSyncMustMatch; external DLLName;
function CkScp__syncMustMatch; external DLLName;
procedure CkScp_getSyncMustMatchDir; external DLLName;
procedure CkScp_putSyncMustMatchDir; external DLLName;
function CkScp__syncMustMatchDir; external DLLName;
procedure CkScp_getSyncMustNotMatch; external DLLName;
procedure CkScp_putSyncMustNotMatch; external DLLName;
function CkScp__syncMustNotMatch; external DLLName;
procedure CkScp_getSyncMustNotMatchDir; external DLLName;
procedure CkScp_putSyncMustNotMatchDir; external DLLName;
function CkScp__syncMustNotMatchDir; external DLLName;
function CkScp_getVerboseLogging; external DLLName;
procedure CkScp_putVerboseLogging; external DLLName;
procedure CkScp_getVersion; external DLLName;
function CkScp__version; external DLLName;
function CkScp_DownloadBinary; external DLLName;
function CkScp_DownloadBinaryAsync; external DLLName;
function CkScp_DownloadBinaryEncoded; external DLLName;
function CkScp__downloadBinaryEncoded; external DLLName;
function CkScp_DownloadBinaryEncodedAsync; external DLLName;
function CkScp_DownloadFile; external DLLName;
function CkScp_DownloadFileAsync; external DLLName;
function CkScp_DownloadString; external DLLName;
function CkScp__downloadString; external DLLName;
function CkScp_DownloadStringAsync; external DLLName;
function CkScp_SaveLastError; external DLLName;
function CkScp_SyncTreeDownload; external DLLName;
function CkScp_SyncTreeDownloadAsync; external DLLName;
function CkScp_SyncTreeUpload; external DLLName;
function CkScp_SyncTreeUploadAsync; external DLLName;
function CkScp_UploadBinary; external DLLName;
function CkScp_UploadBinaryAsync; external DLLName;
function CkScp_UploadBinaryEncoded; external DLLName;
function CkScp_UploadBinaryEncodedAsync; external DLLName;
function CkScp_UploadFile; external DLLName;
function CkScp_UploadFileAsync; external DLLName;
function CkScp_UploadString; external DLLName;
function CkScp_UploadStringAsync; external DLLName;
function CkScp_UseSsh; external DLLName;



end.
