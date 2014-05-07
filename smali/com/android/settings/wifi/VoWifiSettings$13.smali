.class Lcom/android/settings/wifi/VoWifiSettings$13;
.super Ljava/lang/Object;
.source "VoWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/VoWifiSettings;->onClick(Landroid/content/DialogInterface;I)V
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
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$13;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$13;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$13;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    #getter for: Lcom/android/settings/wifi/VoWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$800(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/android/settings/wifi/WifiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1965
    return-void
.end method
