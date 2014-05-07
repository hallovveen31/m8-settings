.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 3
    .parameter "bluetoothState"

    .prologue
    .line 768
    packed-switch p0, :pswitch_data_0

    .line 786
    const/4 v0, 0x4

    .line 790
    .local v0, nState:I
    :goto_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BluetoothStateTracker] bluetoothStateToFiveState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 794
    :cond_0
    return v0

    .line 770
    .end local v0           #nState:I
    :pswitch_0
    const/4 v0, 0x0

    .line 771
    .restart local v0       #nState:I
    goto :goto_0

    .line 774
    .end local v0           #nState:I
    :pswitch_1
    const/4 v0, 0x1

    .line 775
    .restart local v0       #nState:I
    goto :goto_0

    .line 778
    .end local v0           #nState:I
    :pswitch_2
    const/4 v0, 0x2

    .line 779
    .restart local v0       #nState:I
    goto :goto_0

    .line 782
    .end local v0           #nState:I
    :pswitch_3
    const/4 v0, 0x3

    .line 783
    .restart local v0       #nState:I
    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 634
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 635
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 636
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 637
    const/4 v1, 0x4

    .line 639
    .local v1, nState:I
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BluetoothStateTracker] getActualState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_0
    move v2, v1

    .line 653
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v1           #nState:I
    .local v2, nState:I
    :goto_0
    return v2

    .line 645
    .end local v2           #nState:I
    .restart local v0       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1002(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 647
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_2
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    .line 649
    .restart local v1       #nState:I
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BluetoothStateTracker] getActualState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_3
    move v2, v1

    .line 653
    .end local v1           #nState:I
    .restart local v2       #nState:I
    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 624
    const v0, 0x7f0c114e

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 622
    const v0, 0x7f09027a

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 626
    if-eqz p1, :cond_0

    const v0, 0x7f020075

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020074

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 621
    const v0, 0x7f090279

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 623
    const v0, 0x7f09027b

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 737
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    const-string v1, "[BluetoothStateTracker] onActualStateChange() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BluetoothStateTracker] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 742
    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.device_admin.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    :cond_1
    :goto_0
    return-void

    .line 748
    :cond_2
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 750
    .local v0, bluetoothState:I
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BluetoothStateTracker] bluetoothState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 754
    :cond_3
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 756
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    const-string v1, "[BluetoothStateTracker] onActualStateChange() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 658
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    const-string v1, "[BluetoothStateTracker] requestStateChange() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 662
    :cond_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 663
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    const-string v1, "[BluetoothStateTracker] No LocalBluetoothManager"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 670
    :cond_2
    const-string v1, "DeviceManager3LM"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 672
    .local v0, deviceManager:Landroid/os/IDeviceManager3LM;
    if-nez v0, :cond_3

    .line 673
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 674
    const-string v1, "[BluetoothStateTracker][3LM] deviceManager is null"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 682
    :cond_3
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;ZLandroid/os/IDeviceManager3LM;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 730
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    const-string v1, "[BluetoothStateTracker] requestStateChange() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method
