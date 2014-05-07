.class public Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferMyStuffSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    const v4, 0x7f0c0a62

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDnaTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportHtcSyncManager(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcIPhoneTransferPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    :cond_2
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTransfer(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->setHost(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c1171

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 4

    const-string v0, "com.htc.backupreset"

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.htc.backupreset"

    invoke-static {v2, v3}, Lcom/android/settings/framework/content/plugin/HtcPluginManager;->isPluggedin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.backupreset"

    const-string v3, "com.htc.backupreset.ui.BackupResetActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->onPlugin(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcBackupFeatureFlags;->supportDefaultTipsAndHelp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;->buildAndAddTo(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/view/Menu;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
