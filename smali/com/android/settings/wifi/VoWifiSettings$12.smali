.class Lcom/android/settings/wifi/VoWifiSettings$12;
.super Ljava/lang/Object;
.source "VoWifiSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/VoWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/VoWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/VoWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$12;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "VoWifiSettings"

    const-string v1, "[C+W] mCWRegisterConnection is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$12;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-static {p2}, Lcom/htc/cw/ICWService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/cw/ICWService;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$702(Lcom/android/settings/wifi/VoWifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$12;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    #getter for: Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0}, Lcom/android/settings/wifi/VoWifiSettings;->access$700(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/htc/cw/ICWService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VoWifiSettings"

    const-string v1, "[C+W] mCWService shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "VoWifiSettings"

    const-string v1, "[C+W] mCWRegisterConnection is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$12;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/VoWifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$702(Lcom/android/settings/wifi/VoWifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;

    return-void
.end method
