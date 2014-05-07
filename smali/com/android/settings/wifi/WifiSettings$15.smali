.class Lcom/android/settings/wifi/WifiSettings$15;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1751
    const-string v0, "WifiSettings"

    const-string v1, "[C+W] mCWRegisterConnection is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p2}, Lcom/htc/cw/ICWService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/cw/ICWService;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1302(Lcom/android/settings/wifi/WifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    .line 1753
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1754
    const-string v0, "WifiSettings"

    const-string v1, "[C+W] mCWService shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1761
    const-string v0, "WifiSettings"

    const-string v1, "[C+W] mCWRegisterConnection is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$15;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1302(Lcom/android/settings/wifi/WifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    .line 1763
    return-void
.end method
