.class public Lcom/android/settings/HarmanSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HarmanSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HarmanSettings$ServiceListener;
    }
.end annotation


# static fields
.field private static final BT_DEVICE_HTC_BOOM_BASS:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final LIVESTAGE_PROFILE_NAME_IDX_BUNDLED:I = 0x0

.field private static final LIVESTAGE_PROFILE_NAME_IDX_CL:I = 0x3

.field private static final LIVESTAGE_PROFILE_NAME_IDX_NC:I = 0x2

.field private static final LIVESTAGE_PROFILE_NAME_IDX_OTHER:I = 0x4

.field private static final LIVESTAGE_PROFILE_NAME_IDX_SOHO:I = 0x1

.field private static final REFLECT_RESULT_FAILED:I = 0x2

.field private static final REFLECT_RESULT_OK:I = 0x1

.field private static final REFLECT_RESULT_UNKNOWN:I

.field private static final TAG:Ljava/lang/String;

.field private static sAudioManager:Landroid/media/AudioManager;

.field private static sBluetoothStream:Z

.field private static sBtDevice:I

.field private static sBtState:I

.field private static sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

.field private static sHarmanDisable:I

.field private static sHarmanEnable:I

.field private static sHarmanLiveStageBundled:I

.field private static sHarmanLiveStageCL:I

.field private static sHarmanLiveStageEnable:I

.field private static sHarmanLiveStageNC:I

.field private static sHarmanLiveStageOther:I

.field private static sHarmanLiveStageProfile:I

.field private static sHarmanLiveStageSOHO:I

.field private static sHarmanSignalDoctorEnable:I

.field private static sHeadsetState:I

.field private static sHeadsetStream:Z

.field private static sIsHeadeSetStateInit:Z

.field private static sIsMiracast:Z

