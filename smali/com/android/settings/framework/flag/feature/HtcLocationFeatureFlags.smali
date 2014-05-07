.class public Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;
.super Ljava/lang/Object;
.source "HtcLocationFeatureFlags.java"


# static fields
.field private static final ACC_KEY_SUPPORT_E911:Ljava/lang/String; = "enable_E911_for_US_only"

.field private static final REINSTALL_VISIBILITY_KEY:Ljava/lang/String; = "reinstall_visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAGPSAssistanceVisibility()Z
    .locals 2

    .prologue
    .line 246
    const/16 v0, 0x1a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getAGPSSyncTimeVisibility(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 264
    const/16 v0, 0x1a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getAssistedGPSVisibility()Z
    .locals 2

    .prologue
    .line 225
    const/16 v0, 0x1b

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1c

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1d

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getGPSOneLocNetworkVisibility(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 178
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/16 v1, 0x1f

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->isSupportAGPS()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWorldPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getGPSSatellitesVisibility()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public static final getIntegrateGoogleNavigationVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public static final getPhoneFinderVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static final getReinstallLocationAppVisibility(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 95
    const-string v0, "reinstall_visibility"

    .line 97
    .local v0, KEY:Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, visible:Z
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v5, "reinstall_visibility"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const-string v5, "reinstall_visibility"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v4, v3

    .line 120
    .end local v3           #visible:Z
    .local v4, visible:Z
    :goto_0
    return v4

    .line 107
    .end local v4           #visible:Z
    .restart local v3       #visible:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.laputa.installer.REINSTALL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 110
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 114
    :goto_1
    const-string v5, "reinstall_visibility"

    invoke-static {p0, v5, v3}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 118
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "reinstall_visibility"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v4, v3

    .line 120
    .end local v3           #visible:Z
    .restart local v4       #visible:Z
    goto :goto_0

    .line 110
    .end local v4           #visible:Z
    .restart local v3       #visible:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final getUseLocationForGoogleVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/settings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getUseWirelessNetworkVisibility()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupportAGPS()Z
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAssistedGPSVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAGPSAssistanceVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportCompassWraningFeature(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public static final supportE911()Z
    .locals 2

    .prologue
    .line 198
    const-string v0, "enable_E911_for_US_only"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportGPSOneDoubleConfirm(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public static supportLocationPrivacyFeature()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public static supportSprintExtensionAPI()Z
    .locals 2

    .prologue
    .line 320
    const/16 v0, 0xa

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
