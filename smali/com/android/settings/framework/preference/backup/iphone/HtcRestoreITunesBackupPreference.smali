.class public Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;
.super Lcom/android/settings/framework/preference/backup/iphone/HtcAbsTransferPreference;
.source "HtcRestoreITunesBackupPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/backup/iphone/HtcAbsTransferPreference;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/backup/iphone/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/backup/iphone/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityManager;->isInSettingsTask(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;

    .line 64
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 62
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment;

    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a6d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/iphone/HtcRestoreITunesBackupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a6c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0c0a6c

    return v0
.end method

.method protected getCustomULogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "iTune"

    return-object v0
.end method
