.class public Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;
.super Ljava/lang/Object;
.source "HtcHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/HtcHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preloader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field

.field private static sWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$1200()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->destroy()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    return-object v0
.end method

.method private static destroy()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public static preload(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, ">> preload all enablers"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 97
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 98
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 99
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 100
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 101
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 102
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 103
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 104
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 105
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 106
    sput-object v2, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 108
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "release all enablers"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 115
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sAirplaneModeEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 121
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 122
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sWifiEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 128
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 130
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_4

    .line 131
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sBluetoothEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 138
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 139
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sMobileDataEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sAirplaneModeEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sVoWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBluetoothEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sMobileDataEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    new-instance v0, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/beatsaudio/HtcBeatsAudioWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 155
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBeatsAudioEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 157
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sBeatsAudioEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBoomSoundFeatureFlags;->getBoomSoundSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    new-instance v0, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/boomsound/HtcBoomSoundWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 164
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sBoomSoundEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 165
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_7

    .line 166
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sBoomSoundEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 171
    new-instance v0, Lcom/android/settings/framework/core/harman/HtcHarmanWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/harman/HtcHarmanWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 172
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHarmanEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 173
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_8

    .line 174
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sHarmanEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_8
    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 180
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sInfraredEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportHtcMiniPlus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 183
    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 184
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sHtcMiniPlusEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 186
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_9

    .line 187
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sHtcMiniPlusEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_9
    invoke-static {}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;->isSupportMusicChannel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/core/umc/HtcUmcWidgetEnabler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 194
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->sUmcEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 195
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_a

    .line 196
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "sUmcEnabler is ready"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->requestHandlers()V

    .line 202
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_b

    .line 203
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->TAG:Ljava/lang/String;

    const-string v1, "<< preload all enablers"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_b
    return-void
.end method
