.class Lcom/android/settings/bluetooth/HtcMiniSettings$2;
.super Ljava/lang/Object;
.source "HtcMiniSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcMiniSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$2;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$2;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #calls: Lcom/android/settings/bluetooth/HtcMiniSettings;->isRestrictedAndNotPinProtected()Z
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$800(Lcom/android/settings/bluetooth/HtcMiniSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 511
    .local v7, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 512
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "device"

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$2;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0ce4

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 518
    .end local v2           #args:Landroid/os/Bundle;
    .end local v7           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() called for other View: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
