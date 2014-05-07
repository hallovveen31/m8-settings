.class Lcom/android/settings/wifi/HotspotMaxConnDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "HotspotMaxConnDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/HotspotMaxConnDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/HotspotMaxConnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    #getter for: Lcom/android/settings/wifi/HotspotMaxConnDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->access$000(Lcom/android/settings/wifi/HotspotMaxConnDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    #calls: Lcom/android/settings/wifi/HotspotMaxConnDialog;->parseClientCount(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->access$100(Lcom/android/settings/wifi/HotspotMaxConnDialog;Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, connection:I
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    #getter for: Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z
    invoke-static {v3}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->access$200(Lcom/android/settings/wifi/HotspotMaxConnDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HotspotMaxConnDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAssocListStr, count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    #getter for: Lcom/android/settings/wifi/HotspotMaxConnDialog;->max_connection:I
    invoke-static {v3}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->access$300(Lcom/android/settings/wifi/HotspotMaxConnDialog;)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;->this$0:Lcom/android/settings/wifi/HotspotMaxConnDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->finish()V

    .line 88
    .end local v1           #connection:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method
