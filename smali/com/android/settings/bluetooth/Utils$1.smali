.class final Lcom/android/settings/bluetooth/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/Utils;->showRetryDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/htc/widget/HtcAlertDialog;I)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:I

.field final synthetic val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(ILcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/android/settings/bluetooth/Utils$1;->val$action:I

    iput-object p2, p0, Lcom/android/settings/bluetooth/Utils$1;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 139
    iget v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$action:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$action:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$action:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/Utils$1;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method
