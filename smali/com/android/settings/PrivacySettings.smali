.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_SETTINGS:Ljava/lang/String; = "backup_settings"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/PrivacySettings;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/PrivacySettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private pluginExtraComponents()V
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 112
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v2, 0x0

    .line 114
    .local v2, index:I
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x2040335

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 124
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->addCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 293
    :cond_3
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 285
    goto :goto_1

    :cond_6
    move v2, v3

    .line 286
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, transport:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.google.android.backup/.BackupTransportService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    if-eqz p1, :cond_0

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const/4 p1, 0x0

    .line 247
    .end local v0           #transport:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, p1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    :goto_1
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    const v2, 0x7f0c1178

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 8

    .prologue
    .line 171
    const v3, 0x7f0c1181

    .line 172
    .local v3, titleRes:I
    const v1, 0x7f0c1182

    .line 176
    .local v1, messageRes:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, transport:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/PrivacySettings;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 178
    sget-object v5, Lcom/android/settings/PrivacySettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    const-string v5, "com.htc.backup/.BackupTransportService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    const v3, 0x7f0c01a3

    .line 183
    const v1, 0x7f0c01a4

    .line 190
    .end local v4           #transport:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 192
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 195
    .local v2, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 203
    :goto_1
    return-void

    .line 198
    :cond_3
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 186
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #msg:Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 211
    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 212
    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .line 213
    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 215
    .local v2, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 216
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, transport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .end local v6           #transport:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 227
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 229
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v3, v8

    .line 230
    .local v3, configureEnabled:Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 231
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 232
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 233
    return-void

    .line 219
    .end local v3           #configureEnabled:Z
    :catch_0
    move-exception v4

    .line 221
    .local v4, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    move v7, v9

    .line 225
    goto :goto_1

    :cond_1
    move v3, v9

    .line 229
    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 297
    const v0, 0x7f0c12d6

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 267
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateConfigureSummary()V

    .line 272
    :cond_0
    iput v2, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->pluginExtraComponents()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 82
    .local v1, screen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 85
    const-string v2, "backup_settings"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 86
    const-string v2, "auto_restore"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 87
    const-string v2, "configure_account"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Lcom/htc/preference/HtcPreferenceScreen;

    .line 88
    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    const-string v3, "backup_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 96
    const-string v2, "backup_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "backup_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->requestHandlers()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackup:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    return v2

    .line 156
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 161
    .local v0, curState:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 146
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 147
    return-void
.end method
