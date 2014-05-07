.class Lcom/android/settings/wifi/RedirectDialog$6;
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
    .line 210
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$6;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$6;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startWifiOffload(Z)Z

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$6;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiOffloadEnabled(Z)Z

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$6;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 215
    return-void
.end method
