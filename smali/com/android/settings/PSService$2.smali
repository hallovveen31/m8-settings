.class Lcom/android/settings/PSService$2;
.super Ljava/lang/Thread;
.source "PSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSService;->SetIPT0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSService;


# direct methods
.method constructor <init>(Lcom/android/settings/PSService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PSService$2;->this$0:Lcom/android/settings/PSService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PSService$2;->this$0:Lcom/android/settings/PSService;

    #getter for: Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;
    invoke-static {v1}, Lcom/android/settings/PSService;->access$100(Lcom/android/settings/PSService;)Lcom/htc/service/HtcHardwareManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    sget-boolean v1, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PSService$2;->this$0:Lcom/android/settings/PSService;

    #calls: Lcom/android/settings/PSService;->CloseConn()V
    invoke-static {v1}, Lcom/android/settings/PSService;->access$200(Lcom/android/settings/PSService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/PSService$2;->this$0:Lcom/android/settings/PSService;

    #getter for: Lcom/android/settings/PSService;->DBG:Z
    invoke-static {v1}, Lcom/android/settings/PSService;->access$300(Lcom/android/settings/PSService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SmartNS_PSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set IPT0 fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
