.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$3;
.super Ljava/lang/Object;
.source "HtcMobileDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$3;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->finish()V

    .line 324
    return-void
.end method
