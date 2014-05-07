.class public Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;
.super Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;
.source "HtcAboutPhoneFeatureFlags.java"


# static fields
.field public static IS_SGLTE_MODEM:Z = false

.field private static final PROPERTY_BASEBAND:Ljava/lang/String; = "ro.baseband.arch"

.field private static final SGLTE:Ljava/lang/String; = "sglte"

.field private static final SGLTE_TYPE2:Ljava/lang/String; = "sglte2"

.field private static final SUPPORT_IMEI_KEY:Ljava/lang/String; = "support_imei"

.field private static final SUPPORT_IMSI_KEY:Ljava/lang/String; = "support_imsi"

.field private static final mBaseband:Ljava/lang/String; = null

.field public static final supportHardwareVersion:Lcom/android/settings/framework/content/custom/property/HtcIProperty; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportStatusForSignalStrength:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 135
    new-instance v1, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;

    const-string v2, "support_hardware_version"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/settings/framework/content/custom/property/HtcBooleanProperty;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    .line 578
    const-string v1, "ro.baseband.arch"

    const-string v2, "msm"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->mBaseband:Ljava/lang/String;

    .line 579
    const-string v1, "sglte"

    sget-object v2, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->mBaseband:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sglte2"

    sget-object v2, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->mBaseband:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->IS_SGLTE_MODEM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;-><init>()V

    return-void
.end method

.method public static final isSingleSimDualSignalTdscdma()Z
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/android/settings/WrapCustomizationManager;->getRilReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    const-string v1, "isSingleSimDualSignalTdscdma"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/WrapCustomizationReader;->readBoolean(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final support1IMEI()Z
    .locals 3

    .prologue
    .line 533
    invoke-static {}, Lcom/android/settings/WrapCustomizationManager;->getTelephonyReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v0

    const-string v1, "show_1_imei"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/WrapCustomizationReader;->readBoolean(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final supportAccessLegalInformation()Z
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static final supportAddSystemUpdate(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final supportAllIMEI()Z
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAsiaIndiaSku()Z

    move-result v0

    return v0
.end method

.method public static final supportAppVersion(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 426
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.pigrabber.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 429
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 430
    const/4 v3, 0x1

    .line 432
    :cond_0
    return v3
.end method

.method public static final supportCNAPName()Z
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 526
    :cond_0
    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportCmccROMVersion()Z
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportCustomizationWizardVersion()Z
    .locals 3

    .prologue
    .line 436
    const-string v1, "ro.config.htc.enableCOTA.CWver"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, version:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final supportDetailedRoaming()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    const-string v0, "support_detailed_roaming"

    .line 96
    .local v0, KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "support_detailed_roaming"

    invoke-static {v2, v1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final supportDistributionTime()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public static final supportFrontCameraInfo()Z
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportGoogleLegalInformation(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 351
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final supportHardwareInformation()Z
    .locals 2
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportHelp(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 479
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowAllQuickTips()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportIMEI(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 213
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    .line 217
    :cond_0
    const-string v0, "support_imei"

    .line 218
    .local v0, KEY:Ljava/lang/String;
    const/4 v1, 0x1

    .line 221
    .local v1, support:Z
    const-string v2, "support_imei"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 223
    goto :goto_0
.end method

.method public static final supportIMSI(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 193
    :goto_0
    return v1

    .line 187
    :cond_0
    const-string v0, "support_imsi"

    .line 188
    .local v0, KEY:Ljava/lang/String;
    const/4 v1, 0x1

    .line 191
    .local v1, support:Z
    const-string v2, "support_imsi"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    goto :goto_0
.end method

.method public static final supportIMSStateUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-static {}, Lcom/android/settings/WrapCustomizationManager;->getPhoneReader()Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v1

    const-string v2, "voLteEnabled"

    invoke-static {v1, v2, v0}, Lcom/android/settings/WrapCustomizationReader;->readBoolean(Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const/4 v0, 0x1

    .line 542
    :cond_0
    return v0
.end method

.method public static final supportNetwork()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportPRLUpdate(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public static final supportPhoneNumber()Z
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportProcessorInfo(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 293
    const-string v0, "processor_info_visibility"

    .line 295
    .local v0, KEY:Ljava/lang/String;
    const/4 v2, 0x1

    .line 298
    .local v2, visible:Z
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "processor_info_visibility"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const-string v3, "processor_info_visibility"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 304
    :cond_0
    const-string v3, "processor_info_visibility"

    invoke-static {p0, v3, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 306
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "processor_info_visibility"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    return v2
.end method

.method public static final supportROMVersion()Z
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 252
    .local v0, skuId:I
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 254
    :cond_0
    const/4 v1, 0x1

    .line 256
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final supportRegulatory(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 449
    .local v1, visibility:Z
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;->getAssetList()Ljava/util/List;

    move-result-object v0

    .line 453
    .local v0, assetList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;>;"
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 458
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->supportKddiRegulatory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const/4 v1, 0x1

    .line 462
    :cond_1
    return v1

    .line 454
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final supportRoaming()Z
    .locals 3

    .prologue
    .line 82
    const-string v0, "support_roaming"

    .line 83
    .local v0, KEY:Ljava/lang/String;
    const-string v1, "support_roaming"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final supportShowAllQuickTips()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 507
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    .line 509
    .local v0, senseVersion:F
    const/high16 v3, 0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    const/high16 v3, 0x40a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 512
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIddaDevice()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 517
    goto :goto_0

    :cond_2
    move v1, v2

    .line 519
    goto :goto_0
.end method

.method public static final supportShowMe(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 406
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 410
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 413
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final supportSoftwareRootedStatus()Z
    .locals 3

    .prologue
    .line 555
    const-string v0, "support_software_rooted_status"

    .line 557
    .local v0, KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x1

    .line 560
    :goto_0
    return v1

    :cond_0
    const-string v1, "support_software_rooted_status"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static final supportSprintLegalInformation()Z
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcSprintLegalManager;->isSprintChameleon()Z

    move-result v0

    return v0
.end method

.method public static final supportTelecElectricLegalInformation()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method
