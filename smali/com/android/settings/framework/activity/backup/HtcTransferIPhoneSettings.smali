.class public Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferIPhoneSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0a6b

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportHtcSyncManager(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Lcom/android/settings/framework/preference/backup/iphone/HtcTransferDataFromIPhonePreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/iphone/HtcTransferDataFromIPhonePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;->onPlugin(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method
