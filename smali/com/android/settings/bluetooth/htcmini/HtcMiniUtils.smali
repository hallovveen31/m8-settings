.class public final Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;
.super Ljava/lang/Object;
.source "HtcMiniUtils.java"


# static fields
.field public static final BT_OPTION:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXIT_WIZARD_RESULTCODE:I = 0x2ee5

.field public static final NFC_OPTION:I = 0x0

.field private static final SETUP_OPTION:Ljava/lang/String; = "option"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "htcmini_settings"

.field private static final TAG:Ljava/lang/String; = "HtcMiniUtils"

.field private static bIsNfcAvailable:Z

.field private static bIsNfcAvailableChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->DEBUG:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailableChecked:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSetupOption(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->isNfcAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "option"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "htcmini_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static isNfcAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailableChecked:Z

    if-nez v2, :cond_0

    sput-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailableChecked:Z

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_1

    :goto_0
    sput-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailable:Z

    sget-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcMiniUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC is available? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->bIsNfcAvailable:Z

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static persistSetupOption(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
