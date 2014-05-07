.class public abstract Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsApplicationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPositiveButtonResIdOfWarnAppInstallation(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 51
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const p1, 0x7f0c00a3

    .line 54
    .end local p1
    :cond_0
    return p1
.end method

.method protected pluginExtraComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 31
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->supportAutomaticStartup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    new-instance v1, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;-><init>(Landroid/content/Context;)V

    .line 36
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 38
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method
