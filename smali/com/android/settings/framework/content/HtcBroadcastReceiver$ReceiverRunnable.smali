.class Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;
.super Ljava/lang/Object;
.source "HtcBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/HtcBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/framework/content/HtcBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/content/HtcBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->this$0:Lcom/android/settings/framework/content/HtcBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mIntent:Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->this$0:Lcom/android/settings/framework/content/HtcBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/framework/content/HtcBroadcastReceiver$ReceiverRunnable;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/framework/content/HtcBroadcastReceiver;->onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    return-void
.end method
