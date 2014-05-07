.class Lcom/android/settings/framework/app/HtcActivityHandler$4;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V
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
    .line 454
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$4;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$4;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #calls: Lcom/android/settings/framework/app/HtcActivityHandler;->onDisplay()V
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$100(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    .line 459
    const/4 v0, 0x0

    return v0
.end method
