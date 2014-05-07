.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->onServiceConnected(Lcom/htc/android/bluetooth/HtcBluetoothFtp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;->this$1:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;->this$1:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initPrefs()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$400(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    .line 118
    return-void
.end method
