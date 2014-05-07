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

    .prologue
    .line 36
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

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$3;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 134
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$4;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;-><init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 33
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->showResetConfirmDialog()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private setupDialog()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;-><init>()V

    .line 59
    .local v0, confirmDialog:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mBackupConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->getTagInfo()Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private showResetConfirmDialog()V
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Lcom/android/settings/MasterClearConfirm;

    invoke-direct {v0}, Lcom/android/settings/MasterClearConfirm;-><init>()V

    .line 123
    .local v0, confirmDialog:Lcom/android/settings/MasterClearConfirm;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/MasterClearConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/MasterClearConfirm;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->mResetConfirmDialog_cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/MasterClearConfirm;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getTagInfo()Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/MasterClearConfirm;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
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

    .line 169
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->showResetConfirmDialog()V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_1
    if-nez p2, :cond_2

    .line 173
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->finish()V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->setupDialog()V

    .line 50
    return-void
.end method
