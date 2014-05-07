.class public Lcom/android/settings/framework/activity/security/HtcKidModeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcKidModeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 39
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 40
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c01e5

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 45
    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->addCallback(Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcAllowIncomingCallsPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcAllowIncomingCallsPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->addCallback(Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;-><init>(Landroid/content/Context;)V

    .line 57
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->addCallback(Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->onPlugin(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcKidModeSettings;->requestHandlers()V

    .line 31
    return-void
.end method
