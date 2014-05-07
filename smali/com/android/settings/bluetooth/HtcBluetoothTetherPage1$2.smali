.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherPage1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;

    #calls: Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->ClickNextButton()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage1;->finish()V

    .line 84
    return-void
.end method
