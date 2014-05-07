.class public final Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcBluetoothOnOffReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;,
        Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;
    }
.end annotation


# instance fields
.field private mOnBluetoothOnOffListener:Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


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

    const/16 v2, 0xa

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;-><init>(Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver;)V

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;->previousState:I

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;->onBluetoothOnOffChanged(Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public setOnBluetoothOnOffListener(Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver;->mOnBluetoothOnOffListener:Lcom/android/settings/framework/receiver/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;

    return-void
.end method
