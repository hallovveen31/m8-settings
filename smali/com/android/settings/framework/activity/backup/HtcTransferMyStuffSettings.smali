.class public Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferMyStuffSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->TAG:Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 161
    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 73
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 74
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 77
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v4, 0x7f0c0a62

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 79
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDnaTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->addCallback(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 95
    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;

    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local v1       #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->addCallback(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 103
    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportHtcSyncManager(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    :cond_1
    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;-><init>(Landroid/content/Context;)V

    .line 109
    .restart local v1       #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->addCallback(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 116
    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    :cond_2
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v1       #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->addCallback(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    .line 127
    .end local v1           #preference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    :cond_3
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f0c1171

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 171
    const-string v0, "com.htc.backupreset"

    .line 172
    .local v0, HTC_BACKUP_PACKAGE:Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, parentIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.backupreset"

    invoke-static {v2, v3}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    new-instance v1, Landroid/content/Intent;

    .end local v1           #parentIntent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .restart local v1       #parentIntent:Landroid/content/Intent;
    const-string v2, "com.htc.backupreset"

    const-string v3, "com.htc.backupreset.ui.BackupResetActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 133
    sget-boolean v1, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "onActivityResult(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (RESULT_OK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RESULT_CANCEL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v2

    const-string v3, "\t"

    invoke-interface {v2, v3, p3}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->log(Ljava/lang/String;)V

    .line 151
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    if-ne p2, v4, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->finishFragment()V

    .line 158
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->onPlugin(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->requestHandlers()V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTipsAndHelp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;->buildAndAddTo(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/view/Menu;)Landroid/view/MenuItem;

    .line 55
    :cond_0
    return-void
.end method
