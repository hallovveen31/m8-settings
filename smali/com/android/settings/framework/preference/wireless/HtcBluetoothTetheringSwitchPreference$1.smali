.class Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;
.super Ljava/lang/Object;
.source "HtcBluetoothTetheringSwitchPreference.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$000(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$000(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 382
    return-void
.end method
