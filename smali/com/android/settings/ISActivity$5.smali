.class Lcom/android/settings/ISActivity$5;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->HotspotWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/android/settings/SmartNSUtility;->setMLInterface(I)V

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v1, v3}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v3, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-static {v4, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ISActivity$5;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
