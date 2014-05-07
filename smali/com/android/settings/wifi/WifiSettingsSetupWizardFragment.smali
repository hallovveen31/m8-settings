.class public Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;
    }
.end annotation


# static fields
.field private static final INTENT_STRING_INTERNET_CONNECTION_HAS_RUN:Ljava/lang/String; = "InternetConnectionHasRun"

.field private static final MOBILE_DATA:Ljava/lang/String; = "oobe_mobile_data"

.field private static final TAG:Ljava/lang/String; = "OOBE_WifiSettingsSetupWizardFragment"


# instance fields
.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mInternetConnectionHasRun:Z

.field private mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

.field private mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

.field private mbMobileNetworkChecked:Z

.field private mbShowMobile:Z

.field private mbShowWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    .line 250
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return p1
.end method

.method private getFinalString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "str_id"

    .prologue
    .line 379
    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    if-nez v1, :cond_0

    .line 307
    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v2, "mWrapConnectivityMgr null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 311
    .local v0, enabled:Z
    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 330
    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 334
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 336
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private mobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 344
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileDataEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, processDataConnResult:Z
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 349
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 350
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled mTelephonyManager = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setMobileDataEnabled(Z)V

    .line 354
    if-eqz p1, :cond_2

    .line 355
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/htc/wrap/android/telephony/HtcWrapTelephonyManager;->enableDataConnectivity(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    .line 356
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled , processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Both WIFI and Mobile Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled setMobileDataEnabled , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception cause , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Only Mobile Data Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 366
    :cond_2
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Mobile Data Disable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/htc/wrap/android/telephony/HtcWrapTelephonyManager;->disableDataConnectivity(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    .line 368
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setDefaultValue(Z)V
    .locals 7
    .parameter "isFromCreate"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "InternetConnectionHasRun"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    .line 290
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-eqz v2, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    .line 292
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultValue mbMobileNetworkChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 277
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "InternetConnectionHasRun"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    .line 283
    .local v0, currentHasRun:Z
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-eq v0, v2, :cond_0

    .line 286
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    .line 287
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v5, "has run changed"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #currentHasRun:Z
    :cond_3
    move v0, v4

    .line 281
    goto :goto_3

    .line 296
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oobe_mobile_data"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, mobileData:I
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultValue: InternetConnectionHasRun = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MOBILE_DATA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-ne v1, v4, :cond_5

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_4
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 316
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "mWrapConnectivityMgr null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected constructAccessPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mType:I

    .line 247
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isMobileNetworkChecked()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 84
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    .line 87
    check-cast v3, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isShowMobile()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    move-object v3, v1

    .line 88
    check-cast v3, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isShowWifi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    .line 89
    const-string v3, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbShowMobile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v3, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbShowWifi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v3, :cond_4

    .line 93
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, cm:Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const v4, 0x7f0c04fa

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 104
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v3, :cond_3

    .line 105
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 106
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const v4, 0x7f0c04fb

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    new-instance v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_4

    .line 113
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setDefaultValue(Z)V

    .line 114
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c04fc

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 116
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c04fd

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v4, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;)V

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 132
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v3, :cond_0

    .line 133
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    .line 134
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f0c0506

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 140
    :cond_5
    new-instance v3, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-direct {v3, p0, v1, v7}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    .line 141
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const-string v4, "add_network"

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setKey(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const v4, 0x7f0c0d42

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setTitle(I)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setPersistent(Z)V

    goto/16 :goto_0

    .line 96
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 221
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method onDestoryDoMobileNetworkSetup()V
    .locals 3

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: mbMobileNetworkChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mobileDataEnabled(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "InternetConnectionHasRun"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 211
    const-string v0, "add_network"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onAddNetworkPressed()V

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setDefaultValue(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method setMobileNetworkChecked(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 240
    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileNetworkChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    .line 242
    return-void
.end method

.method protected updateAccessPoints()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    .line 167
    .local v1, activity:Lcom/android/settings/wifi/WifiSettingsSetupWizard;
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    .line 168
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v5

    .line 170
    .local v2, isWifiEnabled:Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 171
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 175
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v3, :cond_0

    .line 176
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v6, :cond_4

    .line 177
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 180
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 181
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_4

    .line 182
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 185
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_0

    .line 186
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 190
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 194
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->isNetworkAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 195
    const v5, 0x2040265

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnText(I)V

    .line 202
    .end local v0           #accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;->setEnabled(Z)V

    .line 203
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 168
    .end local v2           #isWifiEnabled:Z
    .end local v3           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 198
    .restart local v0       #accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    .restart local v2       #isWifiEnabled:Z
    .restart local v3       #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_8
    const v5, 0x2040368

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnText(I)V

    goto :goto_2
.end method
