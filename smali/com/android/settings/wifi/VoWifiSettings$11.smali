.class Lcom/android/settings/wifi/VoWifiSettings$11;
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

    iput-object p1, p0, Lcom/android/settings/wifi/VoWifiSettings$11;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$11;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/wifi/VoWifiSettings;->mShowFlag:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$502(Lcom/android/settings/wifi/VoWifiSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/VoWifiSettings$11;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/VoWifiSettings$11;->this$0:Lcom/android/settings/wifi/VoWifiSettings;

    #getter for: Lcom/android/settings/wifi/VoWifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$600(Lcom/android/settings/wifi/VoWifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/VoWifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/VoWifiSettings;->access$402(Lcom/android/settings/wifi/VoWifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;

    return-void
.end method
