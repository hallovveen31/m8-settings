.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherPage2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$1;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;

    #calls: Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->ClickBackButton()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->access$000(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V

    .line 78
    return-void
.end method
