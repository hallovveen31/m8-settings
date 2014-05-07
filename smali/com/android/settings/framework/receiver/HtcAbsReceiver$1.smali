.class Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;
.super Ljava/lang/Object;
.source "HtcAbsReceiver.java"

# interfaces
.implements Lcom/android/settings/framework/content/HtcIRegister$OnRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

.field final synthetic this$0:Lcom/android/settings/framework/receiver/HtcAbsReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->this$0:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->this$0:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    iput-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    return-void
.end method


# virtual methods
.method public onRegister()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->this$0:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    #getter for: Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mPermission:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->access$000(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    iget-object v4, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->this$0:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    #getter for: Lcom/android/settings/framework/receiver/HtcAbsReceiver;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v4}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->access$100(Lcom/android/settings/framework/receiver/HtcAbsReceiver;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->onRegister()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onUnregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/framework/receiver/HtcAbsReceiver$1;->mThis:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->onUnregister()V

    return-void
.end method
