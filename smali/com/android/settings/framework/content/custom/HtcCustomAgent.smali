.class public Lcom/android/settings/framework/content/custom/HtcCustomAgent;
.super Ljava/lang/Object;
.source "HtcCustomAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/custom/HtcCustomAgent$1;,
        Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    }
.end annotation


# static fields
.field private static final CATEGORY_NAME:Ljava/lang/String; = "SettingsProvider"

.field public static final CUSTOMIZED_APP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field public static final CUSTOMIZED_FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FUNCTION_NAME:Ljava/lang/String; = "values"

.field private static final MODEL_NAME:Ljava/lang/String; = "res"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHashVolumeLevelCustomKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method private MobileDataEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1327
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1328
    iget-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_ct_data_roaming_warning"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1330
    .local v0, blockingTurningOn:Z
    if-eqz v0, :cond_1

    .line 1331
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 1332
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ignored)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    .end local v0           #blockingTurningOn:Z
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 1339
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_2
    :try_start_0
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 1345
    .local v1, cm:Landroid/net/IConnectivityManager;
    if-eqz v1, :cond_0

    .line 1346
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1348
    .end local v1           #cm:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v2

    .line 1349
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 1350
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "MobileDataEnabled setMobileDataEnabled , exception occurs"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataEnabled exception cause , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataEnabled exception , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private check24HourFormat(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1285
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1288
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1290
    .local v0, locale:Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1292
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 1293
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 1294
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 1296
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1297
    const-string v4, "24"

    .line 1305
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1307
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_0
    return-void

    .line 1299
    .restart local v0       #locale:Ljava/util/Locale;
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 1302
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_0
.end method

.method private forceNfcOnAfterFota()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1360
    const-string v0, "evita"

    .line 1362
    .local v0, MODEL_EVITA:Ljava/lang/String;
    const-string v3, "ro.product.device"

    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, model:Ljava/lang/String;
    const/16 v3, 0x30

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v2

    .line 1365
    :cond_1
    const-string v3, "evita"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1368
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 1179
    if-nez p0, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v0

    .line 1184
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1187
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "checked"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "allowed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1210
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    const-string v0, "1"

    .line 1213
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .parameter "context"

    .prologue
    .line 263
    const-string v2, "SettingsProvider"

    const-string v3, "res"

    invoke-static {p1, v2, v3}, Lcom/android/settings/framework/content/custom/HtcCustomDataReader;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomData;

    move-result-object v1

    .line 267
    .local v1, data:Lcom/android/settings/framework/content/custom/HtcCustomData;
    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    .line 272
    :cond_0
    const-string v2, "values"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/content/custom/HtcCustomData;->getBundleByFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 274
    .local v0, bundle:Landroid/os/Bundle;
    goto :goto_0
.end method

.method private static getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 1225
    if-nez p0, :cond_0

    .line 1226
    const-string p0, "0"

    .line 1251
    .local v0, decimal:F
    .local v2, withPercentageSign:Z
    :goto_0
    return-object p0

    .line 1229
    .end local v0           #decimal:F
    .end local v2           #withPercentageSign:Z
    :cond_0
    const/4 v2, 0x0

    .line 1230
    .restart local v2       #withPercentageSign:Z
    const/4 v0, 0x0

    .line 1233
    .restart local v0       #decimal:F
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1236
    const-string v3, "%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    const/4 v2, 0x1

    .line 1238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1242
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1243
    if-eqz v2, :cond_2

    .line 1244
    const/high16 v3, 0x42c8

    div-float/2addr v0, v3

    .line 1246
    :cond_2
    const/4 v3, 0x0

    check-cast v3, Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v1

    .line 1248
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1249
    const-string p0, "0.0"

    goto :goto_0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1269
    if-nez p0, :cond_1

    .line 1270
    const-string p0, ""

    .line 1281
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1274
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1278
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\"\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method private initialDndCustomize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1421
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_play_sound_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1424
    sget-boolean v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1425
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v1, "initialDndCustomize, set htc_dnd_play_sound_enabled default value as 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    return-void
.end method

.method private initialGPSCustomize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1414
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->supportGPSOneDoubleConfirm(Landroid/content/Context;)Z

    move-result v0

    .line 1416
    .local v0, bCustomizeBehavior:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_confirm_gps_enabling"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1417
    return-void

    .line 1416
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialHomeKeySwipeAndLongPress(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0xdb

    const/4 v1, 0x0

    .line 1383
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasMenuButtonKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setMenuBarOption(Landroid/content/Context;I)Z

    .line 1385
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 1386
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    .line 1387
    invoke-static {p1, v1, v2}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    .line 1405
    :goto_0
    return-void

    .line 1388
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasRecentAppsButtonKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 1390
    invoke-static {p1, v1, v2}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    .line 1391
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOptionBySIE(Landroid/content/Context;)V

    goto :goto_0

    .line 1394
    :cond_1
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    goto :goto_0

    .line 1397
    :cond_2
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 1398
    invoke-static {p1, v1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    .line 1399
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1400
    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOptionBySIE(Landroid/content/Context;)V

    goto :goto_0

    .line 1402
    :cond_3
    invoke-static {p1, v1, v2}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private static isAfterSense5()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1590
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 1591
    .local v2, manager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, ""

    .line 1592
    .local v4, senseVer:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1594
    .local v1, mainVer:I
    if-eqz v2, :cond_3

    .line 1595
    const-string v7, "System"

    invoke-virtual {v2, v7, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 1596
    .local v3, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v3, :cond_2

    .line 1597
    const-string v7, "sense_version"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1598
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1600
    const/4 v7, 0x0

    const/16 v8, 0x2e

    :try_start_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1608
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "senseVer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; mainVer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    .end local v3           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    :goto_1
    const/4 v7, 0x5

    if-lt v1, v7, :cond_4

    :goto_2
    return v5

    .line 1601
    .restart local v3       #reader:Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v0

    .line 1602
    .local v0, ex:Ljava/lang/Exception;
    sget-object v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1606
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    sget-object v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v8, "[ACC]system reader = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    .end local v3           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_3
    sget-object v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v8, "[ACC]HtcCustomizationManager.getInstance failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v5, v6

    .line 1613
    goto :goto_2
.end method

.method private static onTemporarilyCustomize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1380
    return-void
.end method

.method private setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 390
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_0

    .line 391
    sget-object v9, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "> KeyName: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\', KeyValue: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 402
    .local v3, key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    sget-object v9, Lcom/android/settings/framework/content/custom/HtcCustomAgent$1;->$SwitchMap$com$android$settings$framework$content$custom$HtcCustomAgent$Keys:[I

    invoke-virtual {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1100
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not recognize the key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v3           #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    .end local p3
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 397
    .restart local p3
    :catch_0
    move-exception v1

    .line 398
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Does not support the key name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :pswitch_1
    const-string v6, "auto_time"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 412
    :pswitch_2
    const-string v6, "auto_time_zone"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v8, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    invoke-static {v8, v6}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .line 421
    :pswitch_4
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "INACTIVITY_TIME"

    const-string v8, "inactivity_time"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 430
    :pswitch_5
    const-string v6, "screen_off_timeout"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 437
    :pswitch_6
    invoke-direct {p0, p1, p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateAnimationScales(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :pswitch_7
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_APPLICATION_AUTOMATIC_STARTUP"

    const-string v8, "htc_application_automatic_startup"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 449
    :pswitch_8
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_APPLICATION_NOTIFICATION"

    const-string v8, "htc_application_notification"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 458
    :pswitch_9
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_3D_HOME_SCREEN"

    const-string v8, "htc_3d_home_screen"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 467
    :pswitch_a
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_WIRELESS_SLEEP_MODE_ENABLED"

    const-string v8, "htc_wireless_sleep_mode_enabled"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 476
    :pswitch_b
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_WIRELESS_SLEEP_START_TIME"

    const-string v8, "htc_wireless_sleep_start_time"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 485
    :pswitch_c
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_WIRELESS_SLEEP_END_TIME"

    const-string v8, "htc_wireless_sleep_end_time"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 494
    :pswitch_d
    const-string v6, "time_12_24"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 498
    :pswitch_e
    const-string v6, "airplane_mode_toggleable_radios"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 503
    :pswitch_f
    const-string v6, "airplane_mode_radios"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 508
    :pswitch_10
    const-string v6, "wifi_sleep_policy"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 514
    :pswitch_11
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTCSPEAK_DEFALUT_LANG"

    const-string v8, "htcspeak_default_lang"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 526
    :pswitch_12
    const-string v6, "3g_power_save"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 531
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t POWER_SAVE_3G: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 538
    :pswitch_13
    const-string v6, "dtmf_tone"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 543
    :pswitch_14
    const-string v6, "screen_brightness_mode"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 548
    :pswitch_15
    const-string v6, "screen_brightness"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 553
    :pswitch_16
    const-string v6, "screen_auto_brightness_max"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    :pswitch_17
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 573
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    .line 575
    :cond_3
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    invoke-virtual {v6, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-boolean v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 577
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 581
    :pswitch_18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 582
    .local v2, index:I
    const-string v8, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    packed-switch v2, :pswitch_data_1

    .line 588
    const-string v7, "HIDE_NAV_BAR"

    invoke-static {p1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 585
    :pswitch_19
    const-string v6, "HIDE_NAV_BAR"

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 595
    .end local v2           #index:I
    :pswitch_1a
    const-string v6, "htc_gestures_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 601
    :pswitch_1b
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->setFontSize(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 603
    .local v5, successful:Z
    sget-boolean v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 604
    sget-object v7, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "def_htc_font_size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_4

    const-string v6, " (successful)"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, " (failed)"

    goto :goto_2

    .line 610
    .end local v5           #successful:Z
    :pswitch_1c
    const-string v6, "compass_warning"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 616
    :pswitch_1d
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->setShowQuickTip(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 624
    :pswitch_1e
    const-string v6, "install_non_market_apps"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 631
    :pswitch_1f
    const-string v6, "location_providers_allowed"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 634
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 635
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t LOCATION_PROVIDER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    :pswitch_20
    const-string v6, "gps"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 643
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 644
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t GPS_PROVIDER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 649
    :pswitch_21
    const-string v6, "network"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 652
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 653
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t NETWORK_PROVIDER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 658
    :pswitch_22
    const-string v6, "vzw_lbs"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 661
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 662
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Verizon_LBS_PROVIDER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    :pswitch_23
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "ENABLE_HTC_FASTBOOT"

    const-string v8, "enable_fastboot"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 678
    :pswitch_24
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "HTC_LOCATE_ALLOWED"

    const-string v8, "htc_locate_allowed"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 685
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.HTC_LOCATE_ALLOWED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :pswitch_25
    const-string v6, "data_roaming"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 693
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 694
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Global.DATA_ROAMING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 699
    :pswitch_26
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "ROAMING_SOUND_ON"

    const-string v8, "roaming_sound_on"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 706
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 707
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.ROAMING_SOUND_ON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 712
    :pswitch_27
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "NATIONAL_ROAMING_ON"

    const-string v8, "national_roaming_on"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 719
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 720
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.NATIONAL_ROAMING_ON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :pswitch_28
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "VZW_GLOBAL_ROAMING_OPTIONS"

    const-string v8, "vzw_global_roaming_options"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 733
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 734
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.VZW_GLOBAL_ROAMING_OPTIONS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    :pswitch_29
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "DATA_ROAMING_SLOT2"

    const-string v8, "data_roaming_slot2"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 748
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 749
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.DATA_ROAMING_SLOT2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 756
    :pswitch_2a
    sget-object v6, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v7, "WIMAX_ON"

    const-string v8, "wimax_on"

    invoke-static {v6, v7, v8}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 764
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.WIMAX_ON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 769
    :pswitch_2b
    const-string v6, "htc_message_notification_preview"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 773
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.HTC_MESSAGE_NOTIFICATION_PREVIEW: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 778
    :pswitch_2c
    const-string v6, "htc_phone_notification_preview"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 781
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 782
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.HTC_PHONE_NOTIFICATION_PREVIEW: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 799
    :pswitch_2d
    invoke-static {}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->isAfterSense5()Z

    move-result v8

    if-nez v8, :cond_1

    .line 801
    const-string v8, "true"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 802
    invoke-direct {p0, v6}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->MobileDataEnabled(Z)V

    .line 806
    :goto_3
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 807
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t Secure.MOBILEDATA_ON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->MobileDataEnabled(Z)V

    goto :goto_3

    .line 817
    :pswitch_2e
    const-string v6, "sound_effects_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 823
    :pswitch_2f
    const-string v6, "lockscreen_sounds_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 829
    :pswitch_30
    const-string v6, "show_2g_ui"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 831
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 832
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t show_2g_ui: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 838
    :pswitch_31
    :try_start_1
    const-string v6, "powersaver_switch_2G_call"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 840
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 841
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t def_2g_on: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 844
    :catch_1
    move-exception v1

    .line 845
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in def_2g_on"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 849
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_32
    const-string v6, "smartsync_turn_off_wifi"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 852
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t def_night_turn_off_wifi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    :pswitch_33
    :try_start_2
    const-string v6, "user_powersaver_enable"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 861
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t user_powersaver_enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 863
    :catch_2
    move-exception v1

    .line 864
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in user_powersaver_enable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 871
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_34
    :try_start_3
    const-string v6, "powersaver_reduce_CPU"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 872
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 873
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t powersaver_reduce_CPU: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 875
    :catch_3
    move-exception v1

    .line 876
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in powersaver_reduce_CPU"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 883
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_35
    :try_start_4
    const-string v6, "powersaver_screen_brightness"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 885
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t powersaver_screen_brightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 887
    :catch_4
    move-exception v1

    .line 888
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in powersaver_screen_brightness"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 895
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_36
    :try_start_5
    const-string v6, "powersaver_haptic_feedback"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 897
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t powersaver_haptic_feedback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 899
    :catch_5
    move-exception v1

    .line 900
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in powersaver_haptic_feedback"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 906
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_37
    :try_start_6
    const-string v6, "powersaver_connectivity"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 908
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t powersaver_connectivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 910
    :catch_6
    move-exception v1

    .line 911
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in powersaver_connectivity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 917
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_38
    :try_start_7
    const-string v6, "abnormal_app_monitor_enable"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 918
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 919
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t abnormal_app_monitor_enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 921
    :catch_7
    move-exception v1

    .line 922
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in abnormal_app_monitor_enable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_39
    :try_start_8
    const-string v6, "hide_ui_user_powersaver"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 930
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t hide_ui_user_powersaver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 932
    :catch_8
    move-exception v1

    .line 933
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in hide_ui_user_powersaver"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 939
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_3a
    :try_start_9
    const-string v6, "hide_ui_powersaver_connectivity"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 940
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 941
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t hide_ui_powersaver_connectivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 943
    :catch_9
    move-exception v1

    .line 944
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in hide_ui_powersaver_connectivity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 952
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_3b
    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 953
    .local v4, nfcSwitch:Z
    const-string v6, "nfc_on"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 954
    if-eqz v4, :cond_6

    .line 955
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 956
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_6

    .line 957
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 961
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :cond_6
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 962
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t def_nfc_on: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 970
    .end local v4           #nfcSwitch:Z
    :pswitch_3c
    :try_start_a
    const-string v6, "dual_sim_ringtone_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 973
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t dual_sim_ringtone_mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 976
    :catch_a
    move-exception v1

    .line 977
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in dual_sim_ringtone_mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 982
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_3d
    sget-boolean v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 983
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v8, "updateAppStorageLocationBySie"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_7
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8, v7}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->updateAppStorageLocation(Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 991
    :pswitch_3e
    :try_start_b
    const-string v6, "ringtone"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 992
    :catch_b
    move-exception v1

    .line 993
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting ringtone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    move-object v8, p3

    .line 991
    goto :goto_4

    .line 998
    :pswitch_3f
    :try_start_c
    const-string v6, "ringtone_mode_cdma"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_5
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 999
    :catch_c
    move-exception v1

    .line 1000
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting ringtone_mode_cdma: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    move-object v8, p3

    .line 998
    goto :goto_5

    .line 1005
    :pswitch_40
    :try_start_d
    const-string v6, "ringtone_mode_wcdma"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_6
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 1006
    :catch_d
    move-exception v1

    .line 1007
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting ringtone_mode_wcdma: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    move-object v8, p3

    .line 1005
    goto :goto_6

    .line 1012
    :pswitch_41
    :try_start_e
    const-string v6, "notification_sound"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_7
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 1013
    :catch_e
    move-exception v1

    .line 1014
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting notification_sound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_b
    move-object v8, p3

    .line 1012
    goto :goto_7

    .line 1019
    :pswitch_42
    :try_start_f
    const-string v6, "alarm_alert"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_8
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 1020
    :catch_f
    move-exception v1

    .line 1021
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting alarm_alert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_c
    move-object v8, p3

    .line 1019
    goto :goto_8

    .line 1026
    :pswitch_43
    :try_start_10
    const-string v6, "calendar_sound"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_9
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    .line 1027
    :catch_10
    move-exception v1

    .line 1028
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting calendar_sound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_d
    move-object v8, p3

    .line 1026
    goto :goto_9

    .line 1033
    :pswitch_44
    :try_start_11
    const-string v6, "message_sound"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_a
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    .line 1034
    :catch_11
    move-exception v1

    .line 1035
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting message_sound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_e
    move-object v8, p3

    .line 1033
    goto :goto_a

    .line 1040
    :pswitch_45
    :try_start_12
    const-string v6, "email_sound"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :goto_b
    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    .line 1041
    :catch_12
    move-exception v1

    .line 1042
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting email_sound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_f
    move-object v8, p3

    .line 1040
    goto :goto_b

    .line 1047
    :pswitch_46
    :try_start_13
    const-string v6, "task_sound"

    const-string v7, "silent"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    move-object p3, v8

    .end local p3
    :cond_10
    invoke-static {p1, v6, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    .line 1048
    :catch_13
    move-exception v1

    .line 1049
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting task_sound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1053
    .end local v1           #e:Ljava/lang/Exception;
    .restart local p3
    :pswitch_47
    iget-object v6, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    const-string v7, "true"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateAGPS(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1058
    :pswitch_48
    :try_start_14
    const-string v6, "htc_pull_to_fresh_sound_enabled"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1059
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    .line 1060
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t htc_pull_to_fresh_sound_enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    .line 1062
    :catch_14
    move-exception v1

    .line 1063
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v7, "not get int in htc_pull_to_fresh_sound_enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1081
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_49
    const-string v6, "package_verifier_enable"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1087
    :pswitch_4a
    const-string v6, "stay_on_while_plugged_in"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1094
    :pswitch_4b
    const-string v6, "emergency_tone"

    invoke-static {p1, v6, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
    .end packed-switch

    .line 583
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method

.method private setVolumeLevelValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/media/AudioManager;)V
    .locals 11
    .parameter "resolver"
    .parameter "name"
    .parameter "value"
    .parameter "audioManager"

    .prologue
    .line 1493
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_0

    .line 1494
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue: > KeyName: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', KeyValue: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1508
    .local v4, key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent$1;->$SwitchMap$com$android$settings$framework$content$custom$HtcCustomAgent$Keys:[I

    invoke-virtual {v4}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1539
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue :unexpected key \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    .end local v4           #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :cond_1
    :goto_0
    return-void

    .line 1500
    :catch_0
    move-exception v2

    .line 1501
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue:Does not support the key name \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1510
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :pswitch_0
    const-string v7, "volume_alarm"

    .line 1511
    .local v7, streamName:Ljava/lang/String;
    const v0, 0x601fffff

    .line 1542
    .local v0, allOutputDevices:I
    :goto_1
    const/4 v3, 0x1

    .local v3, jdevice:I
    :goto_2
    if-lez v0, :cond_6

    .line 1543
    move v1, v3

    .line 1544
    .local v1, device:I
    and-int v8, v1, v0

    if-nez v8, :cond_3

    .line 1542
    :cond_2
    :goto_3
    mul-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 1514
    .end local v0           #allOutputDevices:I
    .end local v1           #device:I
    .end local v3           #jdevice:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_1
    const-string v7, "volume_ring"

    .line 1515
    .restart local v7       #streamName:Ljava/lang/String;
    const v0, 0x601fffff

    .line 1516
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1518
    .end local v0           #allOutputDevices:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_2
    const-string v7, "volume_music"

    .line 1519
    .restart local v7       #streamName:Ljava/lang/String;
    const v0, 0x601fffff

    .line 1520
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1522
    .end local v0           #allOutputDevices:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_3
    const-string v7, "volume_music"

    .line 1523
    .restart local v7       #streamName:Ljava/lang/String;
    const/4 v0, 0x2

    .line 1524
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1526
    .end local v0           #allOutputDevices:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_4
    const-string v7, "volume_music"

    .line 1527
    .restart local v7       #streamName:Ljava/lang/String;
    const/16 v0, 0x8

    .line 1528
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1530
    .end local v0           #allOutputDevices:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_5
    const-string v7, "volume_music"

    .line 1531
    .restart local v7       #streamName:Ljava/lang/String;
    const/4 v0, 0x4

    .line 1532
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1534
    .end local v0           #allOutputDevices:I
    .end local v7           #streamName:Ljava/lang/String;
    :pswitch_6
    const-string v7, "volume_music"

    .line 1535
    .restart local v7       #streamName:Ljava/lang/String;
    const/16 v0, 0x3f0

    .line 1537
    .restart local v0       #allOutputDevices:I
    goto :goto_1

    .line 1548
    .restart local v1       #device:I
    .restart local v3       #jdevice:I
    :cond_3
    xor-int/lit8 v8, v3, -0x1

    and-int/2addr v0, v8

    .line 1549
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v5

    .line 1550
    .local v5, strDeviceName:Ljava/lang/String;
    sget-boolean v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 1551
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue: strDeviceName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_4
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1558
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1559
    .local v6, strKeyName:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1562
    sget-boolean v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 1563
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue: putInt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_last_audible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1567
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p1, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1570
    sget-boolean v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 1571
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue: putInt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1575
    .end local v1           #device:I
    .end local v5           #strDeviceName:Ljava/lang/String;
    .end local v6           #strKeyName:Ljava/lang/String;
    :cond_6
    sget-boolean v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 1576
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v9, "setVolumeLevelValue: reloadAudioSettings"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_7
    invoke-virtual {p4}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 1580
    sget-boolean v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 1581
    sget-object v8, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolumeLevelValue <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateAGPS(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 1430
    sget-boolean v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1431
    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update AGPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.settings.action.SET_AGPS_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1436
    return-void
.end method

.method private updateAnimationScales(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 9
    .parameter "resolver"
    .parameter "value"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1141
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, scales:[Ljava/lang/String;
    array-length v3, v2

    if-eq v3, v8, :cond_0

    .line 1144
    const-string v1, "The format of the value is invalid."

    .line 1145
    .local v1, e:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1149
    .end local v1           #e:Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1150
    aget-object v3, v2, v6

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1151
    aget-object v3, v2, v7

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1154
    const-string v3, "window_animation_scale"

    aget-object v4, v2, v5

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1156
    const-string v3, "transition_animation_scale"

    aget-object v4, v2, v6

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1158
    const-string v3, "animator_duration_scale"

    aget-object v4, v2, v7

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1162
    new-array v0, v8, [F

    .line 1163
    .local v0, animationScales:[F
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v5

    .line 1164
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v6

    .line 1165
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v7

    .line 1166
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAnimationScales([F)Z

    .line 1167
    return-void
.end method

.method private updateBackupEnabled(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 1316
    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_backup_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    invoke-virtual {v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, backupEnabled:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1318
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v1, bm:Landroid/app/backup/BackupManager;
    invoke-static {v0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/backup/BackupManager;->setBackupEnabled(Z)V

    .line 1321
    .end local v1           #bm:Landroid/app/backup/BackupManager;
    :cond_0
    return-void
.end method

.method private updatePowerSaverPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1106
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 1107
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePowerSaverPref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    const-string v3, "powersaver_shared"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1111
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    .line 1112
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 1113
    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v3, "unable to get powersaver shared preference"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1118
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v0, :cond_3

    .line 1120
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 1121
    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v3, "unable to get powersaver shared preference editor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    :cond_3
    if-gtz p3, :cond_4

    :goto_1
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateVolumeLevels(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 6
    .parameter "cr"
    .parameter "context"

    .prologue
    .line 1439
    sget-boolean v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1440
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "updateVolumeLevels..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    if-nez p2, :cond_2

    .line 1444
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "updateVolumeLevels : context == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_1
    :goto_0
    return-void

    .line 1449
    :cond_2
    if-nez p1, :cond_3

    .line 1450
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "updateVolumeLevels : getContentResolver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    if-nez v3, :cond_4

    .line 1454
    sget-boolean v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1455
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "updateVolumeLevels : mHashVolumeLevelCustomKeys == null , skip."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1460
    :cond_4
    const-string v3, "audio"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1462
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_5

    .line 1463
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "updateVolumeLevels: get AudioManager fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :cond_5
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "def_volume_ring"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "def_volume_alarm"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "def_volume_music"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "def_volume_music_speaker"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "def_volume_music_headset"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "def_volume_music_headphone"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "def_volume_music_bt"

    aput-object v4, v2, v3

    .line 1481
    .local v2, volumeLevelKeyByApplyOrder:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 1482
    iget-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1483
    aget-object v4, v2, v1

    iget-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v3, v0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->setVolumeLevelValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/media/AudioManager;)V

    .line 1481
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1487
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mHashVolumeLevelCustomKeys:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public onCustomize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    .line 288
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->updateAppStorageLocationForPhoneStorageLike(Landroid/content/Context;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 300
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 309
    .local v4, value:Ljava/lang/String;
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateVolumeLevels(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->check24HourFormat(Landroid/content/Context;)V

    .line 322
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateBackupEnabled(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 324
    invoke-static {p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->onTemporarilyCustomize(Landroid/content/Context;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->initialHomeKeySwipeAndLongPress(Landroid/content/Context;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->initialGPSCustomize(Landroid/content/Context;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->initialDndCustomize(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCustomizeForFota(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    .line 346
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->initAppStorageLocationForNewApps(Landroid/content/Context;)V

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v2, fotaKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->forceNfcOnAfterFota()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    const-string v6, "def_nfc_on"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getCustomizeData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 359
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 377
    :cond_1
    return-void

    .line 362
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 363
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 364
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 369
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 370
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 373
    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v1, v4, v5}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
