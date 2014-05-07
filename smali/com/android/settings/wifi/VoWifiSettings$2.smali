.class Lcom/android/settings/wifi/VoWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "VoWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/VoWifiSettings;-><init>()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$2;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$2;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    #calls: Lcom/android/settings/wifi/VoWifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/VoWifiSettings;->access$100(Lcom/android/settings/wifi/VoWifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
