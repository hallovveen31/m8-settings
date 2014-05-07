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

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return p1
.end method

.method private getFinalString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    if-nez v1, :cond_0

    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v2, "mWrapConnectivityMgr null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

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

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private mobileDataEnabled(Z)V
    .locals 5

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

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled mTelephonyManager = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setMobileDataEnabled(Z)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/htc/wrap/android/telephony/HtcWrapTelephonyManager;->enableDataConnectivity(Landroid/telephony/TelephonyManager;)Z

    move-result v1

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

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Both WIFI and Mobile Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled setMobileDataEnabled , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception cause , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Only Mobile Data Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v3, "MobileDataEnabled , Mobile Data Disable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/htc/wrap/android/telephony/HtcWrapTelephonyManager;->disableDataConnectivity(Landroid/telephony/TelephonyManager;)Z

    move-result v1

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "InternetConnectionHasRun"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

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

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "InternetConnectionHasRun"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    const-string v2, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v5, "has run changed"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oobe_mobile_data"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

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

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "mWrapConnectivityMgr null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

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

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isMobileNetworkChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isShowMobile()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    move-object v3, v1

    check-cast v3, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isShowWifi()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

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

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v3, :cond_4

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const v4, 0x7f0c04fa

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    const v4, 0x7f0c04fb

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_4

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setDefaultValue(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c04fc

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c04fd

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v4, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;)V

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f0c0506

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    :cond_5
    new-instance v3, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-direct {v3, p0, v1, v7}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const-string v4, "add_network"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    const v4, 0x7f0c0d42

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onDestoryDoMobileNetworkSetup()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v0, :cond_0

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

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mobileDataEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "InternetConnectionHasRun"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2

    const-string v0, "add_network"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "OOBE_WifiSettingsSetupWizardFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mInternetConnectionHasRun:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setDefaultValue(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method setMobileNetworkChecked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

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

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z

    return-void
.end method

.method protected updateAccessPoints()V
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v5

    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowMobile:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mMobileNetworkCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mWifiCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbShowWifi:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->constructAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefNoNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->isNetworkAvailable(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x2040265

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnText(I)V

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mPrefAddNetwork:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$MyHtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const v5, 0x2040368

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnText(I)V

    goto :goto_2
.end method
