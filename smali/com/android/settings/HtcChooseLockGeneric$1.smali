.class Lcom/android/settings/HtcChooseLockGeneric$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcChooseLockGeneric;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcChooseLockGeneric;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/HtcChooseLockGeneric$1;->this$0:Lcom/android/settings/HtcChooseLockGeneric;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.action.EXIT_CONFIRM_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/settings/HtcChooseLockGeneric$1;->this$0:Lcom/android/settings/HtcChooseLockGeneric;

    const/4 v2, 0x0

    #calls: Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V
    invoke-static {v1, v2}, Lcom/android/settings/HtcChooseLockGeneric;->access$000(Lcom/android/settings/HtcChooseLockGeneric;I)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/HtcChooseLockGeneric$1;->this$0:Lcom/android/settings/HtcChooseLockGeneric;

    invoke-virtual {v1}, Lcom/android/settings/HtcChooseLockGeneric;->finish()V

    .line 48
    :cond_0
    return-void
.end method
