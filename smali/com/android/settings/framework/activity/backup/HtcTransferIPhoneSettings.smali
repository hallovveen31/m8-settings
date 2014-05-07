.class public Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferIPhoneSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 42
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 43
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 46
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v4, 0x7f0c0a6b

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 48
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 53
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportHtcSyncManager(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v1, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 63
    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    new-instance v1, Lcom/android/settings/framework/preference/backup/iphone/HtcTransferDataFromIPhonePreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/iphone/HtcTransferDataFromIPhonePreference;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v1       #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 69
    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->onPlugin(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->requestHandlers()V

    .line 33
    return-void
.end method
