.class public Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcMasterClearBackupProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackupProgressDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mLastBackupTime:Ljava/util/Date;

.field private mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$3;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mBackupProgressDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$4;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->onBackupStateChange(Landroid/content/Context;ZLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->doBackupInBackground(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->cancelBackupProgressDialog()V

    return-void
.end method

.method private cancelBackupProgressDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelBackupProgressDialog()\n - this.mProgressDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - isShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doBackupInBackground(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getCurrentBackupState(Landroid/content/Context;)Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    move-result-object v0

    sget-object v2, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;->$SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getLastBackupTime(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.backupreset.BACKUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBackupInBackground(): \n - lastBackupState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - lastBackupTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->cancelBackup(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getBackupProgressDialog(Landroid/content/Context;)Lcom/htc/app/HtcProgressDialog;
    .locals 3

    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c01b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBackupStateChange(Landroid/content/Context;ZLandroid/net/Uri;)V
    .locals 13

    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getCurrentBackupState(Landroid/content/Context;)Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getLastBackupTime(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v6

    invoke-static {p1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getLastFailureTime(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long v1, v9, v11

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long v3, v9, v11

    iget-object v9, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    :goto_0
    sget-boolean v9, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBackupStateChange()\n - backupState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - lastBackupTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mLastBackupTime:Ljava/util/Date;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - newBackupTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - newFailureTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - diffBackupTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - diffFailureTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - isShowing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v5, :cond_2

    sget-object v9, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->READY:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    if-ne v0, v9, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_4

    const/4 v8, -0x1

    :goto_1
    sget-boolean v9, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBackupStateChange():result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - RESULT_OK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n - RESULT_CANCELED: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->cancelBackupProgressDialog()V

    :cond_2
    return-void

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v8, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    new-instance v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->registerListener()V

    iget-object v3, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "com.htc.backupreset.CANCEL_BACKUP"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v5, 0x40b0

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_1

    const-string v1, "com.htc.permission.APP_PLATFORM"

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->getBackupProgressDialog(Landroid/content/Context;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mListener:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;->unregisterListener()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
