.class public Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;
.super Ljava/lang/Object;
.source "HtcKddiRegulatoryAssetManager.java"


# static fields
.field private static final ASSET_FUNCTION_NAME:Ljava/lang/String; = "asset"

.field private static final ASSET_RP_KDDI_BT:Ljava/lang/String; = "rp_kddi_bt"

.field private static final ASSET_RP_KDDI_I:Ljava/lang/String; = "rp_kddi_i"

.field private static final ASSET_RP_KDDI_RT:Ljava/lang/String; = "rp_kddi_rt"

.field private static final ASSET_RP_KDDI_WIFI:Ljava/lang/String; = "rp_kddi_wifi"

.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MODULE_NAME:Ljava/lang/String; = "regulatory_kddi"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEXT_FUNCTION_NAME:Ljava/lang/String; = "text"

.field private static final TEXT_LINE1:Ljava/lang/String; = "line1"

.field private static final TEXT_LINE2:Ljava/lang/String; = "line2"

.field private static final TEXT_LINE3:Ljava/lang/String; = "line3"

.field private static sAssetPathRpKddiBt:Ljava/lang/String;

.field private static sAssetPathRpKddiI:Ljava/lang/String;

.field private static sAssetPathRpKddiRt:Ljava/lang/String;

.field private static sAssetPathRpKddiWifi:Ljava/lang/String;

.field private static sLine1:Ljava/lang/String;

.field private static sLine2:Ljava/lang/String;

.field private static sLine3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->DEBUG:Z

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->prepareData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpData()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sAssetPathRpKddiRt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiRt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sAssetPathRpKddiWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiWifi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sAssetPathRpKddiBt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiBt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sAssetPathRpKddiI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sLine1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sLine2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n sLine3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getAssetPathRpKddiBt()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiBt:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetPathRpKddiI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiI:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetPathRpKddiRt()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiRt:Ljava/lang/String;

    return-object v0
.end method

.method public static getAssetPathRpKddiWifi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiWifi:Ljava/lang/String;

    return-object v0
.end method

.method public static getLine1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine1:Ljava/lang/String;

    return-object v0
.end method

.method public static getLine2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine2:Ljava/lang/String;

    return-object v0
.end method

.method public static getLine3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine3:Ljava/lang/String;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static prepareData()V
    .locals 5

    sget-boolean v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, ">> prepareData()"

    invoke-static {v3}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "Settings"

    const-string v4, "regulatory_kddi"

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v1

    const-string v3, "asset"

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "rp_kddi_rt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiRt:Ljava/lang/String;

    const-string v3, "rp_kddi_wifi"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiWifi:Ljava/lang/String;

    const-string v3, "rp_kddi_bt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiBt:Ljava/lang/String;

    const-string v3, "rp_kddi_i"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiI:Ljava/lang/String;

    :cond_1
    const-string v3, "text"

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "line1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine1:Ljava/lang/String;

    const-string v3, "line2"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine2:Ljava/lang/String;

    const-string v3, "line3"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine3:Ljava/lang/String;

    :cond_2
    sget-boolean v3, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->dumpData()V

    const-string v3, ">> prepareData()"

    invoke-static {v3}, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static supportKddiRegulatory()Z
    .locals 2

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiRt:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiWifi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiBt:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sAssetPathRpKddiI:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine1:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine2:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/about/legal/HtcKddiRegulatoryAssetManager;->sLine3:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
