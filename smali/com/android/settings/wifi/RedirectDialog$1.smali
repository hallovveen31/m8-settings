.class Lcom/android/settings/wifi/RedirectDialog$1;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$1;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RedirectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0d90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
