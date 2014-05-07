.class public final Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcScreenOnOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;,
        Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnScreenOnOffListener:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->mOnScreenOnOffListener:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->powerOn:Z

    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->mOnScreenOnOffListener:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;->onScreenOnOffChanged(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$EventParams;->powerOn:Z

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public setOnScreenOnOffListener(Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver;->mOnScreenOnOffListener:Lcom/android/settings/framework/receiver/HtcScreenOnOffReceiver$OnScreenOnOffChangedListener;

    return-void
.end method
