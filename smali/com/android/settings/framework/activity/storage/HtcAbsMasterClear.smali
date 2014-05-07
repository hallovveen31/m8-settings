.class public Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcAbsMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$2;
    }
.end annotation


# static fields
.field protected static final BOOMERANG_REQUEST:I = 0x1869f

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsHtcTransportAlive:Z

.field private mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isHtcTransportAlive()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mIsHtcTransportAlive:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 179
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private setHtcTransportAlive()V
    .locals 4

    .prologue
    .line 73
    const-string v0, "select_htc_backup"

    .line 75
    .local v0, IS_HTC_ACCOUNT:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, argument:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 77
    const-string v2, "select_htc_backup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mIsHtcTransportAlive:Z

    .line 80
    sget-boolean v2, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHtcTransportAlive(): \n - contain key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "select_htc_backup"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mIsHtcTransportAlive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->log(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyBoomerangPolicyForOkButton(Landroid/widget/Button;)V
    .locals 4
    .parameter "button"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 112
    .local v1, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    .line 113
    invoke-static {v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getCurrentBackupState(Landroid/content/Context;)Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    move-result-object v0

    .line 115
    .local v0, backupState:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
    sget-boolean v2, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBoomerangPolicyForOkButton(): backupState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$2;->$SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I

    invoke-virtual {v0}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    sget-boolean v1, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:\n - requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->log(Ljava/lang/String;)V

    .line 165
    :cond_0
    const v1, 0x1869f

    if-ne p1, v1, :cond_1

    .line 166
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, className:Ljava/lang/String;
    const-class v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 176
    .end local v0           #className:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->setHtcTransportAlive()V

    .line 66
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->unregisterListener()V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->registerListener()V

    .line 97
    return-void
.end method

.method protected showNextConfirmation(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->isHtcTransportAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    const v2, 0x1869f

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Lcom/android/settings/MasterClearConfirm;

    invoke-direct {v1}, Lcom/android/settings/MasterClearConfirm;-><init>()V

    .line 146
    .local v1, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {v1, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
