.class Lcom/android/settings/wifi/RedirectDialog$5;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/RedirectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$5;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string v0, "RedirectWarning"

    const-string v1, "back key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$5;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->startWifiOffload(Z)Z

    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$5;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiOffloadEnabled(Z)Z

    :cond_0
    return v2
.end method
