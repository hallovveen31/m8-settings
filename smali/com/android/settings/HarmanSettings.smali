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

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
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

    .line 41
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    .line 47
    sput v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    .line 65
    sput-object v3, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    .line 78
    sput-object v3, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    .line 79
    sput-object v3, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    .line 102
    sput v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    .line 488
    new-instance v0, Lcom/android/settings/HarmanSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HarmanSettings$1;-><init>(Lcom/android/settings/HarmanSettings;)V

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/HarmanSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/HarmanSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/HarmanSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncLiveStageState()V

    return-void
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput p0, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-boolean p0, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    return p0
.end method

.method private static getLiveStageProfile(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 864
    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    .line 865
    .local v0, DEFAULT_DEVICE_IDX:I
    move v2, v0

    .line 867
    .local v2, result:I
    sget v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 868
    :cond_0
    const-string v4, "getLiveStageProfile(): [error] reflection not OK"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 885
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 872
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v2

    .line 873
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 876
    .end local v3           #result:I
    .restart local v2       #result:I
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

    .line 877
    .local v1, i:Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 878
    const-string v4, "getLiveStageProfile(): reflection failed case"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 879
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 881
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 882
    sget-boolean v4, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 883
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

    .line 885
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public static getLiveStageProfileInNameIndex(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 890
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfile(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileNameIndexByValue(I)I

    move-result v0

    return v0
.end method

.method public static getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 959
    const-string v0, "Bundled"

    .line 960
    .local v0, DEFAULT_DEVICE:Ljava/lang/String;
    const-string v2, "Bundled"

    .line 963
    .local v2, result:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 964
    if-nez p0, :cond_0

    .line 965
    const-string v4, "getLatestSelectedLiveStageDeviceString(): [error] context==null && sLiveStageDeviceStrings==null"

    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move-object v3, v2

    .line 982
    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 968
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    .line 969
    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_2

    .line 970
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

    .line 971
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0

    .line 976
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileInNameIndex(Landroid/content/Context;)I

    move-result v1

    .line 977
    .local v1, profileNameIndex:I
    sget-object v4, Lcom/android/settings/HarmanSettings;->sLiveStageProfileNames:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 979
    sget-boolean v4, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 980
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

    .line 982
    .end local v2           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getLiveStageProfileNameIndexByValue(I)I
    .locals 4
    .parameter "liveStageProfileValue"

    .prologue
    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, DEFAULT_PROFILE_IDX:I
    const/4 v1, 0x0

    .line 899
    .local v1, result:I
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    if-ne v2, p0, :cond_1

    .line 900
    const/4 v1, 0x0

    .line 918
    :goto_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 919
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

    .line 921
    :cond_0
    return v1

    .line 902
    :cond_1
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    if-ne v2, p0, :cond_2

    .line 903
    const/4 v1, 0x1

    goto :goto_0

    .line 905
    :cond_2
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    if-ne v2, p0, :cond_3

    .line 906
    const/4 v1, 0x2

    goto :goto_0

    .line 908
    :cond_3
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    if-ne v2, p0, :cond_4

    .line 909
    const/4 v1, 0x3

    goto :goto_0

    .line 911
    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    if-ne v2, p0, :cond_5

    .line 912
    const/4 v1, 0x4

    goto :goto_0

    .line 915
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
    .parameter "profileNameIndex"

    .prologue
    .line 926
    sget v0, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    .line 927
    .local v0, DEFAULT_PROFILE_VALUE:I
    move v1, v0

    .line 929
    .local v1, result:I
    packed-switch p0, :pswitch_data_0

    .line 946
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

    .line 951
    :goto_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 952
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

    .line 955
    :cond_0
    return v1

    .line 931
    :pswitch_0
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    .line 932
    goto :goto_0

    .line 934
    :pswitch_1
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    .line 935
    goto :goto_0

    .line 937
    :pswitch_2
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    .line 938
    goto :goto_0

    .line 940
    :pswitch_3
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    .line 941
    goto :goto_0

    .line 943
    :pswitch_4
    sget v1, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    .line 944
    goto :goto_0

    .line 929
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
    .parameter "context"

    .prologue
    const v7, 0x7f0c06d5

    const v6, 0x7f0c0142

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 576
    if-nez p0, :cond_1

    .line 577
    const-string v2, "getLiveStageSummary(): [error] context==null"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    .line 629
    :cond_0
    :goto_0
    return-object v1

    .line 581
    :cond_1
    const/4 v1, 0x0

    .line 582
    .local v1, result:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    if-eqz v2, :cond_2

    .line 583
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0140

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 626
    :goto_1
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 627
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

    .line 586
    :cond_2
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    if-eqz v2, :cond_4

    .line 587
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

    .line 593
    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    if-ne v2, v4, :cond_6

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    if-eqz v2, :cond_6

    .line 594
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    .line 595
    .local v0, isLiveStageTurnedOn:Z
    if-eqz v0, :cond_5

    .line 596
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 599
    :cond_5
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 602
    .end local v0           #isLiveStageTurnedOn:Z
    :cond_6
    sget v2, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-ne v2, v4, :cond_9

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    if-eqz v2, :cond_9

    .line 603
    sget v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v4, v2, :cond_7

    .line 604
    const v2, 0x7f0c0143

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 608
    :cond_7
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    .line 609
    .restart local v0       #isLiveStageTurnedOn:Z
    if-eqz v0, :cond_8

    .line 610
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 613
    :cond_8
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 617
    .end local v0           #isLiveStageTurnedOn:Z
    :cond_9
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    if-eqz v2, :cond_a

    .line 618
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

    .line 622
    :cond_a
    const v2, 0x7f0c0141

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private getReflectFieldInt(Ljava/lang/reflect/Field;)I
    .locals 5
    .parameter "field"

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    .line 195
    const/4 v0, -0x1

    .line 197
    .local v0, DEFAULT_RESULT:I
    if-nez p1, :cond_0

    .line 198
    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    .line 208
    :goto_0
    return v2

    .line 202
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljava/lang/IllegalAccessException;
    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto :goto_0

    .line 206
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sput v4, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto :goto_0
.end method

.method private initRefections()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 213
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-eq v6, v2, :cond_0

    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_2

    .line 215
    :cond_0
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "initRefections(): already init"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    const-string v0, "android.media.AudioManager"

    .line 222
    .local v0, FULL_CLASS_NAME:Ljava/lang/String;
    const-string v2, "android.media.AudioManager"

    invoke-static {v2}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, REFLECT_CLASS:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "getHarmanProperty"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    .line 226
    sget-object v2, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 227
    sput v5, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    .line 228
    const-string v2, "initRefections(): [error] \'getHarmanProperty\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 231
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

    .line 232
    sget-object v2, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    .line 233
    sput v5, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    .line 234
    const-string v2, "initRefections(): [error] \'setHarmanProperty\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    const-string v2, "HARMAN_SIGNALDOCTOR_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanSignalDoctorEnable:I

    .line 241
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_5

    .line 242
    const-string v2, "initRefections(): [error] \'HARMAN_SIGNALDOCTOR_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_5
    const-string v2, "HARMAN_LIVESTAGE_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageEnable:I

    .line 248
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_6

    .line 249
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_6
    const-string v2, "HARMAN_LIVESTAGE_PROFILE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageProfile:I

    .line 255
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_7

    .line 256
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_PROFILE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_7
    const-string v2, "HARMAN_DISABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    .line 264
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_8

    .line 265
    const-string v2, "initRefections(): [error] \'HARMAN_DISABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_8
    const-string v2, "HARMAN_ENABLE"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanEnable:I

    .line 271
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_9

    .line 272
    const-string v2, "initRefections(): [error] \'HARMAN_ENABLE\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_9
    const-string v2, "HARMAN_LIVESTAGE_BUNDLED"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageBundled:I

    .line 280
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_a

    .line 281
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_BUNDLED\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_a
    const-string v2, "HARMAN_LIVESTAGE_SOHO"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageSOHO:I

    .line 287
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_b

    .line 288
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_SOHO\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_b
    const-string v2, "HARMAN_LIVESTAGE_NC"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageNC:I

    .line 294
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_c

    .line 295
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_NC\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_c
    const-string v2, "HARMAN_LIVESTAGE_CL"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageCL:I

    .line 301
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_d

    .line 302
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_CL\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_d
    const-string v2, "HARMAN_LIVESTAGE_OTHER"

    invoke-static {v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/HarmanSettings;->getReflectFieldInt(Ljava/lang/reflect/Field;)I

    move-result v2

    sput v2, Lcom/android/settings/HarmanSettings;->sHarmanLiveStageOther:I

    .line 308
    sget v2, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v5, v2, :cond_e

    .line 309
    const-string v2, "initRefections(): [error] \'HARMAN_LIVESTAGE_OTHER\' not found!"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_e
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 314
    const-string v2, "initRefections(): OK"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 315
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

    .line 316
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

    .line 317
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

    .line 318
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

    .line 319
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

    .line 320
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

    .line 321
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

    .line 322
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

    .line 323
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

    .line 324
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

    .line 326
    :cond_f
    sput v6, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    goto/16 :goto_0
.end method

.method private static varargs invokeReflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "method"
    .parameter "instanceForCall"
    .parameter "args"

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const-string v2, "invokeReflectMethod(): [error] method==null"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    .line 191
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeReflectMethod(): [error] InvocationTargetException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

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

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 762
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    if-nez v2, :cond_1

    .line 763
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 764
    const-string v1, "isLiveStageEnabled(): result==false, case of init state not sync yet."

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 775
    .local v0, result:Z
    :cond_0
    :goto_0
    return v0

    .line 769
    .end local v0           #result:Z
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

    .line 772
    .restart local v0       #result:Z
    :cond_4
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 773
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
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, DEFAULT_LIVESTAGE_TURNED_ON:Z
    const/4 v2, 0x0

    .line 782
    .local v2, result:Z
    sget v7, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v7, v6, :cond_0

    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    .line 783
    :cond_0
    const-string v5, "isLiveStageTurnedOn(): [error] reflection not OK"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 801
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 787
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v2

    .line 788
    .restart local v3       #result:I
    goto :goto_0

    .line 791
    .end local v3           #result:I
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

    .line 792
    .local v1, i:Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 793
    const-string v5, "isLiveStageTurnedOn(): reflection failed case"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 794
    .restart local v3       #result:I
    goto :goto_0

    .line 796
    .end local v3           #result:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 797
    .local v4, valueInDb:I
    sget v7, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    if-ne v7, v4, :cond_5

    move v2, v5

    .line 798
    :goto_1
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 799
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

    .line 801
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :cond_5
    move v2, v6

    .line 797
    goto :goto_1
.end method

.method private isMiracastConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 987
    :try_start_0
    const-string v5, "display"

    invoke-virtual {p0, v5}, Lcom/android/settings/HarmanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 989
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v1}, Lcom/htc/wrap/android/hardware/display/HtcWrapDisplayManager;->getWifiDisplayStatus(Landroid/hardware/display/DisplayManager;)Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;

    move-result-object v0

    .line 990
    .local v0, currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    if-nez v0, :cond_1

    .line 991
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 992
    const-string v5, "isMiracastConnected(): currentStatus==null"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 1013
    .end local v0           #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .end local v1           #displayManager:Landroid/hardware/display/DisplayManager;
    :cond_0
    :goto_0
    return v4

    .line 997
    .restart local v0       #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .restart local v1       #displayManager:Landroid/hardware/display/DisplayManager;
    :cond_1
    invoke-virtual {v0}, Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    .line 998
    .local v3, miracastStatus:I
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 999
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

    .line 1002
    :cond_2
    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    .line 1003
    const/4 v4, 0x1

    goto :goto_0

    .line 1005
    .end local v0           #currentStatus:Lcom/htc/wrap/android/hardware/display/HtcWrapWifiDisplayStatus;
    .end local v1           #displayManager:Landroid/hardware/display/DisplayManager;
    .end local v3           #miracastStatus:I
    :catch_0
    move-exception v2

    .line 1006
    .local v2, e:Ljava/lang/NoSuchMethodError;
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1007
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMiracastConnected(): NoSuchMethodError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 1009
    :cond_3
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 1010
    .end local v2           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v2

    .line 1011
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSignalDoctorTurnedOn(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 733
    const/4 v0, 0x1

    .line 734
    .local v0, DEFAULT_SIGNAL_DOCTOR_TURNED_ON:Z
    const/4 v2, 0x1

    .line 736
    .local v2, result:Z
    sget v7, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v7, v6, :cond_0

    sget-object v7, Lcom/android/settings/HarmanSettings;->sGetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_1

    .line 737
    :cond_0
    const-string v5, "isSignalDoctorTurnedOn(): [error] reflection not OK"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 756
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 741
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_1
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    move v3, v2

    .line 742
    .restart local v3       #result:I
    goto :goto_0

    .line 746
    .end local v3           #result:I
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

    .line 747
    .local v1, i:Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 748
    const-string v5, "isSignalDoctorTurnedOn(): reflection failed case"

    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    move v3, v2

    .line 749
    .restart local v3       #result:I
    goto :goto_0

    .line 751
    .end local v3           #result:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 752
    .local v4, valueInDb:I
    sget v7, Lcom/android/settings/HarmanSettings;->sHarmanDisable:I

    if-ne v7, v4, :cond_5

    move v2, v5

    .line 753
    :goto_1
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 754
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

    .line 756
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :cond_5
    move v2, v6

    .line 752
    goto :goto_1
.end method

.method private static lazyInitAudioManager(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 721
    sget-object v0, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 722
    if-nez p0, :cond_0

    .line 723
    const-string v0, "lazyInitAudioManager(): [error] context==null"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 725
    const/4 v0, 0x0

    .line 729
    :goto_0
    return v0

    .line 727
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    .line 729
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lazyInitialize()V
    .locals 4

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    .line 473
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 474
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 476
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HarmanSettings$ServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/HarmanSettings$ServiceListener;-><init>(Lcom/android/settings/HarmanSettings;Lcom/android/settings/HarmanSettings$1;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_1

    .line 483
    const-string v0, "wireless_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/HarmanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 485
    :cond_1
    return-void
.end method

.method private static logV(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1058
    sget-object v0, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void
.end method

.method private static logW(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1062
    sget-object v0, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void
.end method

.method private static setLiveStageProfile(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "profileValue"

    .prologue
    const/4 v5, 0x1

    .line 844
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 845
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

    .line 848
    :cond_0
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 849
    :cond_1
    const-string v0, "setLiveStageProfile(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 857
    :cond_2
    :goto_0
    return-void

    .line 853
    :cond_3
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
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
    .parameter "context"
    .parameter "profileNameIndex"

    .prologue
    .line 860
    invoke-static {p1}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileValueByNameIndex(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/HarmanSettings;->setLiveStageProfile(Landroid/content/Context;I)V

    .line 861
    return-void
.end method

.method private setLiveStageSetting(ZZLjava/lang/CharSequence;)V
    .locals 3
    .parameter "enabled"
    .parameter "isTurnedOn"
    .parameter "summary"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    if-nez v1, :cond_0

    .line 553
    const-string v1, "setLiveStageSetting(): [error] mLiveStageSetting==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 557
    :cond_0
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 558
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

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1, p3}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setEnabled(Z)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 567
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-nez v0, :cond_3

    .line 568
    const-string v1, "setLiveStageSetting(): [error] toggleButton==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v0           #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_2
    const-string v1, "disabled"

    goto :goto_1

    .line 571
    .restart local v0       #toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public static setLiveStageTurnedOn(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 823
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/settings/HarmanSettings;->isLiveStageEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    const-string v0, "setLiveStageTurnedOn(): ignore, triggered by grey-out disable case"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 829
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

    .line 832
    :cond_2
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 833
    :cond_3
    const-string v0, "setLiveStageTurnedOn(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_4
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
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
    .parameter "isTurnedOn"
    .parameter "summary"

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    if-nez v1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 542
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-nez v0, :cond_1

    .line 543
    const-string v1, "setSignalDoctorSetting(): [error] toggleButton==null"

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 548
    :goto_1
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public static setSignalDoctorTurnedOn(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 805
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 806
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

    .line 809
    :cond_0
    sget v0, Lcom/android/settings/HarmanSettings;->sReflectResult:I

    if-ne v0, v5, :cond_1

    sget-object v0, Lcom/android/settings/HarmanSettings;->sSetHarmanPropertyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 810
    :cond_1
    const-string v0, "setSignalDoctorTurnedOn(): [error] reflection not OK"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logW(Ljava/lang/String;)V

    .line 819
    :cond_2
    :goto_0
    return-void

    .line 814
    :cond_3
    invoke-static {p0}, Lcom/android/settings/HarmanSettings;->lazyInitAudioManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
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

    .prologue
    const v7, 0x7f0c06d5

    const v6, 0x7f0c0142

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 634
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->updateStateForLiveStage()V

    .line 643
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    if-eqz v2, :cond_1

    .line 644
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 645
    const-string v2, "syncLiveStageState(): Miracast case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 647
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0140

    invoke-virtual {p0, v3}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/HarmanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    .line 718
    :goto_0
    return-void

    .line 652
    :cond_1
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    if-eqz v2, :cond_4

    .line 653
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 654
    const-string v2, "syncLiveStageState(): wireless HDMI case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 656
    :cond_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0c011b

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v3, v4

    const-string v2, ""

    aput-object v2, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/android/settings/HarmanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0c013a

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 663
    :cond_4
    sget v2, Lcom/android/settings/HarmanSettings;->sHeadsetState:I

    if-ne v2, v5, :cond_7

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    if-eqz v2, :cond_7

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    .line 666
    .local v0, isLiveStageTurnedOn:Z
    if-eqz v0, :cond_6

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, summary:Ljava/lang/String;
    :goto_2
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 675
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

    .line 678
    :cond_5
    invoke-direct {p0, v5, v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto :goto_0

    .line 670
    .end local v1           #summary:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_2

    .line 679
    .end local v0           #isLiveStageTurnedOn:Z
    .end local v1           #summary:Ljava/lang/String;
    :cond_7
    sget v2, Lcom/android/settings/HarmanSettings;->sBtState:I

    if-ne v2, v5, :cond_c

    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    if-eqz v2, :cond_c

    .line 680
    sget v2, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v5, v2, :cond_9

    .line 681
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 682
    const-string v2, "syncLiveStageState(): boom bass case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 684
    :cond_8
    const v2, 0x7f0c0143

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 688
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v0

    .line 690
    .restart local v0       #isLiveStageTurnedOn:Z
    if-eqz v0, :cond_b

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .restart local v1       #summary:Ljava/lang/String;
    :goto_3
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 699
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

    .line 702
    :cond_a
    invoke-direct {p0, v5, v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 694
    .end local v1           #summary:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_3

    .line 704
    .end local v0           #isLiveStageTurnedOn:Z
    .end local v1           #summary:Ljava/lang/String;
    :cond_c
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->sWiredHdmiMode:Z

    if-eqz v2, :cond_e

    .line 705
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 706
    const-string v2, "syncLiveStageState(): wired HDMI case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 708
    :cond_d
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0c0139

    invoke-virtual {p0, v3}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/android/settings/HarmanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 712
    :cond_e
    sget-boolean v2, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 713
    const-string v2, "syncLiveStageState(): internal speaker or other case, disabled/off"

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 715
    :cond_f
    const v2, 0x7f0c0141

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v4, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageSetting(ZZLjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private syncSignalDoctorState()V
    .locals 3

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->isSignalDoctorTurnedOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c06d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/HarmanSettings;->setSignalDoctorSetting(ZLjava/lang/CharSequence;)V

    .line 535
    return-void
.end method

.method private updateStateForLiveStage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 330
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->lazyInitialize()V

    .line 333
    sput v7, Lcom/android/settings/HarmanSettings;->sBtState:I

    .line 334
    sput v7, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    .line 337
    iget-boolean v5, p0, Lcom/android/settings/HarmanSettings;->mIsA2dpConnected:Z

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_2

    .line 338
    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 340
    .local v2, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 341
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sput v8, Lcom/android/settings/HarmanSettings;->sBtState:I

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, deviceName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 348
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

    .line 350
    :cond_1
    if-eqz v1, :cond_0

    .line 354
    const-string v5, "HTC Boom Bass"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 355
    sput v8, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    .line 368
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v5, :cond_3

    .line 369
    iget-object v5, p0, Lcom/android/settings/HarmanSettings;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/HarmanSettings;->sWirelessHdmiMode:Z

    .line 374
    :cond_3
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    .line 375
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->isMiracastConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 376
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sIsMiracast:Z

    .line 380
    :cond_4
    sget-object v5, Lcom/android/settings/HarmanSettings;->sAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    .line 382
    .local v4, output:I
    and-int/lit16 v5, v4, 0x800

    if-lez v5, :cond_5

    .line 383
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 384
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 386
    :cond_5
    and-int/lit16 v5, v4, 0x400

    if-lez v5, :cond_6

    .line 387
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 388
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 390
    :cond_6
    and-int/lit16 v5, v4, 0x80

    if-lez v5, :cond_7

    .line 391
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 392
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 394
    :cond_7
    and-int/lit16 v5, v4, 0x100

    if-lez v5, :cond_8

    .line 395
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 396
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 398
    :cond_8
    and-int/lit16 v5, v4, 0x200

    if-lez v5, :cond_9

    .line 399
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 400
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 402
    :cond_9
    and-int/lit8 v5, v4, 0x10

    if-lez v5, :cond_a

    .line 403
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 404
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 406
    :cond_a
    and-int/lit8 v5, v4, 0x40

    if-lez v5, :cond_b

    .line 407
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 408
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 410
    :cond_b
    and-int/lit8 v5, v4, 0x20

    if-lez v5, :cond_c

    .line 411
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 412
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 414
    :cond_c
    const/high16 v5, 0x4000

    and-int/2addr v5, v4

    if-lez v5, :cond_d

    .line 415
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 416
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 418
    :cond_d
    and-int/lit16 v5, v4, 0x1000

    if-lez v5, :cond_e

    .line 419
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 420
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 422
    :cond_e
    and-int/lit8 v5, v4, 0x1

    if-lez v5, :cond_f

    .line 424
    :cond_f
    and-int/lit8 v5, v4, 0x2

    if-lez v5, :cond_10

    .line 425
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 426
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 431
    sget v5, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    if-ne v5, v8, :cond_10

    .line 432
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 433
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 436
    :cond_10
    and-int/lit16 v5, v4, 0x2000

    if-lez v5, :cond_11

    .line 437
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 438
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 440
    :cond_11
    and-int/lit16 v5, v4, 0x4000

    if-lez v5, :cond_12

    .line 441
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 442
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 444
    :cond_12
    and-int/lit8 v5, v4, 0x8

    if-lez v5, :cond_13

    .line 445
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 446
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 448
    :cond_13
    and-int/lit8 v5, v4, 0x4

    if-lez v5, :cond_14

    .line 449
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sHeadsetStream:Z

    .line 450
    sput-boolean v7, Lcom/android/settings/HarmanSettings;->sBluetoothStream:Z

    .line 453
    :cond_14
    sput-boolean v8, Lcom/android/settings/HarmanSettings;->sIsHeadeSetStateInit:Z

    .line 455
    sget-boolean v5, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v5, :cond_15

    .line 456
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

    .line 457
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

    .line 458
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

    .line 459
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

    .line 460
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

    .line 461
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

    .line 462
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

    .line 463
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

    .line 464
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

    .line 465
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

    .line 466
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

    .line 468
    :cond_15
    return-void

    .line 359
    .end local v4           #output:I
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v2       #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_16
    const-string v5, "HTC ST A100"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    sput v8, Lcom/android/settings/HarmanSettings;->sBtDevice:I

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->initRefections()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getContentResolver()Landroid/content/ContentResolver;

    .line 139
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->addPreferencesFromResource(I)V

    .line 141
    sget-object v2, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    .line 142
    .local v1, harmanSdPreference:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;
    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/settings/HarmanSettings;->addCallback(Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/settings/HarmanSettings;->mSignalDoctorSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    .line 151
    sget-object v2, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/HarmanSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    .line 152
    .local v0, harmanLsPreference:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;
    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/HarmanSettings;->addCallback(Ljava/lang/Object;)V

    .line 159
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/settings/HarmanSettings;->mLiveStageSetting:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    .line 162
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 163
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->requestHandlers()V

    .line 173
    return-void

    .line 146
    .end local v0           #harmanLsPreference:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 156
    .restart local v0       #harmanLsPreference:Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/HarmanSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method public onDestroyInBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1037
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyInBackground()V

    .line 1039
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1040
    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    .line 1045
    :try_start_0
    sget-boolean v1, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1046
    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, close A2DP profile proxy"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    iput-object v4, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1055
    :cond_2
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/settings/HarmanSettings;->TAG:Ljava/lang/String;

    const-string v2, "onDestroyInBackground, cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1052
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/HarmanSettings;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    throw v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1031
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 1032
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/HarmanSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1067
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1018
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 1019
    sget-boolean v0, Lcom/android/settings/HarmanSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncSignalDoctorState()V

    .line 1024
    invoke-direct {p0}, Lcom/android/settings/HarmanSettings;->syncLiveStageState()V

    .line 1026
    iget-object v0, p0, Lcom/android/settings/HarmanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/HarmanSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/HarmanSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1027
    return-void
.end method
