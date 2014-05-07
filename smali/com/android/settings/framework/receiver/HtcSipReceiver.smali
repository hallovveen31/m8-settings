.class public Lcom/android/settings/framework/receiver/HtcSipReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcSipReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;,
        Lcom/android/settings/framework/receiver/HtcSipReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnReceiveSipListener:Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcSipReceiver;->mOnReceiveSipListener:Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;

    if-nez v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcSipReceiver$EventParams;

    invoke-direct {v0, p2}, Lcom/android/settings/framework/receiver/HtcSipReceiver$EventParams;-><init>(Landroid/content/Intent;)V

    .line 132
    .local v0, params:Lcom/android/settings/framework/receiver/HtcSipReceiver$EventParams;
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcSipReceiver;->mOnReceiveSipListener:Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;->onReceiveSip(Lcom/android/settings/framework/receiver/HtcSipReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 109
    const-string v0, "IME_CURRENT_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setOnReceiveSipListener(Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcSipReceiver;->mOnReceiveSipListener:Lcom/android/settings/framework/receiver/HtcSipReceiver$OnReceiveSipListener;

    .line 143
    return-void
.end method
