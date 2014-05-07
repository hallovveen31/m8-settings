.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 3
    .parameter "wifiState"

    .prologue
    .line 587
    packed-switch p0, :pswitch_data_0

    .line 605
    const/4 v0, 0x4

    .line 609
    .local v0, nState:I
    :goto_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiStateTracker] wifiStateToFiveState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 613
    :cond_0
    return v0

    .line 589
    .end local v0           #nState:I
    :pswitch_0
    const/4 v0, 0x0

    .line 590
    .restart local v0       #nState:I
    goto :goto_0

    .line 593
    .end local v0           #nState:I
    :pswitch_1
    const/4 v0, 0x1

    .line 594
    .restart local v0       #nState:I
    goto :goto_0

    .line 597
    .end local v0           #nState:I
    :pswitch_2
    const/4 v0, 0x3

    .line 598
    .restart local v0       #nState:I
    goto :goto_0

    .line 601
    .end local v0           #nState:I
    :pswitch_3
    const/4 v0, 0x2

    .line 602
    .restart local v0       #nState:I
    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 446
    const/4 v0, 0x4

    .line 448
    .local v0, nState:I
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 449
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v0

    .line 453
    :cond_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WifiStateTracker] getActualState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 457
    :cond_1
    return v0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f0c114d

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 433
    const v0, 0x7f090277

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 437
    if-eqz p1, :cond_0

    const v0, 0x7f02007f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02007e

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 432
    const v0, 0x7f090276

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 434
    const v0, 0x7f090278

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 559
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const-string v1, "[WifiStateTracker] onActualStateChange() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiStateTracker] ("

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

    .line 564
    :cond_0
    const-string v1, "com.htc.settings.action.SAWP_WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 569
    .local v0, wifiState:I
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiStateTracker] wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 573
    :cond_3
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 575
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    const-string v1, "[WifiStateTracker] onActualStateChange() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 462
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "[WifiStateTracker] requestStateChange() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 466
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 468
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_2

    .line 469
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    const-string v0, "[WifiStateTracker] No wifiManager."

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v4

    .line 478
    .local v4, deviceManager:Landroid/os/IDeviceManager3LM;
    if-nez v4, :cond_3

    .line 479
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const-string v0, "[WifiStateTracker][3LM] deviceManager is null"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 488
    :cond_3
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;ZLandroid/net/wifi/WifiManager;Landroid/os/IDeviceManager3LM;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 552
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const-string v0, "[WifiStateTracker] requestStateChange() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method
