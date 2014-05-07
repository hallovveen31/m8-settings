.class public Lcom/android/settings/framework/activity/security/HtcKidModeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcKidModeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    const v3, 0x7f0c01e5

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcAllowIncomingCallsPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcAllowIncomingCallsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->onPlugin(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method
