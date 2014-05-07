.class public Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcMediaFormatConfirm.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DIALOG_ERROR_UNMOUNT:I = 0x2

.field private static final MESSAGE_UNMOUNT_SDCARD:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFinalButton:Landroid/widget/Button;

.field private volatile mFinalClick:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManagerService:Landroid/os/storage/StorageManager;

.field mStorageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    .line 67
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageManagerService:Landroid/os/storage/StorageManager;

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClick:Z

    .line 79
    iput v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    .line 95
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 167
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 402
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$2;-><init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->closeThisFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->unmountSdCard()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->updateStatus()V

    return-void
.end method

.method private asyncUnmountSdCard(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t find the non-UI handler to unmount SD card."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeProgressDialog()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 528
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 530
    :cond_0
    return-void
.end method

.method private closeThisFragment()V
    .locals 3

    .prologue
    .line 461
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackStackEntryCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private doUnmountOperation(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 316
    const v0, 0x7f0c0e81

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->showToast(I)V

    .line 319
    const v0, 0x204027d

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->showProgressDialog(I)V

    .line 322
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->asyncUnmountSdCard(Z)V

    .line 323
    return-void
.end method

.method private establishFinalConfirmationState(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .parameter "inflater"

    .prologue
    const/4 v9, 0x2

    .line 114
    const v7, 0x7f0400a8

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, finalView:Landroid/view/View;
    const v7, 0x7f090161

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, finalText:Landroid/widget/TextView;
    const v7, 0x7f090162

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 119
    .local v2, finalButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalButton:Landroid/widget/Button;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 128
    .local v1, argument:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 129
    const-string v7, "extra.storage.type"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    .line 134
    :cond_0
    iget v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 136
    const v7, 0x7f0c0293

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .local v6, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    const/16 v7, 0x8

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 149
    .end local v6           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v7, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 152
    .local v0, activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v7

    if-nez v7, :cond_3

    .line 153
    const v7, 0x7f09015f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooter;

    .line 154
    .local v5, footer:Lcom/htc/widget/HtcFooter;
    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 160
    .end local v0           #activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    .end local v5           #footer:Lcom/htc/widget/HtcFooter;
    :cond_3
    return-object v4
.end method

.method private formatSdCard()V
    .locals 4

    .prologue
    .line 436
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClick:Z

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 445
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->onClickFor3lmPatch()V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 455
    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 457
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->closeThisFragment()V

    .line 458
    return-void
.end method

.method private onClickFor3lmPatch()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 201
    sget-boolean v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":3LM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoking onClickFor3lmPatch()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, sd_encryption:I
    if-eq v0, v3, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sd_encryption"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    sget-boolean v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":3LM:onClickFor3lmPatch()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.SD_ENCRYPTION was set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The dialog (id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 491
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 502
    return-void

    .line 494
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e7f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e80

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0f8a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 512
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 523
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 506
    return-void
.end method

.method private syncUnmountSdCard(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    .line 364
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 365
    .local v2, service:Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 377
    .local v3, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :try_start_0
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 378
    new-instance v4, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v4}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v3           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .local v4, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :try_start_1
    sget-object v5, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> Unmount the SD card\n - path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v5, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 384
    .end local v4           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .restart local v3       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :cond_0
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClick:Z

    .line 385
    const/4 v5, 0x0

    invoke-interface {v2, v1, p1, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 387
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 388
    sget-object v5, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v5, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    const-string v6, "<< Unmount the SD card"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    :goto_1
    sget-object v5, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->closeProgressDialog()V

    .line 398
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->showDialog(I)V

    goto :goto_0

    .line 391
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .restart local v4       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .restart local v3       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    goto :goto_1
.end method

.method private unmountSdCard()V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->doUnmountOperation(Z)V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "unmountable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->formatSdCard()V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    .line 418
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, status:Ljava/lang/String;
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmountable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    iget v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClick:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->closeProgressDialog()V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->formatSdCard()V

    .line 433
    :cond_1
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-class v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 539
    const v0, 0x7f0c00df

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageManagerService:Landroid/os/storage/StorageManager;

    .line 482
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageManagerService:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 483
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->establishFinalConfirmationState(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageManagerService:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 265
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroy()V

    .line 266
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 340
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 348
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v1, p0, :cond_0

    .line 352
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->syncUnmountSdCard(Z)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 285
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->ON_BACK_KEY_UP:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 290
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 245
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    sget-object v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->resetFragmentKeyListener()V

    .line 260
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 232
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V

    .line 238
    :cond_0
    return-void
.end method
