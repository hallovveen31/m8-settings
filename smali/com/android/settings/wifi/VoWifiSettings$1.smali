.class Lcom/android/settings/wifi/VoWifiSettings$1;
.super Landroid/database/ContentObserver;
.source "VoWifiSettings.java"


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
.method constructor <init>(Lcom/android/settings/wifi/VoWifiSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$1;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "VoWifiSettings"

    const-string v1, "WFC DB state is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$1;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/VoWifiSettings;->updateScanningCursor(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$000(Lcom/android/settings/wifi/VoWifiSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$1;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/VoWifiSettings;->updateAccessPoints()V

    return-void
.end method
