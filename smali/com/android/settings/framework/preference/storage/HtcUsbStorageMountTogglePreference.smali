.class public Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcUsbStorageMountTogglePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final DIALOG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DIALOG_ERROR_UNMOUNT:I = 0x2

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mNonUiHandler:Landroid/os/Handler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->initialize()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->updateSummaryInForeground()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V

    return-void
.end method

.method private doUnmountOperation(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c02b2

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 204
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 205
    .local v1, service:Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 208
    const v3, 0x7f0c0e82

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 209
    const v3, 0x7f0c0e83

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    .line 213
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;-><init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;Landroid/os/storage/IMountService;Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    .local v2, thread:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 235
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.MOUNT_USB_VOLUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c0f8a

    .line 239
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 244
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 270
    return-void

    .line 246
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02b3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$3;-><init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0c2b

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 262
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02b5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/os/HtcStorageManager;->hasAppAccessingStorage(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V

    goto :goto_0
.end method

.method private updateSummaryInForeground()V
    .locals 7

    .prologue
    const v6, 0x7f0c029c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageState()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, status:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    const-string v2, "updateSummary()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const-string v1, "formatting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 124
    const v1, 0x7f0c029f

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 125
    const v1, 0x7f0c02a0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 139
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

    .line 142
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 144
    const v1, 0x7f0c029d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0

    .line 156
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setEnabled(Z)V

    .line 157
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 158
    const v1, 0x7f0c029e

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initialize()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setKey(Ljava/lang/String;)V

    .line 92
    :cond_0
    const v0, 0x7f0c029f

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setTitle(I)V

    .line 93
    const v0, 0x7f0c02a0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->setSummary(I)V

    .line 94
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getUsbStorageState()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->unmount()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mount()V

    goto :goto_0
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 275
    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    .line 276
    iput-object p3, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mNonUiHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public updateSummary()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    :cond_0
    return-void
.end method
