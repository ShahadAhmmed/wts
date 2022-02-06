#if defined _sampvoice_included
	#endinput
#endif
#define _sampvoice_included

#define SV_VERSION			10

#define SV_NULL				0
#define SV_INFINITY			-1
#define SV_FALSE			false
#define SV_TRUE				true

enum SV_PARAMETER
{
    SV_PARAMETER_FREQUENCY = 1,
    SV_PARAMETER_VOLUME    = 2,
    SV_PARAMETER_PANNING   = 3,
    SV_PARAMETER_EAXMIX    = 4,
    SV_PARAMETER_SRC       = 8
}

#define SV_PTR:
#define SV_INT:
#define SV_UINT:
#define SV_FLOAT:			Float:
#define SV_BOOL:			bool:
#define SV_VOID:			void:

#define SV_STREAM:			SV_PTR:
#define SV_GSTREAM:			SV_PTR:
#define SV_LSTREAM:			SV_PTR:
#define SV_LPSTREAM:		SV_PTR:
#define SV_SLSTREAM:		SV_PTR:
#define SV_DLSTREAM:		SV_PTR:

native SV_VOID:SvDebug(SV_BOOL:mode);

native SV_VOID:SvInit(SV_UINT:bitrate);
native SV_UINT:SvGetVersion(SV_UINT:playerid);

native SV_BOOL:SvHasMicro(SV_UINT:playerid);
native SV_BOOL:SvStartRecord(SV_UINT:playerid);
native SV_BOOL:SvStopRecord(SV_UINT:playerid);

native SV_BOOL:SvAddKey(SV_UINT:playerid, SV_UINT:keyid);
native SV_BOOL:SvHasKey(SV_UINT:playerid, SV_UINT:keyid);
native SV_BOOL:SvRemoveKey(SV_UINT:playerid, SV_UINT:keyid);
native SV_VOID:SvRemoveAllKeys(SV_UINT:playerid);

native SV_BOOL:SvMutePlayerStatus(SV_UINT:playerid);
native SV_VOID:SvMutePlayerEnable(SV_UINT:playerid);
native SV_VOID:SvMutePlayerDisable(SV_UINT:playerid);

native SV_GSTREAM:SvCreateGStream(SV_UINT:color = SV_NULL, name[] = "");

native SV_LPSTREAM:SvCreateSLStreamAtPoint(SV_FLOAT:distance, SV_FLOAT:posx, SV_FLOAT:posy, SV_FLOAT:posz, SV_UINT:color = SV_NULL, name[] = "");
native SV_SLSTREAM:SvCreateSLStreamAtVehicle(SV_FLOAT:distance, SV_UINT:vehicleid, SV_UINT:color = SV_NULL, name[] = "");
native SV_SLSTREAM:SvCreateSLStreamAtPlayer(SV_FLOAT:distance, SV_UINT:playerid, SV_UINT:color = SV_NULL, name[] = "");
native SV_SLSTREAM:SvCreateSLStreamAtObject(SV_FLOAT:distance, SV_UINT:objectid, SV_UINT:color = SV_NULL, name[] = "");

native SV_LPSTREAM:SvCreateDLStreamAtPoint(SV_FLOAT:distance, SV_UINT:maxplayers, SV_FLOAT:posx, SV_FLOAT:posy, SV_FLOAT:posz, SV_UINT:color = SV_NULL, name[] = "");
native SV_DLSTREAM:SvCreateDLStreamAtVehicle(SV_FLOAT:distance, SV_UINT:maxplayers, SV_UINT:vehicleid, SV_UINT:color = SV_NULL, name[] = "");
native SV_DLSTREAM:SvCreateDLStreamAtPlayer(SV_FLOAT:distance, SV_UINT:maxplayers, SV_UINT:playerid, SV_UINT:color = SV_NULL, name[] = "");
native SV_DLSTREAM:SvCreateDLStreamAtObject(SV_FLOAT:distance, SV_UINT:maxplayers, SV_UINT:objectid, SV_UINT:color = SV_NULL, name[] = "");

native SV_VOID:SvUpdateDistanceForLStream(SV_LSTREAM:lstream, SV_FLOAT:distance);
native SV_VOID:SvUpdatePositionForLPStream(SV_LPSTREAM:lpstream, SV_FLOAT:posx, SV_FLOAT:posy, SV_FLOAT:posz);

native SV_BOOL:SvAttachListenerToStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_BOOL:SvHasListenerInStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_BOOL:SvDetachListenerFromStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_VOID:SvDetachAllListenersFromStream(SV_STREAM:stream);

native SV_BOOL:SvAttachSpeakerToStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_BOOL:SvHasSpeakerInStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_BOOL:SvDetachSpeakerFromStream(SV_STREAM:stream, SV_UINT:playerid);
native SV_VOID:SvDetachAllSpeakersFromStream(SV_STREAM:stream);

native SV_VOID:SvDeleteStream(SV_STREAM:stream);

native SV_VOID:SvStreamParameterSet(SV_STREAM:stream, SV_PARAMETER:parameter, SV_FLOAT:value);
native SV_VOID:SvStreamParameterReset(SV_STREAM:stream, SV_PARAMETER:parameter);
native SV_BOOL:SvStreamParameterHas(SV_STREAM:stream, SV_PARAMETER:parameter);
native SV_FLOAT:SvStreamParameterGet(SV_STREAM:stream, SV_PARAMETER:parameter);
native SV_VOID:SvStreamParameterSlideFromTo(SV_STREAM:stream, SV_PARAMETER:parameter, SV_FLOAT:startvalue, SV_FLOAT:endvalue, SV_UINT:time);
native SV_VOID:SvStreamParameterSlideTo(SV_STREAM:stream, SV_PARAMETER:parameter, SV_FLOAT:endvalue, SV_UINT:time);
native SV_VOID:SvStreamParameterSlide(SV_STREAM:stream, SV_PARAMETER:parameter, SV_FLOAT:deltavalue, SV_UINT:time);
forward SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid);
forward SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid);
