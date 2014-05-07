.class Lcom/android/settings/wifi/VoWifiSettings$10;
.super Ljava/lang/Object;
.source "VoWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/VoWifiSettings;->show8021xWarningDialog()V
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
    .line 1784
    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$10;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$10;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$402(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;

    .line 1788
    return-void
.end method
