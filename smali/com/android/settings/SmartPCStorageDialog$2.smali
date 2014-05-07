.class Lcom/android/settings/SmartPCStorageDialog$2;
.super Ljava/lang/Object;
.source "SmartPCStorageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$2;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 132
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 133
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$2;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmartPCStorageDialog;->finish()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
