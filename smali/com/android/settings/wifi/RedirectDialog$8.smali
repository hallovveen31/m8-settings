.class Lcom/android/settings/wifi/RedirectDialog$8;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 237
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I
    invoke-static {v0}, Lcom/android/settings/wifi/RedirectDialog;->access$600(Lcom/android/settings/wifi/RedirectDialog;)I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I
    invoke-static {v1}, Lcom/android/settings/wifi/RedirectDialog;->access$600(Lcom/android/settings/wifi/RedirectDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/RedirectDialog;->dismissDialog(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    const/4 v1, -0x1

    #setter for: Lcom/android/settings/wifi/RedirectDialog;->mDialogId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/RedirectDialog;->access$602(Lcom/android/settings/wifi/RedirectDialog;I)I

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/RedirectDialog$8;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/RedirectDialog;->showDialog(I)V

    .line 245
    return-void
.end method
