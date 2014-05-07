.class public Lcom/android/settings/HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcFeatureList.java"


# static fields
.field public static final Enable_Mobile_Network_Botton:Z = true

.field public static final FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

.field public static final FEATURE_DISABLE_CDMA_IMEI_SV:Z

.field public static final FEATURE_DISABLE_MEID:Z

.field public static final FEATURE_ERI_VERSION:Z

.field public static final FEATURE_GPSONE_DESCRIPTION_TYPE:I

.field public static final FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

.field public static final FEATURE_HTC_WARNING_FOR_ROAMING:Z

.field public static final FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

.field public static final FEATURE_REMOVE_DEVICE_SERIAL_NUMBER:Z

.field public static final FEATURE_SHOW_UICCIMSI_INFORMAION:Z

.field public static final FEATURE_SHOW_UICC_INFORMAION:Z

.field public static final FEATURE_SPRINT_CHAMELEON:Z

.field public static final FEATURE_SUPPORT_ChargeOnly:Z

.field public static final FEATURE_SUPPORT_DEC_MEID:Z

.field public static final FEATURE_SUPPORT_IMEI:Z

.field public static final FEATURE_SUPPORT_MHS:Z

.field public static final FEATURE_THIS_IS_WORLD_PHONE:Z

.field private static LOG_TAG:Ljava/lang/String;

.field private static mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    const-string v0, "Settings-HtcFeatureList"

    sput-object v0, Lcom/android/settings/HtcFeatureList;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/settings/HtcFeatureList;->mIntent:Landroid/content/Intent;

    .line 41
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->supportMHS()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    .line 72
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ChargeOnly:Z

    .line 81
    const-string v0, "settings_cdma_eri_version"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_ERI_VERSION:Z

    .line 93
    const-string v0, "settings_cdma_gpsone_dsecription_type"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_DESCRIPTION_TYPE:I

    .line 105
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    .line 116
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_HTC_WARNING_FOR_ROAMING:Z

    .line 125
    const-string v0, "settings_cdma_nai"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

    .line 134
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isPhoneFeatureWorldPhone()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    .line 143
    const-string v0, "settings_cdma_imei_none_wphone"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isPhoneFeatureWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI:Z

    .line 155
    const-string v0, "settings_cdma_remove_imei_sv"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_CDMA_IMEI_SV:Z

    .line 164
    const-string v0, "settings_cdma_remove_meid"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MEID:Z

    .line 178
    const-string v0, "settings_cdma_meid_decimal"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_DEC_MEID:Z

    .line 192
    const-string v0, "settings_cdma_life_call_timer_data_usage"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

    .line 201
    const-string v0, "settings_remove_device_serial_number"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_REMOVE_DEVICE_SERIAL_NUMBER:Z

    .line 208
    const-string v0, "settings_cdma_uicc_id"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    sput-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICC_INFORMAION:Z

    .line 218
    const-string v0, "settings_cdma_uicc_imsi"

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICCIMSI_INFORMAION:Z

    .line 232
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCdmaChameleonEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    return-void

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    :cond_2
    move v0, v2

    .line 143
    goto :goto_1

    :cond_3
    move v0, v2

    .line 164
    goto :goto_2

    :cond_4
    move v1, v2

    .line 208
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMirrorLink(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 57
    .local v2, manager:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.realvnc.mirrorlinksample"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 63
    :cond_1
    return v3
.end method

.method static isSupportGMS(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/HtcFeatureList;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "market://search? "

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
