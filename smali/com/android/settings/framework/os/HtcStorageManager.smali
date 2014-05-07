.class public Lcom/android/settings/framework/os/HtcStorageManager;
.super Ljava/lang/Object;
.source "HtcStorageManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_KEEP_MEDIA_DATA:Ljava/lang/String; = "delete_data"

.field private static final GPS_CLEAN_AIDING_DATA_SLEEP_MSEC:I = 0x5dc

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String;

.field private static mIMountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/HtcStorageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1781
    sget-object v0, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private static checkRadioOff()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1737
    const/4 v2, 0x0

    .line 1739
    .local v2, radioOff:Z
    const/4 v3, 0x0

    .line 1740
    .local v3, radioOff_slot1:Z
    const/4 v4, 0x0

    .line 1742
    .local v4, radioOff_slot2:Z
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1746
    .local v5, sPhone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1747
    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/android/settings/framework/os/HtcStorageManager;->setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v3

    .line 1748
    invoke-static {v5, v6}, Lcom/android/settings/framework/os/HtcStorageManager;->setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v4

    .line 1749
    invoke-static {v5, v7, v3, v4}, Lcom/android/settings/framework/os/HtcStorageManager;->waitRadioPowerOFF(Lcom/android/internal/telephony/ITelephony;ZZZ)V

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1751
    invoke-static {v5, v6}, Lcom/android/settings/framework/os/HtcStorageManager;->setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v3

    .line 1752
    const/4 v7, 0x5

    invoke-static {v5, v7}, Lcom/android/settings/framework/os/HtcStorageManager;->setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v4

    .line 1753
    invoke-static {v5, v6, v3, v4}, Lcom/android/settings/framework/os/HtcStorageManager;->waitRadioPowerOFF(Lcom/android/internal/telephony/ITelephony;ZZZ)V

    goto :goto_0

    .line 1756
    :cond_2
    invoke-static {v5, v7}, Lcom/android/settings/framework/os/HtcStorageManager;->setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v2

    .line 1759
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v8, 0x10

    if-ge v1, v8, :cond_0

    .line 1760
    if-nez v2, :cond_3

    .line 1762
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_4

    move v2, v6

    .line 1768
    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    .line 1769
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 1770
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "Radio shutdown complete."

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v2, v7

    .line 1762
    goto :goto_2

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v8, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1765
    const/4 v2, 0x1

    goto :goto_2

    .line 1774
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_5
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1759
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static clearEncryption(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_encryption"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1577
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1578
    .local v0, sdCardStatus:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1580
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 1582
    :cond_1
    return-void
.end method

.method private static clearGpsAidingData(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x5dc

    const/4 v7, 0x1

    .line 1595
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 1598
    .local v4, mLocationManager:Landroid/location/LocationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, allowedProviders:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1603
    const-string v1, ""

    .line 1608
    :cond_0
    move-object v0, v1

    .line 1611
    .local v0, allowState:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 1614
    .local v3, mGpsEnabled:Z
    if-nez v3, :cond_2

    .line 1615
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 1616
    sget-object v5, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "GPS is not enabled by default. Enable GPS now!!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1623
    :cond_2
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_3

    .line 1624
    const-string v5, "Start to clean GPS aiding data."

    invoke-static {v5}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;)I

    .line 1626
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1627
    .local v2, extra:Landroid/os/Bundle;
    const-string v5, "all"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1628
    const-string v5, "gps"

    const-string v6, "delete_aiding_data"

    invoke-virtual {v4, v5, v6, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1632
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1633
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_4

    .line 1634
    sget-object v5, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "Clean GPS aiding data complete."

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_4
    if-nez v3, :cond_6

    .line 1640
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_5

    .line 1641
    sget-object v5, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "GPS is temp enabled before, so, recover to original state for CDMA NV data now !!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1648
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1649
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_6

    .line 1650
    sget-object v5, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "Recover CDMA NV data by recover allowed location provider complete."

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_6
    return-void
.end method

.method public static doFactoryDataReset(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 1396
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 1397
    sget-object v5, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFactoryDataReset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1401
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->clearEncryption(Landroid/content/Context;)V

    .line 1403
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->clearGpsAidingData(Landroid/content/Context;)V

    .line 1405
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->checkRadioOff()V

    .line 1410
    const-string v5, "com.htc.intent.extra.erase_internal_sd_card"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1413
    .local v0, eraseInternalSdCard:Z
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t # internalSdCardStorageDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t # internalSdCardStorageState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t # eraseInternalSdCard (from parameters): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1422
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v4

    .line 1426
    .local v4, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-nez v4, :cond_2

    .line 1427
    const/4 v0, 0x0

    .line 1428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t # eraseInternalSdCard (no volume): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1432
    :cond_2
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_3

    .line 1433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t # eraseInternalSdCard (after check parameter): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1437
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1439
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    .line 1445
    :cond_4
    const-string v5, "com.htc.intent.extra.erase_external_sd_card"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1448
    .local v1, eraseSdCard:Z
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1450
    .local v2, sdCardStatus:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_5

    .line 1451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t * externalSdCardStorageDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t * externalSdCardStorageState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t * eraseExternalSdCard (from parameters): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1459
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v4

    .line 1462
    if-nez v4, :cond_6

    .line 1463
    const/4 v1, 0x0

    .line 1464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t * eraseExternalSdCard (no volume): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1467
    :cond_6
    const-string v5, "removed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "bad_removal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1470
    :cond_7
    const/4 v1, 0x0

    .line 1479
    :cond_8
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1488
    .local v3, service:Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1495
    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1497
    const-string v5, "delete_data"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1500
    :cond_9
    if-eqz v1, :cond_d

    .line 1501
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_a

    .line 1502
    const-string v5, "\t erase \"/data/\" partition and the external SD card"

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1508
    :cond_a
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 1512
    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1515
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1529
    :goto_1
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_b

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t master-clear intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1531
    const-string v5, "Done!"

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1533
    :cond_b
    return-void

    .line 1471
    .end local v3           #service:Landroid/content/Intent;
    :cond_c
    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1473
    const/4 v1, 0x0

    goto :goto_0

    .line 1518
    .restart local v3       #service:Landroid/content/Intent;
    :cond_d
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_e

    .line 1519
    const-string v5, "\t just erase \"/data/\" partition"

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1523
    :cond_e
    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static formatInternalAndExternalSdCardVolume(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1381
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 1382
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    .line 1383
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    .line 1384
    return-void
.end method

.method public static formatInternalSdCardVolume(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 1311
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v0, 0x0

    .line 1312
    .local v0, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v3

    .line 1314
    .local v3, sdState:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v6

    .line 1319
    .local v6, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1320
    :cond_0
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_1

    .line 1321
    const-string v7, ">> formatInternalSdCardVolume(...): ignored \n - volume: null or emulated \n<< formatInternalSdCardVolume(...): ignored"

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1370
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_3

    .line 1329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1330
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1332
    .local v2, mountPoint:Ljava/io/File;
    const-string v7, ">> formatInternalSdCardVolume(...)"

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t pathExist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t canRead: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t canWrite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t externalSdCardState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1352
    .end local v2           #mountPoint:Ljava/io/File;
    :cond_3
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountInternalSdCardVolume(Landroid/content/Context;)Z

    .line 1353
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/settings/framework/os/HtcStorageManager;->formatVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 1357
    const-string v7, "mounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1359
    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_5

    .line 1360
    const-string v7, "\t remounting SD card..."

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1362
    :cond_5
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountSdCardVolume(Landroid/content/Context;)V

    .line 1365
    :cond_6
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_1

    .line 1366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< formatInternalSdCardVolume(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static formatSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1293
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1294
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, ">> formatSdCardVolume(...): ignored \n - volume: null \n<< formatSdCardVolume(...): ignored"

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatVolume(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "size"

    .prologue
    .line 257
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatVolume(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 1258
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v1, 0x0

    .line 1260
    .local v1, endTime:J
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 1261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1262
    const-string v6, ">> formatVolume()"

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t mountPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1267
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 1269
    .local v3, service:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_1

    .line 1271
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 1278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<< formatVolume(), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1282
    :cond_2
    return-void

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to format the volume"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInternalSdCardStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 731
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalSdCardStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 863
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 864
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v1

    .line 867
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInternalSdCardStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 791
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v0, :cond_0

    .line 792
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 794
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getInternalSdCardStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 632
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 720
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 721
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    const-string v0, "mounted"

    return-object v0
.end method

.method public static getInternalStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 622
    invoke-static {p0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawInternalStorageTotalSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 623
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 4

    .prologue
    .line 87
    const-class v2, Lcom/android/settings/framework/os/HtcStorageManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 94
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;

    .line 99
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->mIMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 96
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get the mount service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getRawInternalStorageAvailableSpace(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 681
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 682
    .local v1, driveC:Ljava/io/File;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 685
    .local v2, driveD:Ljava/io/File;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    new-array v0, v5, [Ljava/io/File;

    aput-object v1, v0, v4

    .line 694
    .local v0, disks:[Ljava/io/File;
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v3

    return-wide v3

    .line 688
    .end local v0           #disks:[Ljava/io/File;
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/io/File;

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    .restart local v0       #disks:[Ljava/io/File;
    goto :goto_0
.end method

.method public static getRawInternalStorageTotalSpace(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 596
    const-string v0, "/sys/block/mmcblk0/size"

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J
    .locals 14
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 497
    const-wide/16 v0, 0x0

    .line 499
    .local v0, allSpace:J
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_0

    .line 500
    const-string v11, "getStorageTotalSpace(...)"

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 503
    :cond_0
    array-length v11, p1

    add-int/lit8 v9, v11, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_2

    .line 505
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    aget-object v11, p1, v9

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .local v10, stat:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v6, v11

    .line 522
    .local v6, blockSize:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v2, v11

    .line 523
    .local v2, availableBlocks:J
    mul-long v4, v6, v2

    .line 524
    .local v4, availableSpace:J
    add-long/2addr v0, v4

    .line 526
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_1

    .line 527
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t mountPoints["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 528
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - blockSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - availableBlocks: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 530
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - availableSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 503
    .end local v2           #availableBlocks:J
    .end local v4           #availableSpace:J
    .end local v6           #blockSize:J
    .end local v10           #stat:Landroid/os/StatFs;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 506
    :catch_0
    move-exception v8

    .line 514
    .local v8, e:Ljava/lang/IllegalArgumentException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mountPoints["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 534
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_3

    .line 535
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - allSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 537
    :cond_3
    return-wide v0
.end method

.method public static getRawStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)J
    .locals 14
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 324
    const-wide/16 v0, 0x0

    .line 326
    .local v0, allSpace:J
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_0

    .line 327
    const-string v11, "getStorageTotalSpace(...)"

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 330
    :cond_0
    array-length v11, p1

    add-int/lit8 v5, v11, -0x1

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_2

    .line 332
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    aget-object v11, p1, v5

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 349
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    .line 350
    .local v7, totalBlocks:J
    mul-long v9, v2, v7

    .line 351
    .local v9, totalSpace:J
    add-long/2addr v0, v9

    .line 353
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_1

    .line 354
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t mountPoints["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - blockSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 356
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - totalBlocks: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - totalSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 330
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    .end local v9           #totalSpace:J
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v4

    .line 341
    .local v4, e:Ljava/lang/IllegalArgumentException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mountPoints["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p1, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 361
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_3

    .line 362
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t - allSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 364
    :cond_3
    return-wide v0
.end method

.method public static getSdCardStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 654
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdCardStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 834
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v0, :cond_0

    .line 835
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v1

    .line 837
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdCardStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 760
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 761
    .local v0, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 764
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getSdCardStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 567
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 449
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 467
    .local v4, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 468
    .local v0, availableBlocks:J
    mul-long v2, v4, v0

    .line 470
    .local v2, availableSpace:J
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_0

    .line 471
    const-string v8, "getStorageAvailableSpace(...)"

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t mountPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t blockSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t availableBlocks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t availableSpace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v7           #stat:Landroid/os/StatFs;
    :goto_0
    return-object v8

    .line 450
    :catch_0
    move-exception v6

    .line 458
    .local v6, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mountPoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_1

    .line 460
    const-string v8, "getStorageAvailableSpace(...)"

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t mountPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 463
    :cond_1
    const v8, 0x7f0c08b7

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 552
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageAvailableSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v0

    .line 554
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 277
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 295
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v4, v8

    .line 296
    .local v4, totalBlocks:J
    mul-long v6, v0, v4

    .line 298
    .local v6, totalSpace:J
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_0

    .line 299
    const-string v8, "getStorageTotalSpace(...)"

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t mountPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t blockSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t totalBlocks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t totalSpace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-static {p0, v6, v7}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .end local v0           #blockSize:J
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    .end local v6           #totalSpace:J
    :goto_0
    return-object v8

    .line 278
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mountPoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    sget-boolean v8, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v8, :cond_1

    .line 288
    const-string v8, "getStorageTotalSpace(...)"

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t mountPoint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 291
    :cond_1
    const v8, 0x7f0c08b7

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "mountPoints"

    .prologue
    .line 379
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->getRawStorageTotalSpace(Landroid/content/Context;[Ljava/io/File;)J

    move-result-wide v0

    .line 380
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStorageUsedSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 399
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 417
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v6, v10

    .line 418
    .local v6, totalBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 419
    .local v0, availableBlocks:J
    sub-long v10, v6, v0

    mul-long v8, v2, v10

    .line 421
    .local v8, usedSpace:J
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_0

    .line 422
    const-string v10, "getStorageAvailableSpace(...)"

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t mountPoint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t blockSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t totalBlocks: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 426
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t availableBlocks: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 427
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t usedSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-static {p0, v8, v9}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #totalBlocks:J
    .end local v8           #usedSpace:J
    :goto_0
    return-object v10

    .line 400
    :catch_0
    move-exception v4

    .line 408
    .local v4, e:Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mountPoint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_1

    .line 410
    const-string v10, "getStorageAvailableSpace(...)"

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 411
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t mountPoint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 413
    :cond_1
    const v10, 0x7f0c08b7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static getUsbStorageAvailableSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 740
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageAvailableSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 884
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getVirtualUsbDeviceDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsbStorageTotalSpace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 641
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->getStorageTotalSpace(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z
    .locals 9
    .parameter "context"
    .parameter "mountPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 112
    :cond_0
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasAppAccessingStorage("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "\t The arguments context or mountPoint can not be null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    :goto_0
    return v5

    .line 118
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 123
    .local v3, mountService:Landroid/os/storage/IMountService;
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 124
    .local v4, users:[I
    if-eqz v4, :cond_4

    array-length v7, v4

    if-lez v7, :cond_4

    .line 125
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_3

    .line 126
    const-string v5, "hasAppAccessingStorage(...)"

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t mountPoint: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 128
    const-string v5, "\t The following pid(s) are accessing the path."

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t - users["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, v4, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_3
    move v5, v6

    .line 133
    goto :goto_0

    .line 136
    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_5

    .line 137
    const-string v7, "hasAppAccessingStorage(...)"

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t mountPoint: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t SdCardStorageDirectory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 143
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 152
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 154
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_6

    .line 155
    const-string v5, "\t The following app installed on external SD card are running."

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_6

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t - app["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t processName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t packageName: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t className: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\t sourceDir: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .end local v1           #i:I
    :cond_6
    move v5, v6

    .line 164
    goto/16 :goto_0
.end method

.method public static mountInternalSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 943
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 944
    return-void
.end method

.method public static mountSdCardVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 933
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 934
    return-void
.end method

.method public static mountUsbVolume(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 953
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/os/HtcStorageManager;->mountVolume(Landroid/content/Context;Ljava/io/File;)V

    .line 954
    return-void
.end method

.method public static mountVolume(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .parameter "context"
    .parameter "mountPoint"

    .prologue
    .line 901
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v1, 0x0

    .line 903
    .local v1, endTime:J
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 905
    const-string v6, ">> mountVolume(...)"

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t mountPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 910
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 912
    .local v3, service:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_1

    .line 914
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<< mountVolume(), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 924
    :cond_2
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to mount volume"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 12
    .parameter "context"
    .parameter "infoPath"

    .prologue
    .line 185
    const-wide/16 v0, 0x200

    .line 186
    .local v0, SECTOR_SIZE:J
    invoke-static {p1}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    .local v2, content:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 192
    :cond_0
    const-string v4, "0"

    .line 217
    .local v4, sizeInString:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 218
    .local v6, totalSectors:J
    const-wide/16 v10, 0x200

    mul-long v8, v6, v10

    .line 220
    .local v8, totalSpace:J
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 221
    const-string v10, "readStorageSize(...)"

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t infoPath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 223
    const-string v10, "\t SECTOR_SIZE: 512"

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t totalSectors: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t totalSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 227
    :cond_2
    return-wide v8

    .line 198
    .end local v4           #sizeInString:Ljava/lang/String;
    .end local v6           #totalSectors:J
    .end local v8           #totalSpace:J
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 199
    .restart local v4       #sizeInString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 202
    .local v3, length:I
    const/4 v5, 0x0

    .local v5, splitAt:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_4

    .line 206
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 210
    const-string v4, "0"

    goto :goto_0

    .line 202
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static readStorageSize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "infoPath"

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/android/settings/framework/os/HtcStorageManager;->readRawStorageSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 245
    .local v0, size:J
    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/os/HtcStorageManager;->formatStorageSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static setRadioPower(Lcom/android/internal/telephony/ITelephony;I)Z
    .locals 7
    .parameter "sPhone"
    .parameter "PhoneType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1659
    const/4 v1, 0x0

    .line 1660
    .local v1, radioOff:Z
    if-nez p1, :cond_4

    .line 1663
    :try_start_0
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 1664
    sget-object v4, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v5, "Start to shutdown radio."

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move v1, v3

    .line 1667
    :goto_0
    if-nez v1, :cond_2

    .line 1668
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v1, v2

    .line 1666
    goto :goto_0

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException during radio shutdown"

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1676
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_5

    .line 1677
    sget-object v4, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to shutdown radio. PhoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v1, v3

    .line 1680
    :goto_2
    if-nez v1, :cond_2

    .line 1681
    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1683
    :catch_1
    move-exception v0

    .line 1684
    .restart local v0       #ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException during radio shutdown"

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_7
    move v1, v2

    .line 1679
    goto :goto_2
.end method

.method public static unmountInternalSdCardVolume(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 1114
    const-wide/16 v8, 0x0

    .local v8, startTime:J
    const-wide/16 v4, 0x0

    .line 1115
    .local v4, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v7

    .line 1117
    .local v7, mountService:Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .line 1119
    .local v10, successful:Z
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    .line 1124
    .local v11, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1125
    :cond_0
    sget-boolean v13, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v13, :cond_1

    .line 1126
    const-string v13, ">> unmountInternalSdCardVolume(...): ignored \n - volume: null or emulated \n<< unmountInternalSdCardVolume(...): ignored"

    invoke-static {v13}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1242
    :cond_1
    :goto_0
    return v12

    .line 1133
    :cond_2
    sget-boolean v12, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_3

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1135
    const-string v12, ">> unmountInternalSdCardVolume(...)"

    invoke-static {v12}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\t path: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1137
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\t state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1140
    :cond_3
    if-eqz v7, :cond_4

    .line 1168
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1177
    .local v6, mountPoint:Ljava/lang/String;
    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    invoke-interface {v7, v6, v12, v13}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    const/4 v10, 0x1

    .line 1184
    .end local v6           #mountPoint:Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    .line 1188
    const/16 v1, 0x1f4

    .line 1191
    .local v1, TIME_INTERVAL:I
    const/16 v0, 0xf0

    .line 1193
    .local v0, SCANNING_TIMES:I
    new-instance v2, Lcom/android/settings/framework/os/HtcStorageManager$2;

    invoke-direct {v2}, Lcom/android/settings/framework/os/HtcStorageManager$2;-><init>()V

    .line 1226
    .local v2, cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    const/16 v12, 0x1f4

    invoke-virtual {v2, v12}, Lcom/android/settings/framework/os/HtcConditionScanner;->setTimeInterval(I)V

    .line 1227
    const/16 v12, 0xf0

    invoke-virtual {v2, v12}, Lcom/android/settings/framework/os/HtcConditionScanner;->setScanningTimes(I)V

    .line 1228
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->start()V

    .line 1229
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->getResult()Z

    move-result v10

    .line 1232
    .end local v0           #SCANNING_TIMES:I
    .end local v1           #TIME_INTERVAL:I
    .end local v2           #cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    :cond_5
    if-nez v10, :cond_6

    .line 1233
    sget-object v12, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v13, "failed to unmount the internal SD card volume"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_6
    sget-boolean v12, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_7

    .line 1237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1238
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<< unmountInternalSdCardVolume(), "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v4, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    :cond_7
    move v12, v10

    .line 1242
    goto/16 :goto_0

    .line 1179
    .restart local v6       #mountPoint:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1180
    .local v3, e:Landroid/os/RemoteException;
    sget-object v12, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static unmountSdCardVolume(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 971
    const-wide/16 v8, 0x0

    .local v8, startTime:J
    const-wide/16 v4, 0x0

    .line 972
    .local v4, endTime:J
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v7

    .line 974
    .local v7, mountService:Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .line 977
    .local v10, successful:Z
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v12

    if-nez v12, :cond_1

    .line 978
    sget-boolean v12, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v12, :cond_0

    .line 979
    const-string v12, ">> unmountSdCardVolume(...): ignored \n - volume: null \n<< unmountSdCardVolume(...): ignored"

    invoke-static {v12}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 1101
    :cond_0
    :goto_0
    return v11

    .line 986
    :cond_1
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_2

    .line 987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 988
    const-string v11, ">> unmountSdCardVolume(...)"

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 989
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 990
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    .line 993
    :cond_2
    if-eqz v7, :cond_3

    .line 994
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, mountPoint:Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v7, v6, v11, v12}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    const/4 v10, 0x1

    .line 1010
    .end local v6           #mountPoint:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 1014
    const/16 v1, 0x1f4

    .line 1017
    .local v1, TIME_INTERVAL:I
    const/16 v0, 0xf0

    .line 1019
    .local v0, SCANNING_TIMES:I
    new-instance v2, Lcom/android/settings/framework/os/HtcStorageManager$1;

    invoke-direct {v2}, Lcom/android/settings/framework/os/HtcStorageManager$1;-><init>()V

    .line 1085
    .local v2, cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    const/16 v11, 0x1f4

    invoke-virtual {v2, v11}, Lcom/android/settings/framework/os/HtcConditionScanner;->setTimeInterval(I)V

    .line 1086
    const/16 v11, 0xf0

    invoke-virtual {v2, v11}, Lcom/android/settings/framework/os/HtcConditionScanner;->setScanningTimes(I)V

    .line 1087
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->start()V

    .line 1088
    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcConditionScanner;->getResult()Z

    move-result v10

    .line 1091
    .end local v0           #SCANNING_TIMES:I
    .end local v1           #TIME_INTERVAL:I
    .end local v2           #cs:Lcom/android/settings/framework/os/HtcConditionScanner;
    :cond_4
    if-nez v10, :cond_5

    .line 1092
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to unmount the SD card volume"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_5
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_6

    .line 1096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1097
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<< unmountSdCardVolume(), "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v4, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/os/HtcStorageManager;->Log(Ljava/lang/String;)V

    :cond_6
    move v11, v10

    .line 1101
    goto/16 :goto_0

    .line 1005
    .restart local v6       #mountPoint:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1006
    .local v3, e:Landroid/os/RemoteException;
    sget-object v11, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static waitRadioPowerOFF(Lcom/android/internal/telephony/ITelephony;ZZZ)V
    .locals 8
    .parameter "sPhone"
    .parameter "isDualGSM"
    .parameter "radioOff_slot1"
    .parameter "radioOff_slot2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1692
    const/4 v0, 0x2

    .line 1693
    .local v0, PhoneType_slot1:I
    const/4 v1, 0x1

    .line 1695
    .local v1, PhoneType_slot2:I
    if-eqz p1, :cond_0

    .line 1696
    const/4 v0, 0x1

    .line 1697
    const/4 v1, 0x5

    .line 1701
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_3

    .line 1702
    if-nez p2, :cond_1

    .line 1704
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    move p2, v4

    .line 1711
    :cond_1
    :goto_1
    if-nez p3, :cond_2

    .line 1713
    :try_start_1
    invoke-interface {p0, v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_5

    move p3, v4

    .line 1720
    :cond_2
    :goto_2
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 1721
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_3

    .line 1722
    sget-object v4, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v5, "Radio shutdown complete."

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_3
    return-void

    :cond_4
    move p2, v5

    .line 1704
    goto :goto_1

    .line 1705
    :catch_0
    move-exception v2

    .line 1706
    .local v2, ex:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    const/4 p2, 0x1

    goto :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_5
    move p3, v5

    .line 1713
    goto :goto_2

    .line 1714
    :catch_1
    move-exception v2

    .line 1715
    .restart local v2       #ex:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/settings/framework/os/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    const/4 p3, 0x1

    goto :goto_2

    .line 1726
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_6
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1701
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
