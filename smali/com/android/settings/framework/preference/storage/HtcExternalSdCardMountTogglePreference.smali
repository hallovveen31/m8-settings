.class public Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcExternalSdCardMountTogglePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final DIALOG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DIALOG_ERROR_UNMOUNT:I = 0x2

.field public static final KEY:Ljava/lang/String; = null

.field private static final MESSAGE_UNMOUNT_SDCARD:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNonUiHandler:Landroid/os/Handler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->initialize()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->updateSummaryInForeground()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->doUnmountOperation(Z)V

    return-void
.end method

.method private asyncUnmountSdCard(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t find the non-UI handler to unmount SD card."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doUnmountOperation(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e81

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 259
    const v0, 0x7f0c0e82

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 260
    const v0, 0x7f0c0e83

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->asyncUnmountSdCard(Z)V

    .line 264
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 390
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0f8a

    .line 267
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

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

    .line 269
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 272
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 298
    return-void

    .line 274
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e7d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e7e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$2;-><init>(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0c2b

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 290
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0e7f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0e80

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syncUnmountSdCard(Z)V
    .locals 7
    .parameter "force"

    .prologue
    .line 357
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 358
    .local v2, service:Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 370
    .local v3, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :try_start_0
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 371
    new-instance v4, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v4}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v3           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .local v4, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Unmount the SD card\n - path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->log(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v4}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 377
    .end local v4           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    .restart local v3       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v2, v1, p1, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 379
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 380
    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->log(Ljava/lang/String;)V

    .line 381
    const-string v5, "<< Unmount the SD card"

    invoke-static {v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Landroid/os/RemoteException;
    :goto_1
    sget-object v5, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    goto :goto_0

    .line 383
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

.method private unmount()V
    .locals 3

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/os/HtcStorageManager;->hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->doUnmountOperation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method

.method private updateSummaryInForeground()V
    .locals 7

    .prologue
    const v6, 0x7f0c0e76

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, status:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    const-string v2, "updateSummary()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const-string v1, "formatting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 172
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 136
    const v1, 0x7f0c0e73

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 137
    const v1, 0x7f0c0e74

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unmountable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "nofs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 155
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 156
    const v1, 0x7f0c0e77

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setEnabled(Z)V

    .line 169
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 170
    const v1, 0x7f0c0e75

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initialize()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setKey(Ljava/lang/String;)V

    .line 103
    :cond_0
    const v0, 0x7f0c0e73

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setTitle(I)V

    .line 104
    const v0, 0x7f0c0e74

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->setSummary(I)V

    .line 105
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 176
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->unmount()V

    .line 226
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    .line 200
    .local v1, sdCardVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canEncrypt()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 201
    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 202
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 203
    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->TAG:Ljava/lang/String;

    const-string v4, "SD card is encrypted."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    .line 212
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    const-class v3, Lcom/android/settings/framework/activity/storage/threelm/HtcExternalSdCardMountToggleSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 214
    const v3, 0x7f0c0e4e

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceStartFragment(Lcom/htc/preference/HtcPreferenceFragment;Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 224
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mount()V

    goto :goto_0
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 304
    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    .line 305
    iput-object p3, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mNonUiHandler:Landroid/os/Handler;

    .line 306
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 324
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 328
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 330
    :pswitch_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->syncUnmountSdCard(Z)V

    goto :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public updateSummary()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcExternalSdCardMountTogglePreference;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_0
    return-void
.end method
