.class public Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcMasterClearBackupConfirmActivity.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackupConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mBackupConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mBackupConfirmDialog_positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfirmDialog:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;

.field private mResetConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mResetConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$3;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$4;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->showResetConfirmDialog()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupDialog()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getTagInfo()Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showResetConfirmDialog()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Lcom/android/settings/MasterClearConfirm;

    invoke-direct {v0}, Lcom/android/settings/MasterClearConfirm;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->getTagInfo()Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Backup][Return] onActivityResult:\n - requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->showResetConfirmDialog()V

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->setupDialog()V

    return-void
.end method
