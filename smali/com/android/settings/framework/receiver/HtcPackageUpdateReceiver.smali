.class public final Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcPackageUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;,
        Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    if-nez v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;

    invoke-direct {v0, p2}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;-><init>(Landroid/content/Intent;)V

    .line 102
    .local v0, params:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;->onPackageUpdate(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 83
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setOnPackageUpdateListener(Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver;->mOnPackageUpdateListener:Lcom/android/settings/framework/receiver/HtcPackageUpdateReceiver$OnPackageUpdateListener;

    .line 114
    return-void
.end method
