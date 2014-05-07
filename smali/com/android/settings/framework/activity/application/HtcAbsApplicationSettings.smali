.class public abstract Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsApplicationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPositiveButtonResIdOfWarnAppInstallation(I)I
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0c00a3

    :cond_0
    return p1
.end method

.method protected pluginExtraComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 4

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->supportAutomaticStartup()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    return-void
.end method
