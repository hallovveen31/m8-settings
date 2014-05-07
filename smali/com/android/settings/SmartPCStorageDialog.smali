.class public Lcom/android/settings/SmartPCStorageDialog;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "SmartPCStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;,
        Lcom/android/settings/SmartPCStorageDialog$OperateDialog;
    }
.end annotation


# instance fields
.field private final MTP:I

.field private final TAG:Ljava/lang/String;

.field private final UMS:I

.field private default_position:I

.field private items:[Ljava/lang/String;

.field private list:Lcom/htc/widget/HtcListView;

.field private mCancelMount:Z

.field private mCancelUnmount:Z

.field private final mCmdMount:Ljava/lang/String;

.field private final mCmdUnmount:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeout:I

.field private mTypeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

.field private pause:Landroid/os/ConditionVariable;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 37
    const-string v0, "SmartPCStorageDialog"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "mount"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mCmdMount:Ljava/lang/String;

    .line 39
    const-string v0, "unmount"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mCmdUnmount:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/android/settings/SmartPCStorageDialog;->MTP:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SmartPCStorageDialog;->UMS:I

    .line 42
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTimeout:I

    .line 44
    iput v1, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    .line 54
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Lcom/android/settings/SmartPCStorageDialog$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartPCStorageDialog$5;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/SmartPCStorageDialog;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SmartPCStorageDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/SmartPCStorageDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->enableMTP()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->enableUMS()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/SmartPCStorageDialog;->unmountAsUsbStorage(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SmartPCStorageDialog;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/SmartPCStorageDialog;->mountAsUsbStorage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private enableMTP()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-enableMTP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->isSdCardExisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lcom/android/settings/SmartPCStorageDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartPCStorageDialog$3;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v1}, Lcom/android/settings/SmartPCStorageDialog$3;->start()V

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "storage_prev_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 306
    .local v0, usbManager:Landroid/hardware/usb/UsbManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private enableUMS()V
    .locals 4

    .prologue
    .line 312
    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-enableUMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 314
    .local v0, usbManager:Landroid/hardware/usb/UsbManager;
    const-string v1, "mass_storage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->isSdCardExisted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    new-instance v1, Lcom/android/settings/SmartPCStorageDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartPCStorageDialog$4;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v1}, Lcom/android/settings/SmartPCStorageDialog$4;->start()V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "storage_prev_type"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    return-void
.end method

.method private ifSDReady(Ljava/lang/String;)Z
    .locals 8
    .parameter "cmd"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, state_external_storage:Ljava/lang/String;
    const-string v1, "***"

    .line 231
    .local v1, state_phone_storage:Ljava/lang/String;
    const-string v2, "***"

    .line 233
    .local v2, state_removable_storage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v2

    .line 239
    :cond_1
    const-string v5, "SmartPCStorageDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- state_external_storage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v5, "SmartPCStorageDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- state_phone_storage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v5, "SmartPCStorageDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- state_removable_storage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v5, "mount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 259
    :cond_3
    :goto_0
    return v3

    .line 250
    :cond_4
    const-string v5, "unmount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    const-string v5, "shared"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "shared"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    move v3, v4

    .line 254
    goto :goto_0
.end method

.method private isSdCardExisted()Z
    .locals 5

    .prologue
    .line 264
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, status:Ljava/lang/String;
    const-string v2, "SmartPCStorageDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, isSdCardExisted:Z
    :goto_0
    const-string v2, "SmartPCStorageDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is SD card existed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v0

    .line 271
    .end local v0           #isSdCardExisted:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #isSdCardExisted:Z
    goto :goto_0
.end method

.method private mountAsUsbStorage(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 147
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "-mountAsUsbStorage()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "USB disconnected, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, counter:I
    iput-boolean v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    .line 154
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    .line 155
    :goto_1
    const-string v3, "mount"

    invoke-direct {p0, v3}, Lcom/android/settings/SmartPCStorageDialog;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x14

    if-ge v0, v3, :cond_3

    .line 156
    iget-boolean v3, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    if-eqz v3, :cond_2

    .line 157
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "Cancel mount, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 161
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "Block mount storage 1 sec."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mount"

    invoke-direct {p0, v3}, Lcom/android/settings/SmartPCStorageDialog;->ifSDReady(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    :try_start_0
    const-string v3, "mount"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/MountManager;

    .line 168
    .local v2, mMountManager:Lcom/htc/service/MountManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/service/MountManager;->setUsbMassStorageEnabled(Z)V

    .line 169
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "setUsbMassStorageEnabled(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v2           #mMountManager:Lcom/htc/service/MountManager;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SmartPCStorageDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mount storage error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unmountAsUsbStorage(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 180
    const-string v8, "SmartPCStorageDialog"

    const-string v9, "-unmountAsUsbStorage()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, -0x2

    .line 183
    .local v0, actionCanceled:I
    const/4 v5, -0x1

    .line 184
    .local v5, storageNotReady:I
    const/4 v1, 0x0

    .line 186
    .local v1, actionDone:I
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 187
    const-string v7, "SmartPCStorageDialog"

    const-string v8, "USB disconnected, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return v6

    .line 190
    :cond_1
    const/4 v2, 0x0

    .line 191
    .local v2, counter:I
    iput-boolean v7, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    .line 192
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    .line 193
    :goto_1
    const-string v8, "unmount"

    invoke-direct {p0, v8}, Lcom/android/settings/SmartPCStorageDialog;->ifSDReady(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x14

    if-ge v2, v8, :cond_3

    .line 194
    iget-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    if-eqz v8, :cond_2

    .line 195
    const-string v7, "SmartPCStorageDialog"

    const-string v8, "Cancel unmount, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    iget-object v8, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/os/ConditionVariable;->block(J)Z

    .line 199
    const-string v8, "SmartPCStorageDialog"

    const-string v9, "Block unmount storage 1 sec."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 207
    const-string v6, "unmount"

    invoke-direct {p0, v6}, Lcom/android/settings/SmartPCStorageDialog;->ifSDReady(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 208
    const-string v6, "SmartPCStorageDialog"

    const-string v7, "SD card still not ready to unmount."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v6, -0x1

    goto :goto_0

    .line 213
    :cond_4
    :try_start_0
    const-string v6, "mount"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/MountManager;

    .line 214
    .local v4, mMountManager:Lcom/htc/service/MountManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/service/MountManager;->setUsbMassStorageEnabled(Z)V

    .line 215
    const-string v6, "SmartPCStorageDialog"

    const-string v8, "setUsbMassStorageEnabled(false)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #mMountManager:Lcom/htc/service/MountManager;
    :goto_2
    move v6, v7

    .line 219
    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "SmartPCStorageDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unmount storage error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v5, "SmartPCStorageDialog"

    const-string v6, "-onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/SmartPCStorageDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    .line 61
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v6, "WirelessSettings"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/SmartPCStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c075c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, mtpTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SmartPCStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c075e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, umsTitle:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v9

    aput-object v4, v5, v10

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->items:[Ljava/lang/String;

    .line 69
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 70
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/settings/SmartPCStorageDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    new-instance v5, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;

    invoke-direct {v5, p0, p0}, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;-><init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 74
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v6, 0x7f0c0759

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setTitle(I)V

    .line 76
    new-instance v5, Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    .line 77
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const v6, 0x203009c

    sget-object v7, Lcom/android/settings/R$styleable;->ListView:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 78
    .local v3, styleAttributes:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 79
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v10, v9}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 84
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;

    iget-object v7, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06004e

    iget-object v9, p0, Lcom/android/settings/SmartPCStorageDialog;->items:[Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;-><init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartPCStorageDialog$1;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartPCStorageDialog$2;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 391
    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SmartPCStorageDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartPCStorageDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in onDestroy():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
