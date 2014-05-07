.class Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->turnOffWifi:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->access$202(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
