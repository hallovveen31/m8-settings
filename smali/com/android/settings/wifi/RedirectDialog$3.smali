.class Lcom/android/settings/wifi/RedirectDialog$3;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    new-instance v2, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;

    iget-object v3, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/android/settings/wifi/RedirectDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mNetworkId:I
    invoke-static {v1}, Lcom/android/settings/wifi/RedirectDialog;->access$300(Lcom/android/settings/wifi/RedirectDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/settings/wifi/RedirectDialog;->access$400(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$3;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 190
    return-void
.end method
