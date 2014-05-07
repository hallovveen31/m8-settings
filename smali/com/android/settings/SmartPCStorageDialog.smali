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

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const-string v0, "SmartPCStorageDialog"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->TAG:Ljava/lang/String;

    const-string v0, "mount"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mCmdMount:Ljava/lang/String;

    const-string v0, "unmount"

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mCmdUnmount:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/SmartPCStorageDialog;->MTP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SmartPCStorageDialog;->UMS:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTimeout:I

    iput v1, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    iput-boolean v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    iput-boolean v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/SmartPCStorageDialog$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartPCStorageDialog$5;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    iput-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/SmartPCStorageDialog;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SmartPCStorageDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/SmartPCStorageDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/SmartPCStorageDialog;->default_position:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->enableMTP()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->enableUMS()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/SmartPCStorageDialog;->unmountAsUsbStorage(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SmartPCStorageDialog;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SmartPCStorageDialog;->mountAsUsbStorage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method private enableMTP()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-enableMTP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->isSdCardExisted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/SmartPCStorageDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartPCStorageDialog$3;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "storage_prev_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private enableUMS()V
    .locals 4

    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-enableUMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-string v1, "mass_storage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/settings/SmartPCStorageDialog;->isSdCardExisted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/SmartPCStorageDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartPCStorageDialog$4;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "storage_prev_type"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private ifSDReady(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "***"

    const-string v2, "***"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v2

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

    const-string v5, "mount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

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

    :cond_3
    :goto_0
    return v3

    :cond_4
    const-string v5, "unmount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

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

    goto :goto_0
.end method

.method private isSdCardExisted()Z
    .locals 5

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

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

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

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

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mountAsUsbStorage(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "-mountAsUsbStorage()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "USB disconnected, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

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

    iget-boolean v3, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

    if-eqz v3, :cond_2

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "Cancel mount, return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "Block mount storage 1 sec."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    :try_start_0
    const-string v3, "mount"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/MountManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/service/MountManager;->setUsbMassStorageEnabled(Z)V

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "setUsbMassStorageEnabled(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

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

    const/4 v7, 0x0

    const/4 v6, -0x2

    const-string v8, "SmartPCStorageDialog"

    const-string v9, "-unmountAsUsbStorage()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v7, "SmartPCStorageDialog"

    const-string v8, "USB disconnected, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v2, 0x0

    iput-boolean v7, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelMount:Z

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

    iget-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    if-eqz v8, :cond_2

    const-string v7, "SmartPCStorageDialog"

    const-string v8, "Cancel unmount, return."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/os/ConditionVariable;->block(J)Z

    const-string v8, "SmartPCStorageDialog"

    const-string v9, "Block unmount storage 1 sec."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/SmartPCStorageDialog;->mCancelUnmount:Z

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v6, "unmount"

    invoke-direct {p0, v6}, Lcom/android/settings/SmartPCStorageDialog;->ifSDReady(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SmartPCStorageDialog"

    const-string v7, "SD card still not ready to unmount."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v6, "mount"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/MountManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/service/MountManager;->setUsbMassStorageEnabled(Z)V

    const-string v6, "SmartPCStorageDialog"

    const-string v8, "setUsbMassStorageEnabled(false)"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v3

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

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "SmartPCStorageDialog"

    const-string v6, "-onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const-string v6, "WirelessSettings"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c075c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c075e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v9

    aput-object v4, v5, v10

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->items:[Ljava/lang/String;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "com.htc.permission.APP_PLATFORM"

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;

    invoke-direct {v5, p0, p0}, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;-><init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v6, 0x7f0c0759

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setTitle(I)V

    new-instance v5, Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const v6, 0x203009c

    sget-object v7, Lcom/android/settings/R$styleable;->ListView:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v10, v9}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;

    iget-object v7, p0, Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06004e

    iget-object v9, p0, Lcom/android/settings/SmartPCStorageDialog;->items:[Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/settings/SmartPCStorageDialog$UsbListAdapter;-><init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartPCStorageDialog$1;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v6, p0, Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartPCStorageDialog$2;-><init>(Lcom/android/settings/SmartPCStorageDialog;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    const-string v1, "SmartPCStorageDialog"

    const-string v2, "-onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SmartPCStorageDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

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
