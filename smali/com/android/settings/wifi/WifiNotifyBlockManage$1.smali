.class Lcom/android/settings/wifi/WifiNotifyBlockManage$1;
.super Ljava/lang/Object;
.source "WifiNotifyBlockManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiNotifyBlockManage;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNotifyBlockManage;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNotifyBlockManage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;->this$0:Lcom/android/settings/wifi/WifiNotifyBlockManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;->this$0:Lcom/android/settings/wifi/WifiNotifyBlockManage;

    #getter for: Lcom/android/settings/wifi/WifiNotifyBlockManage;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->access$100(Lcom/android/settings/wifi/WifiNotifyBlockManage;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;->this$0:Lcom/android/settings/wifi/WifiNotifyBlockManage;

    #getter for: Lcom/android/settings/wifi/WifiNotifyBlockManage;->mSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->access$000(Lcom/android/settings/wifi/WifiNotifyBlockManage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyBlockManage$1;->this$0:Lcom/android/settings/wifi/WifiNotifyBlockManage;

    #calls: Lcom/android/settings/wifi/WifiNotifyBlockManage;->updateList()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiNotifyBlockManage;->access$200(Lcom/android/settings/wifi/WifiNotifyBlockManage;)V

    return-void
.end method
