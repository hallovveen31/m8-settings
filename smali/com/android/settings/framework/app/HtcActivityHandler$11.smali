.class Lcom/android/settings/framework/app/HtcActivityHandler$11;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->dispatchFinalDestroyer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$11;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$11;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mIsNonUiHandlerAlive:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$902(Lcom/android/settings/framework/app/HtcActivityHandler;Z)Z

    .line 1228
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$11;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mFinalDestroyer:Landroid/os/MessageQueue$IdleHandler;
    invoke-static {v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$800(Lcom/android/settings/framework/app/HtcActivityHandler;)Landroid/os/MessageQueue$IdleHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1229
    return-void
.end method