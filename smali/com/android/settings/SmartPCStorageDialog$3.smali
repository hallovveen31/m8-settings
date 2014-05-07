.class Lcom/android/settings/SmartPCStorageDialog$3;
.super Ljava/lang/Thread;
.source "SmartPCStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog;->enableMTP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    iget-object v4, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SmartPCStorageDialog;->access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/settings/SmartPCStorageDialog;->unmountAsUsbStorage(Landroid/content/Context;)I
    invoke-static {v3, v4}, Lcom/android/settings/SmartPCStorageDialog;->access$600(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)I

    move-result v1

    const-string v3, "SmartPCStorageDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unmountAsUsbStorage() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    :goto_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->pause:Landroid/os/ConditionVariable;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$700(Lcom/android/settings/SmartPCStorageDialog;)Landroid/os/ConditionVariable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    const-string v3, "SmartPCStorageDialog"

    const-string v4, "Block MTP 1 sec due to SD card not mounted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v7, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$3;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$500(Lcom/android/settings/SmartPCStorageDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v7, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_1
.end method
