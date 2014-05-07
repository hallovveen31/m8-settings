.class final Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;
.super Ljava/lang/Object;
.source "HtcMiniPlusWidgetEnabler.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;-><init>(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 30
    invoke-static {}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-onServiceConnected()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$202(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;

    #calls: Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->updateUI()V
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$300(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;)V

    .line 35
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 38
    invoke-static {}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
