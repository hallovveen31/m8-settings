.class final Lcom/android/settings/bluetooth/HtcHeadsetUtils$2;
.super Ljava/lang/Object;
.source "HtcHeadsetUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showFindMeDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/view/LayoutInflater;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcHeadsetUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/HtcHeadsetUtils$2;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcHeadsetUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcHeadsetUtils$2;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->setFindMeEnabled(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method
