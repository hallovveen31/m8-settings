.class public Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcStatusBarTapReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;
    }
.end annotation


# static fields
.field private static final ACTION_STATUS_BAR_TAP_EVENT:Ljava/lang/String; = "com.htc.intent.action.STATUS_BAR_TAP_EVENT"


# instance fields
.field private mOnStatusBarTapListener:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.permission.APP_PLATFORM"

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->mOnStatusBarTapListener:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->mOnStatusBarTapListener:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;

    invoke-interface {v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;->onStatusBarTapEvent()V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->mOnStatusBarTapListener:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;

    return-void
.end method