.field private static sLiveStageProfileNames:[Ljava/lang/String;

.field private static sReflectResult:I

.field private static sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

.field private static sWiredHdmiMode:Z

.field private static sWirelessHdmiMode:Z


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsA2dpConnected:Z

.field private mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

.field private mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/HarmanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    sput v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    sput-object v3, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    sput-object v3, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sput v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    new-instance v0, Lcom/android/settings/HarmanSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HarmanSettings$1;-><init>(Lcom/android/settings/HarmanSettings;)V

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/HarmanSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/HarmanSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/HarmanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncLiveStageState()V

    return-void
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    return p0
.end method

.method private static getLiveStageProfile(Landroid/content/Context;)I
    .locals 9

    const/4 v6, 0x1

    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    move v2, v0

    sget v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "getLiveStageProfile(): [error] reflection not OK"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageProfile:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v4, "getLiveStageProfile(): reflection failed case"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-boolean v4, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLiveStageProfile(): result=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public static getLiveStageProfileInNameIndex(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfile(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileNameIndexByValue(I)I

    move-result v0

    return v0
.end method

.method public static getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "Bundled"

    const-string v2, "Bundled"

    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez p0, :cond_0

    const-string v4, "getLatestSelectedLiveStageDeviceString(): [error] context==null && sLiveStageDeviceStrings==null"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLatestSelectedLiveStageDeviceString(): [error] empty sLiveStageDeviceStrings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileInNameIndex(Landroid/content/Context;)I

    move-result v1

    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    aget-object v2, v4, v1

    sget-boolean v4, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLatestSelectedLiveStageDeviceString(): result=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_3
    move-object v3, v2

    goto :goto_0
.end method

.method private static getLiveStageProfileNameIndexByValue(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    if-ne v2, p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStageProfileNameIndexByValue(): profile value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -> index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    if-ne v2, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    if-ne v2, p0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    if-ne v2, p0, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    if-ne v2, p0, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStageProfileNameIndexByValue(): [error] unknown LiveStage value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLiveStageProfileValueByNameIndex(I)I
    .locals 4

    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    move v1, v0

    packed-switch p0, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStageProfileValueByNameIndex(): [error] unknown index value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    :goto_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStageProfileNameIndexByValue(): profile name index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -> profile value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    return v1

    :pswitch_0
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    goto :goto_0

    :pswitch_3
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    goto :goto_0

    :pswitch_4
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getLiveStageSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    const v7, 0x7f0c06d5

    const v6, 0x7f0c0142

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    const-string v2, "getLiveStageSummary(): [error] context==null"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    if-eqz v2, :cond_2

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0140

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLiveStageSummary(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    if-eqz v2, :cond_4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0c011b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v3, v5

    const-string v2, ""

    aput-object v2, v3, v4

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v2, 0x7f0c013a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    if-ne v2, v4, :cond_6

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget v2, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-ne v2, v4, :cond_9

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v4, v2, :cond_7

    const v2, 0x7f0c0143

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    if-eqz v2, :cond_a

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0139

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const v2, 0x7f0c0141

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private getReflectFieldInt(Ljava/lang/reflect/Field;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto :goto_0

    :catch_1
    move-exception v1

    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto :goto_0
.end method

.method private initRefections()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-eq v6, v2, :cond_0

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "initRefections(): already init"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "android.media.AudioManager"

    const-string v2, "android.media.AudioManager"

    invoke-static {v2}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHarmanProperty"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    sput v5, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    const-string v2, "initRefections(): [error] \'getHarmanProperty\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "setHarmanProperty"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    sput v5, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    const-string v2, "initRefections(): [error] \'setHarmanProperty\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "HARMAN_SIGNALDOCTOR_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanSignalDoctorEnable:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_5

    const-string v2, "initRefections(): [error] \'HARMAN_SIGNALDOCTOR_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "HARMAN_LIVESTAGE_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageEnable:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_6

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "HARMAN_LIVESTAGE_PROFILE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageProfile:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_7

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_PROFILE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "HARMAN_DISABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_8

    const-string v2, "initRefections(): [error] \'HARMAN_DISABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "HARMAN_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanEnable:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_9

    const-string v2, "initRefections(): [error] \'HARMAN_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "HARMAN_LIVESTAGE_BUNDLED"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_a

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_BUNDLED\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "HARMAN_LIVESTAGE_SOHO"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_b

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_SOHO\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "HARMAN_LIVESTAGE_NC"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_c

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_NC\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "HARMAN_LIVESTAGE_CL"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_d

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_CL\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "HARMAN_LIVESTAGE_OTHER"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_e

    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_OTHER\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "initRefections(): OK"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanSignalDoctorEnable=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanSignalDoctorEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageEnable=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageProfile=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanDisable=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanEnable=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageBundled=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageSOHO=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageNC=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageCL=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRefections(): sHarmanLiveStageOther=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_f
    sput v6, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto/16 :goto_0
.end method

.method private static varargs invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "invokeReflectMethod(): [error] method==null"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] InvocationTargetException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isLiveStageEnabled()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    if-nez v2, :cond_1

    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "isLiveStageEnabled(): result==false, case of init state not sync yet."

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    if-ne v2, v1, :cond_2

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    if-nez v2, :cond_3

    :cond_2
    sget v2, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-ne v2, v1, :cond_4

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-eq v1, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLiveStageEnabled(): result=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isLiveStageTurnedOn(Landroid/content/Context;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget v7, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v7, v6, :cond_0

    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    :cond_0
    const-string v5, "isLiveStageTurnedOn(): [error] reflection not OK"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v8, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    new-array v9, v6, [Ljava/lang/Object;

    sget v10, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageEnable:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v5, "isLiveStageTurnedOn(): reflection failed case"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v7, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    if-ne v7, v4, :cond_5

    move v2, v5

    :goto_1
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLiveStageTurnedOn(): result=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", valueInDb=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1
.end method

.method private isMiracastConnected()Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "display"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Lcom/htc/wrap/android/hardware/display/HtcWrapDisplayManager;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "isMiracastConnected(): currentStatus==null"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMiracastConnected(): miracastStatus=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMiracastConnected(): NoSuchMethodError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSignalDoctorTurnedOn(Landroid/content/Context;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x1

    sget v7, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v7, v6, :cond_0

    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    :cond_0
    const-string v5, "isSignalDoctorTurnedOn(): [error] reflection not OK"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v8, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    new-array v9, v6, [Ljava/lang/Object;

    sget v10, Lcom/android/settings/HarmanSettings;->sHarmanSignalDoctorEnable:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v5, "isSignalDoctorTurnedOn(): reflection failed case"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v7, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    if-ne v7, v4, :cond_5

    move v2, v5

    :goto_1
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSignalDoctorTurnedOn(): result=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", valueInDb=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1
.end method

.method private static lazyInitAudioManager(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "lazyInitAudioManager(): [error] context==null"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lazyInitialize()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HarmanSettings$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/HarmanSettings$ServiceListener;-><init>(Lcom/android/settings/HarmanSettings;Lcom/android/settings/HarmanSettings$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_1

    const-string v0, "wireless_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    :cond_1
    return-void
.end method

.method private static logV(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logW(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setLiveStageProfile(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveStageProfile(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "setLiveStageProfile(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageProfile:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLiveStageProfileByNameIndex(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileValueByNameIndex(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/HarmanSettings;->setLiveStageProfile(Landroid/content/Context;I)V

    return-void
.end method

.method private setLiveStageSetting(ZZLjava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    if-nez v1, :cond_0

    const-string v1, "setLiveStageSetting(): [error] mLiveStageSetting==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveStageSetting(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "setLiveStageSetting(): [error] toggleButton==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "disabled"

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method

.method public static setLiveStageTurnedOn(Landroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/settings/HarmanSettings;->isLiveStageEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setLiveStageTurnedOn(): ignore, triggered by grey-out disable case"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveStageTurnedOn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "setLiveStageTurnedOn(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget v4, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageEnable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    if-eqz p1, :cond_5

    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanEnable:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    goto :goto_1
.end method

.method private setSignalDoctorSetting(ZLjava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "setSignalDoctorSetting(): [error] toggleButton==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_1
.end method

.method public static setSignalDoctorTurnedOn(Landroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalDoctorTurnedOn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "setSignalDoctorTurnedOn(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget v4, Lcom/android/settings/HarmanSettings;->sHarmanSignalDoctorEnable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    if-eqz p1, :cond_4

    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanEnable:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/settings/HarmanSettings;->invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    goto :goto_1
.end method

.method private syncLiveStageState()V
    .locals 8

    const v7, 0x7f0c06d5

    const v6, 0x7f0c0142

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->updateStateForLiveStage()V

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "syncLiveStageState(): Miracast case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0140

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "syncLiveStageState(): wireless HDMI case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0c011b

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v3, v4

    const-string v2, ""

    aput-object v2, v3, v5

    invoke-virtual {p0, v6, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0c013a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    if-ne v2, v5, :cond_7

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncLiveStageState(): wired headset case, enabled/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v5, v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    sget v2, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-ne v2, v5, :cond_c

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    if-eqz v2, :cond_c

    sget v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v5, v2, :cond_9

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "syncLiveStageState(): boom bass case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_8
    const v2, 0x7f0c0143

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncLiveStageState(): BT headset case, enabled/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, v5, v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_c
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "syncLiveStageState(): wired HDMI case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_d
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0139

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "syncLiveStageState(): internal speaker or other case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_f
    const v2, 0x7f0c0141

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private syncSignalDoctorState()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->isSignalDoctorTurnedOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c06d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/HarmanSettings;->setSignalDoctorSetting(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method private updateStateForLiveStage()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->lazyInitialize()V

    sput v7, Lcom/android/settings/HarmanSettings;->sBtState:I

    sput v7, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    iget-boolean v5, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    sput v8, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_0

    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sput v8, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    :cond_3
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->isMiracastConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    :cond_4
    sget-object v5, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_5

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_5
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_6

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_6
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_7

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_7
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_8

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_8
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_9

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_9
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_a

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_a
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_b

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_b
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_c

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_c
    const/high16 v5, 0x4000

    and-int/2addr v5, v4

    if-lez v5, :cond_d

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_d
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_e

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_e
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_f

    :cond_f
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_10

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    sget v5, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v5, v8, :cond_10

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_10
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_11

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_11
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_12

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_12
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_13

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_13
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_14

    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    :cond_14
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "output: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBluetoothStream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsMiracast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mA2dp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeadsetState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/HarmanSettings;->sBtState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWiredHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessDisplayManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWirelessHdmiMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput v8, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->initRefections()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object v2, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    sget-object v2, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method public onDestroyInBackground()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyInBackground()V

    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, close A2DP profile proxy"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncSignalDoctorState()V

    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncLiveStageState()V

    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
