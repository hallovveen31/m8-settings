.class final Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;
.super Ljava/lang/Object;
.source "HtcMiniPlusPreference.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;-><init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 99
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-onServiceConnected()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$202(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;->this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateSummary()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    .line 104
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 107
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method
