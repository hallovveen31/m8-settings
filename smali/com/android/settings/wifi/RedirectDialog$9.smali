.class Lcom/android/settings/wifi/RedirectDialog$9;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


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
    .line 249
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$9;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$9;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->DEBUG:Z
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$700(Lcom/android/settings/wifi/RedirectDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "RedirectWarning"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWanDetectionDialogEnabled to wifi frameworks with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$9;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$200(Lcom/android/settings/wifi/RedirectDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez p2, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWanDetectionDialogEnabled(Landroid/net/wifi/WifiManager;Z)Z

    .line 254
    return-void

    :cond_1
    move v0, v2

    .line 252
    goto :goto_0

    :cond_2
    move v1, v2

    .line 253
    goto :goto_1
.end method
